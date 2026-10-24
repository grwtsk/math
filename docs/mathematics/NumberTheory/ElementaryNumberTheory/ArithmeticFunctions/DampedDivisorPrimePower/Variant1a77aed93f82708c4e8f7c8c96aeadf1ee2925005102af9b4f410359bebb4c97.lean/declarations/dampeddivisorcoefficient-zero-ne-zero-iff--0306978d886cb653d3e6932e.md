# dampedDivisorCoefficient_zero_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a1001ac-cfed-178b-9f49-24cee5a2edcf",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_zero_ne_zero_iff",
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
  "slug": "dampeddivisorcoefficient-zero-ne-zero-iff--0306978d886cb653d3e6932e",
  "source": {
    "blob": "f3af00287fbfc5483d68a6e1f6c28b4ef410eea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0306978d886cb653d3e6932ee85c90fdf1e79d40a34af4ae24918edbfd13a3a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a1001ac-cfed-178b-9f49-24cee5a2edcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_zero_ne_zero_iff (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n ≠ 0 ↔ n = 1 := by
  rw [dampedDivisorCoefficient_zero n hn]
  split_ifs <;> simp_all

end
end DampedDivisorCoefficientScratch

/-! Exact prime-power values and a divisor-count-free quadratic bound off prime powers. -/
set_option autoImplicit false
namespace DampedDivisorPrimePowerScratch
open Finset
open DampedDivisorCoefficientScratch
noncomputable section

/-- A positive prime power has exactly one damped factor, independently of its exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3af00287fbfc5483d68a6e1f6c28b4ef410eea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
