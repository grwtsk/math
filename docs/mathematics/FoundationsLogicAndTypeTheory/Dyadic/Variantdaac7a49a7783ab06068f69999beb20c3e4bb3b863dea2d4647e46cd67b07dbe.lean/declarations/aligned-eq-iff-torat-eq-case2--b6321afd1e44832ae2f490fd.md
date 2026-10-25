# aligned_eq_iff_toRat_eq_case2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 668,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07a051a5-90ad-cf36-a174-29b6edd33a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00db139b-7ca0-1e8c-e653-511b6e8bfa0d",
  "kind": "theorem",
  "lexical_name": "aligned_eq_iff_toRat_eq_case2",
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
  "slug": "aligned-eq-iff-torat-eq-case2--b6321afd1e44832ae2f490fd",
  "source": {
    "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 668,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6321afd1e44832ae2f490fdf11700c717e92f2f6df76c085753bd0f6a4a5563",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00db139b-7ca0-1e8c-e653-511b6e8bfa0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem aligned_eq_iff_toRat_eq_case2 (d₁ d₂ : Dyadic) (h : d₁.exponent > d₂.exponent) :
    shiftLeftInt d₁.mantissa (d₁.exponent - d₂.exponent).toNat = d₂.mantissa ↔ d₁.toRat = d₂.toRat := by
  set shift := (d₁.exponent - d₂.exponent).toNat with hshift_def
  have hshift : (shift : ℤ) = d₁.exponent - d₂.exponent := by
    rw [hshift_def, Int.toNat_of_nonneg]; omega
  rw [toRat_eq, toRat_eq]
  have hpow : (2 : ℚ) ^ d₁.exponent = (2 : ℚ) ^ (shift : ℤ) * 2 ^ d₂.exponent := by
    rw [← zpow_add₀ (two_ne_zero : (2 : ℚ) ≠ 0), hshift]; congr 1; omega
  have hne : (2 : ℚ) ^ d₂.exponent ≠ 0 := zpow_ne_zero _ (two_ne_zero)
  have hlhs : (d₁.mantissa : ℚ) * 2 ^ d₁.exponent = d₁.mantissa * (2 : ℚ) ^ shift * 2 ^ d₂.exponent := by
    rw [hpow, zpow_natCast, mul_assoc]
  rw [hlhs, int_eq_iff_rat_mul_eq _ _ _ hne, shiftLeftInt_toRat]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8155d886cc441e2f488dc02954233f9c0e659c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
