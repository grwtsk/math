# nhdsGE_basis_of_exists_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3da35575-a498-4a66-47ba-b7c5f05ca30c",
  "kind": "theorem",
  "lexical_name": "nhdsGE_basis_of_exists_gt",
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
  "slug": "nhdsge-basis-of-exists-gt--d964d2c073f69aefefd88547",
  "source": {
    "blob": "6bdc8ca6049a776cdfbf567bda8ac8ee527505d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 368,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d964d2c073f69aefefd8854762846012ac2b3f29ce60c4fd2175db1b843105f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da35575-a498-4a66-47ba-b7c5f05ca30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsGE_basis_of_exists_gt [TopologicalSpace α] [LinearOrder α] [OrderTopology α] {a : α}
    (ha : ∃ u, a < u) : (𝓝[≥] a).HasBasis (fun u => a < u) fun u => Ico a u :=
  nhdsGE_eq_iInf_principal ha ▸ hasBasis_biInf_principal
    (fun b hb c hc => ⟨min b c, lt_min hb hc, Ico_subset_Ico_right (min_le_left _ _),
      Ico_subset_Ico_right (min_le_right _ _)⟩) ha

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bdc8ca6049a776cdfbf567bda8ac8ee527505d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
