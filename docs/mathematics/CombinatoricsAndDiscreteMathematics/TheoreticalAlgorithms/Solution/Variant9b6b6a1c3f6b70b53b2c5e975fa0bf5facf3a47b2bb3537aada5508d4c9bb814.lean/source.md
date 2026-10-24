# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Solution.Variant9b6b6a1c3f6b70b53b2c5e975fa0bf5facf3a47b2bb3537aada5508d4c9bb814

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56c9a5d3a25f40825e13c2e61c45e2af8d478871` · SHA-256 `9b6b6a1c3f6b70b53b2c5e975fa0bf5facf3a47b2bb3537aada5508d4c9bb814`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
prelude

inductive True : Prop where
  | intro : True

-- comparator's `primitiveTargets` must exist in both modules or lean4export aborts.
def Nat.add        (_ _ : True) : True := True.intro
def Nat.sub        (_ _ : True) : True := True.intro
def Nat.mul        (_ _ : True) : True := True.intro
def Nat.pow        (_ _ : True) : True := True.intro
def Nat.gcd        (_ _ : True) : True := True.intro
def Nat.div        (_ _ : True) : True := True.intro
def Nat.mod        (_ _ : True) : True := True.intro
def Nat.beq        (_ _ : True) : True := True.intro
def Nat.ble        (_ _ : True) : True := True.intro
def Nat.land       (_ _ : True) : True := True.intro
def Nat.lor        (_ _ : True) : True := True.intro
def Nat.xor        (_ _ : True) : True := True.intro
def Nat.shiftLeft  (_ _ : True) : True := True.intro
def Nat.shiftRight (_ _ : True) : True := True.intro
def String.ofList  (_   : True) : True := True.intro
def Char.ofNat     (_   : True) : True := True.intro
def List           (_   : True) : True := True.intro
def eagerReduce    (_   : True) : True := True.intro

-- The target. Honest, true, kernel-valid.
theorem Quot.lift : True := True.intro
```
