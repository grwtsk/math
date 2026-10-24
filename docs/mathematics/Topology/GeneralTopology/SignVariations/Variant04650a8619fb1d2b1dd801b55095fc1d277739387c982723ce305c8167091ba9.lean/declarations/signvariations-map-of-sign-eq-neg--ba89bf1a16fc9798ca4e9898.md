# signVariations_map_of_sign_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44b9e5aeb6d2c915333879fd76f9eb7a8e8f495d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04650a8619fb1d2b1dd801b55095fc1d277739387c982723ce305c8167091ba9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dacdbd7b-b3e5-1908-5d1f-5418dd315939",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5828764d-7a19-28ef-ea9d-51cad4db834e",
  "kind": "lemma",
  "lexical_name": "signVariations_map_of_sign_eq_neg",
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
  "slug": "signvariations-map-of-sign-eq-neg--ba89bf1a16fc9798ca4e9898",
  "source": {
    "blob": "44b9e5aeb6d2c915333879fd76f9eb7a8e8f495d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/SignVariations/Variant04650a8619fb1d2b1dd801b55095fc1d277739387c982723ce305c8167091ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba89bf1a16fc9798ca4e9898cc437cd71edb0b1ef5bb9a5e95d6e069d342c9b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SignVariations/Variant04650a8619fb1d2b1dd801b55095fc1d277739387c982723ce305c8167091ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5828764d-7a19-28ef-ea9d-51cad4db834e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma signVariations_map_of_sign_eq_neg {β : Type*} [Zero β] [LinearOrder β] {f : α → β}
    (hf : ∀ x, sign (f x) = -sign x) (l : List α) :
    signVariations (l.map f) = signVariations l := by
  have h1 : (l.map f).map sign = (l.map sign).map (- ·) := by
    rw [map_map, map_map]
    exact map_congr_left fun x _ => hf x
  have h2 : ((l.map sign).map (- ·)).filter (· ≠ 0) = ((l.map sign).filter (· ≠ 0)).map (- ·) := by
    rw [filter_map]
    congr 2
    funext s
    simp
  simp only [signVariations, h1, h2, ← map_destutter_ne _ neg_injective, length_map]

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SignVariations/Variant04650a8619fb1d2b1dd801b55095fc1d277739387c982723ce305c8167091ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SignVariations/Variant04650a8619fb1d2b1dd801b55095fc1d277739387c982723ce305c8167091ba9.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b9e5aeb6d2c915333879fd76f9eb7a8e8f495d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
