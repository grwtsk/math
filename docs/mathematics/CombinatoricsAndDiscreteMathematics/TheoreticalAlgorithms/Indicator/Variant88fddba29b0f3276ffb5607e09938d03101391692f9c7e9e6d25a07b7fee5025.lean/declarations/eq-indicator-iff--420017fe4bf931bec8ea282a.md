# eq_indicator_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be97f612-a6ed-aed1-b93f-64350f652c74",
  "kind": "theorem",
  "lexical_name": "eq_indicator_iff",
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
  "slug": "eq-indicator-iff--420017fe4bf931bec8ea282a",
  "source": {
    "blob": "e8e953374c6eb49c92bb96c94d2493bcebba5e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:420017fe4bf931bec8ea282a0afcdcd206b47b320e6a40016fb3702bfa1e26d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be97f612-a6ed-aed1-b93f-64350f652c74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_indicator_iff {g : ι → α} :
    g = indicator s f ↔ g.support ⊆ s ∧ ∀ ⦃i⦄ (hi : i ∈ s), f i hi = g i := by
  classical
  suffices g.support ⊆ s ∧ (∀ i (hi : i ∈ s), f i hi = g i) ↔
      (∀ i, if hi : i ∈ s then f i hi = g i else g i = 0) by
    simp only [this, funext_iff, indicator_apply]
    grind
  rw [Set.subset_def, and_comm]
  have : (∀ (i : ι), if hi : i ∈ s then f i hi = g i else g i = 0) ↔
      ((∀ (i : ι) (hi : i ∈ s), f i hi = g i) ∧ ∀ i (hi : i ∉ s), g i = 0) := by grind
  simp [this, not_imp_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e953374c6eb49c92bb96c94d2493bcebba5e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
