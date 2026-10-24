/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Linear
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
open GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128

-- received nodes (1, 2, 3, 4)
def encode0 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x1, 0x0⟩ else ⟨0x0, 0x0, 0x0, 0x1⟩
def recover0 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x1, 0x0⟩ else ⟨0x0, 0x0, 0x0, 0x1⟩
def roundTrip0 (x : Four) : Four := transform recover0 (transform encode0 x)

-- received nodes (1, 2, 3, 5)
def encode1 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x1, 0x0⟩ else ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩
def recover1 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x1, 0x0⟩ else ⟨0x40000000000000000000000000000020, 0x3, 0x80000000000000000000000000000041, 0xc0000000000000000000000000000063⟩
def roundTrip1 (x : Four) : Four := transform recover1 (transform encode1 x)

-- received nodes (1, 2, 3, 6)
def encode2 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x1, 0x0⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover2 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x1, 0x0⟩ else ⟨0x2, 0x80000000000000000000000000000047, 0x6, 0x80000000000000000000000000000042⟩
def roundTrip2 (x : Four) : Four := transform recover2 (transform encode2 x)

-- received nodes (1, 2, 4, 5)
def encode3 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x0, 0x1⟩ else ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩
def recover3 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0xd555555555555555555555555555553d, 0xffffffffffffffffffffffffffffff83, 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafc, 0x80000000000000000000000000000043⟩ else ⟨0x0, 0x0, 0x1, 0x0⟩
def roundTrip3 (x : Four) : Four := transform recover3 (transform encode3 x)

-- received nodes (1, 2, 4, 6)
def encode4 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x0, 0x1⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover4 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0xffffffffffffffffffffffffffffff82, 0x40000000000000000000000000000020, 0x7fffffffffffffffffffffffffffffc1, 0xc0000000000000000000000000000062⟩ else ⟨0x0, 0x0, 0x1, 0x0⟩
def roundTrip4 (x : Four) : Four := transform recover4 (transform encode4 x)

-- received nodes (1, 2, 5, 6)
def encode5 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover5 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 2 then ⟨0xedb6db6db6db6db6db6db6db6db6db19, 0xdb6db6db6db6db6db6db6db6db6db6b5, 0x5b6db6db6db6db6db6db6db6db6db6f7, 0x6db6db6db6db6db6db6db6db6db6db5a⟩ else ⟨0x6db6db6db6db6db6db6db6db6db6db5a, 0x5b6db6db6db6db6db6db6db6db6db6f7, 0xdb6db6db6db6db6db6db6db6db6db6b5, 0xedb6db6db6db6db6db6db6db6db6db19⟩
def roundTrip5 (x : Four) : Four := transform recover5 (transform encode5 x)

-- received nodes (1, 3, 4, 5)
def encode6 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x0, 0x1⟩ else ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩
def recover6 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x3fffffffffffffffffffffffffffffe0, 0x80000000000000000000000000000042, 0xffffffffffffffffffffffffffffff82, 0x40000000000000000000000000000021⟩ else if j = 2 then ⟨0x0, 0x1, 0x0, 0x0⟩ else ⟨0x0, 0x0, 0x1, 0x0⟩
def roundTrip6 (x : Four) : Four := transform recover6 (transform encode6 x)

-- received nodes (1, 3, 4, 6)
def encode7 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x0, 0x1⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover7 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x924924924924924924924924924924d8, 0xb6db6db6db6db6db6db6db6db6db6def, 0x4924924924924924924924924924926c, 0x6db6db6db6db6db6db6db6db6db6db5a⟩ else if j = 2 then ⟨0x0, 0x1, 0x0, 0x0⟩ else ⟨0x0, 0x0, 0x1, 0x0⟩
def roundTrip7 (x : Four) : Four := transform recover7 (transform encode7 x)

-- received nodes (1, 3, 5, 6)
def encode8 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 2 then ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover8 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x80000000000000000000000000000043, 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0x7fffffffffffffffffffffffffffffc1, 0x5555555555555555555555555555557e⟩ else if j = 2 then ⟨0x0, 0x1, 0x0, 0x0⟩ else ⟨0xc0000000000000000000000000000062, 0x7fffffffffffffffffffffffffffffc1, 0x40000000000000000000000000000020, 0xffffffffffffffffffffffffffffff82⟩
def roundTrip8 (x : Four) : Four := transform recover8 (transform encode8 x)

-- received nodes (1, 4, 5, 6)
def encode9 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x0, 0x1⟩ else if j = 2 then ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover9 : Matrix := fun j => if j = 0 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 1 then ⟨0xffffffffffffffffffffffffffffff83, 0xffffffffffffffffffffffffffffff87, 0x6, 0x3⟩ else if j = 2 then ⟨0x80000000000000000000000000000042, 0x6, 0x80000000000000000000000000000047, 0x2⟩ else ⟨0x0, 0x1, 0x0, 0x0⟩
def roundTrip9 (x : Four) : Four := transform recover9 (transform encode9 x)

-- received nodes (2, 3, 4, 5)
def encode10 : Matrix := fun j => if j = 0 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x0, 0x1⟩ else ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩
def recover10 : Matrix := fun j => if j = 0 then ⟨0xdb6db6db6db6db6db6db6db6db6db6b6, 0xb6db6db6db6db6db6db6db6db6db6ded, 0xb6db6db6db6db6db6db6db6db6db6def, 0xdb6db6db6db6db6db6db6db6db6db6b5⟩ else if j = 1 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x1, 0x0, 0x0⟩ else ⟨0x0, 0x0, 0x1, 0x0⟩
def roundTrip10 (x : Four) : Four := transform recover10 (transform encode10 x)

-- received nodes (2, 3, 4, 6)
def encode11 : Matrix := fun j => if j = 0 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 2 then ⟨0x0, 0x0, 0x0, 0x1⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover11 : Matrix := fun j => if j = 0 then ⟨0xc0000000000000000000000000000060, 0x3, 0x80000000000000000000000000000043, 0x40000000000000000000000000000021⟩ else if j = 1 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x1, 0x0, 0x0⟩ else ⟨0x0, 0x0, 0x1, 0x0⟩
def roundTrip11 (x : Four) : Four := transform recover11 (transform encode11 x)

-- received nodes (2, 3, 5, 6)
def encode12 : Matrix := fun j => if j = 0 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 2 then ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover12 : Matrix := fun j => if j = 0 then ⟨0x2, 0x5555555555555555555555555555557d, 0xffffffffffffffffffffffffffffff82, 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafc⟩ else if j = 1 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 2 then ⟨0x0, 0x1, 0x0, 0x0⟩ else ⟨0x80000000000000000000000000000043, 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafc, 0xffffffffffffffffffffffffffffff83, 0xd555555555555555555555555555553d⟩
def roundTrip12 (x : Four) : Four := transform recover12 (transform encode12 x)

-- received nodes (2, 4, 5, 6)
def encode13 : Matrix := fun j => if j = 0 then ⟨0x0, 0x1, 0x0, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x0, 0x1⟩ else if j = 2 then ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover13 : Matrix := fun j => if j = 0 then ⟨0x80000000000000000000000000000042, 0x7, 0x5, 0x80000000000000000000000000000041⟩ else if j = 1 then ⟨0x1, 0x0, 0x0, 0x0⟩ else if j = 2 then ⟨0xc0000000000000000000000000000063, 0x80000000000000000000000000000041, 0x3, 0x40000000000000000000000000000020⟩ else ⟨0x0, 0x1, 0x0, 0x0⟩
def roundTrip13 (x : Four) : Four := transform recover13 (transform encode13 x)

-- received nodes (3, 4, 5, 6)
def encode14 : Matrix := fun j => if j = 0 then ⟨0x0, 0x0, 0x1, 0x0⟩ else if j = 1 then ⟨0x0, 0x0, 0x0, 0x1⟩ else if j = 2 then ⟨0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd, 0xffffffffffffffffffffffffffffff81, 0x2, 0x5555555555555555555555555555557f⟩ else ⟨0xffffffffffffffffffffffffffffff81, 0x7, 0x4, 0xffffffffffffffffffffffffffffff83⟩
def recover14 : Matrix := fun j => if j = 0 then ⟨0xffffffffffffffffffffffffffffff83, 0x4, 0x7, 0xffffffffffffffffffffffffffffff81⟩ else if j = 1 then ⟨0x5555555555555555555555555555557f, 0x2, 0xffffffffffffffffffffffffffffff81, 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafd⟩ else if j = 2 then ⟨0x1, 0x0, 0x0, 0x0⟩ else ⟨0x0, 0x1, 0x0, 0x0⟩
def roundTrip14 (x : Four) : Four := transform recover14 (transform encode14 x)

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
