# inverse_fourth_coefficient_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb6b5bb3372eb1b9a48cf536c528e2c416090e36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f27f66-0de9-ab1f-584d-e499f6e515d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20e3e1fe-8c2b-abf1-5efd-5906cd735339",
  "kind": "theorem",
  "lexical_name": "inverse_fourth_coefficient_tendsto_zero",
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
  "slug": "inverse-fourth-coefficient-tendsto-zero--4850f1b380ef977a5953d83f",
  "source": {
    "blob": "cb6b5bb3372eb1b9a48cf536c528e2c416090e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4850f1b380ef977a5953d83f181475de9c47a6ca8862ff1267d69575dad9db66",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e3e1fe-8c2b-abf1-5efd-5906cd735339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_fourth_coefficient_tendsto_zero :
    Tendsto (fun A : ℝ ↦ 1 / A ^ 4) atTop (nhds 0) := by
  simpa only [one_div, inv_pow, zero_pow (by omega : 4 ≠ 0)] using
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).pow 4

/-- Every fixed physical displacement has source correlation tending to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6b5bb3372eb1b9a48cf536c528e2c416090e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
