import GRWTSK.NumberTheory.IntegerFactorizationCertificate
import Mathlib.Computability.TuringMachine.Computable

/-!
# Classical complete integer factoring in FP

The witness is a single deterministic stack machine with a fixed finite number
of stacks, finite labels, finite control, finite stack alphabets, and binary I/O.
Fixed finite stack machines admit the multitape simulation described in the
accompanying model comparison. The bound counts Mathlib TM2 steps here.
-/

namespace GRWTSK.IntegerFactorization

/-- Open target. The output includes the declared row count and the complete
fixed-width prime-power table. Inputs below two are outside the promise. -/
def ClassicalFactoringFP : Prop :=
  ∃ w : Turing.TM2ComputableAux Bool Bool,
    (∀ i, Finite (w.tm.Γ i)) ∧
    ∃ C k : ℕ, ∀ n : ℕ, 2 ≤ n →
      Nonempty (Turing.TM2OutputsInTime w.tm
        ((Computability.encodeNat n).map w.inputAlphabet.symm)
        (some ((WireCertificate.encode n (canonical n)).map w.outputAlphabet.symm))
        (C * (1 + (Computability.encodeNat n).length) ^ k))

end GRWTSK.IntegerFactorization
