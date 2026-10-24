# Complete source: GRWTSK.Algebra.UniversalAlgebra.Tuple.Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd27dd0c75ea028354831b36a295d5a9b86aeaf8` · SHA-256 `a4512fdc6c86b69f1d6afc97cd804a6bfd44fcecde3ac3560d94b3787bd1fad0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SafeResidueTuple.Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SafeResidueTuple.Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Tuple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Safe residue tuples and protected total constraints

Coordinate reflections and permutations act on safe tuples.  Compatibility
with a protected total residue is a separate stabilizer certificate.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.SafeResidueTuple.Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open scoped BigOperators

structure SafeResidueTuple
    (length : Nat) where
  residue : Fin length → Residue3
  safe :
    ∀ coordinate,
      (residue coordinate).Safe

def SafeResidueTuple.total
    {length : Nat}
    (tuple : SafeResidueTuple length) :
    ZMod 3 :=
  ∑ coordinate,
    (tuple.residue coordinate).value

structure TuplePhase
    (length : Nat) where
  coordinatePhase : Fin length → Phase3
  permutation : Equiv.Perm (Fin length)

def TuplePhase.act
    {length : Nat}
    (phase : TuplePhase length)
    (tuple : SafeResidueTuple length) :
    SafeResidueTuple length where
  residue := fun coordinate =>
    (phase.coordinatePhase coordinate).act
      (tuple.residue
        (phase.permutation.symm coordinate))
  safe := by
    intro coordinate
    exact phase3_action_preserves_safe
      (phase.coordinatePhase coordinate)
      (tuple.safe
        (phase.permutation.symm coordinate))

def TuplePhase.PreservesTotal
    {length : Nat}
    (phase : TuplePhase length)
    (target : ZMod 3) : Prop :=
  ∀ tuple : SafeResidueTuple length,
    tuple.total = target ↔
      (phase.act tuple).total = target

structure TupleConstraintStabilizer
    (length : Nat)
    (target : ZMod 3) where
  phase : TuplePhase length
  preserves :
    phase.PreservesTotal target

end Mathematics.SemiLocalDefect.ResidueDeflection
```
