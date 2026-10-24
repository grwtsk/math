# updateFinset_updateFinset_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d75d83c-b3fa-47d5-1cab-3cde3d31f5a7",
  "kind": "lemma",
  "lexical_name": "updateFinset_updateFinset_of_subset",
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
  "slug": "updatefinset-updatefinset-of-subset--6db75b3d09e16f50d8878f0a",
  "source": {
    "blob": "ce87c2f02d31fa2d496c0bd91967dac46dae55c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant2aef6bf63a3e025ab49bdc2f6f5af76924e66af10b24a1959427b30fb456f328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6db75b3d09e16f50d8878f0a79e2cdf30883d2893d517b63eb24a5ac018ce73d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Update/Variant2aef6bf63a3e025ab49bdc2f6f5af76924e66af10b24a1959427b30fb456f328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d75d83c-b3fa-47d5-1cab-3cde3d31f5a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma updateFinset_updateFinset_of_subset {s t : Finset ι} (hst : s ⊆ t)
    (x : Π i, π i) (y : Π i : s, π i) (z : Π i : t, π i) :
    updateFinset (updateFinset x s y) t z = updateFinset x t z := by
  grind [updateFinset]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Update/Variant2aef6bf63a3e025ab49bdc2f6f5af76924e66af10b24a1959427b30fb456f328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant2aef6bf63a3e025ab49bdc2f6f5af76924e66af10b24a1959427b30fb456f328.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce87c2f02d31fa2d496c0bd91967dac46dae55c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
