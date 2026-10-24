# nonZeroSMulDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74812680da1e874ccddbbd3b4fd61b56e97de0bdad8fe172f528210198214609",
  "kind": "def",
  "lexical_name": "nonZeroSMulDivisors",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "nonzerosmuldivisors--bd7cbe597de418798f442b5e",
  "source": {
    "blob": "75bd5f3349488a3faf016815bd04b1a350cbf379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 118,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variant967d69b47e0ec5779c4282769b20efb1aecc30322e76f42ba103cfdde6ca6c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd7cbe597de418798f442b5e65674a621565e033a61e5ee0b93e4175e82c8549",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variant967d69b47e0ec5779c4282769b20efb1aecc30322e76f42ba103cfdde6ca6c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74812680da1e874ccddbbd3b4fd61b56e97de0bdad8fe172f528210198214609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonZeroSMulDivisors (M₀ : Type*) [MonoidWithZero M₀] (M : Type*) [Zero M] [MulAction M₀ M] :
    Submonoid M₀ where
  carrier := { r | ∀ m : M, r • m = 0 → m = 0}
  one_mem' m h := (one_smul M₀ m) ▸ h
  mul_mem' {r₁ r₂} h₁ h₂ m H := h₂ _ <| h₁ _ <| mul_smul r₁ r₂ m ▸ H

/-- The notation for the submonoid of non-zero smul-divisors. -/
scoped[nonZeroSMulDivisors] notation:9000 M₀ "⁰[" M "]" => nonZeroSMulDivisors M₀ M

open nonZeroDivisors

section MonoidWithZero
variable {F M₀ M₀' : Type*} [MonoidWithZero M₀] [MonoidWithZero M₀'] {r x y : M₀}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variant967d69b47e0ec5779c4282769b20efb1aecc30322e76f42ba103cfdde6ca6c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variant967d69b47e0ec5779c4282769b20efb1aecc30322e76f42ba103cfdde6ca6c25.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75bd5f3349488a3faf016815bd04b1a350cbf379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
