# IsProperMap.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46a99c8792e73177710ae594a669a8dab49fbd2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0050d8a4-7bb2-ca69-8cfa-4fed59b75ef8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac29c230-247e-ab0a-2bac-93a022fe20cf",
  "kind": "lemma",
  "lexical_name": "IsProperMap.comp",
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
  "slug": "ispropermap-comp--cf1ba7067b1c2db3696277ef",
  "source": {
    "blob": "46a99c8792e73177710ae594a669a8dab49fbd2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1ba7067b1c2db3696277efbca8ab19bacc5e9d28948502f69fcc1ef0182326",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac29c230-247e-ab0a-2bac-93a022fe20cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProperMap.comp (hf : IsProperMap f) (hg : IsProperMap g) :
    IsProperMap (g ∘ f) := by
  refine ⟨by fun_prop, fun ℱ z h ↦ ?_⟩
  rw [mapClusterPt_comp] at h
  rcases hg.clusterPt_of_mapClusterPt h with ⟨y, rfl, hy⟩
  rcases hf.clusterPt_of_mapClusterPt hy with ⟨x, rfl, hx⟩
  use x, rfl


/-- If the composition of two continuous functions `g ∘ f` is proper and `f` is surjective,
then `g` is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb7d923cbcfca31c29db41130a60df47de8badfeacc01412f678d2fae754c48b4.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46a99c8792e73177710ae594a669a8dab49fbd2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
