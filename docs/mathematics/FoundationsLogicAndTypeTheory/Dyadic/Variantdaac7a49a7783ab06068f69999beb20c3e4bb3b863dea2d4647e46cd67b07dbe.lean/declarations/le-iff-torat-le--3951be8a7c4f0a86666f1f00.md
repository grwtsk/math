# le_iff_toRat_le

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
      "line": 695,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:346fb422-5b43-ecba-bd0e-d4f9f847d4ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41127c9a-7689-790d-14f6-bdda19b85e5f",
  "kind": "theorem",
  "lexical_name": "le_iff_toRat_le",
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
  "slug": "le-iff-torat-le--3951be8a7c4f0a86666f1f00",
  "source": {
    "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 695,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3951be8a7c4f0a86666f1f0015af4089444f67b505715b2af9fbc29f77232113",
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

Occurrence: `result:41127c9a-7689-790d-14f6-bdda19b85e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_iff_toRat_le (d₁ d₂ : Dyadic) :
    le d₁ d₂ = true ↔ d₁.toRat ≤ d₂.toRat := by
  unfold le compare
  split_ifs with h
  · -- Case: d₁.exponent ≤ d₂.exponent
    set shift := (d₂.exponent - d₁.exponent).toNat
    rw [ord_compare_ne_gt_iff]
    constructor
    · intro hle
      by_cases! hlt : d₁.mantissa < shiftLeftInt d₂.mantissa shift
      · exact le_of_lt ((aligned_lt_iff_toRat_lt_case1 d₁ d₂ h).mp hlt)
      · have heq_or_gt := lt_or_eq_of_le hlt
        cases heq_or_gt with
        | inl hgt =>
          exfalso; exact not_lt.mpr hle hgt
        | inr heq =>
          exact le_of_eq ((aligned_eq_iff_toRat_eq_case1 d₁ d₂ h).mp heq.symm)
    · intro hle
      by_contra! hgt
      have hgt' := (aligned_gt_iff_toRat_gt_case1 d₁ d₂ h).mp hgt
      exact not_lt.mpr hle hgt'
  · -- Case: d₁.exponent > d₂.exponent
    push Not at h
    set shift := (d₁.exponent - d₂.exponent).toNat
    rw [ord_compare_ne_gt_iff]
    constructor
    · intro hle
      by_cases! hlt : shiftLeftInt d₁.mantissa shift < d₂.mantissa
      · exact le_of_lt ((aligned_lt_iff_toRat_lt_case2 d₁ d₂ h).mp hlt)
      · have heq_or_gt := lt_or_eq_of_le hlt
        cases heq_or_gt with
        | inl hgt =>
          exfalso; exact not_lt.mpr hle hgt
        | inr heq =>
          exact le_of_eq ((aligned_eq_iff_toRat_eq_case2 d₁ d₂ h).mp heq.symm)
    · intro hle
      by_contra! hgt
      have hgt' := (aligned_gt_iff_toRat_gt_case2 d₁ d₂ h).mp hgt
      exact not_lt.mpr hle hgt'

/-- compare reflects toRat ordering: lt case -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8155d886cc441e2f488dc02954233f9c0e659c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
