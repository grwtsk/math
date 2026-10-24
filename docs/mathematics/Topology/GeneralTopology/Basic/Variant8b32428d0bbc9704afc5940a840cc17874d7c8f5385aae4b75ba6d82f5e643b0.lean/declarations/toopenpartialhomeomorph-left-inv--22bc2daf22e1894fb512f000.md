# toOpenPartialHomeomorph_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb0e9e7a-ecb6-bb9b-fafa-d831a9b421ca",
  "kind": "lemma",
  "lexical_name": "toOpenPartialHomeomorph_left_inv",
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
  "slug": "toopenpartialhomeomorph-left-inv--22bc2daf22e1894fb512f000",
  "source": {
    "blob": "65d550b3aab803ff8f76d8f700f3f5ea09985b18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22bc2daf22e1894fb512f000400ada42df50fea45e4311d3fe5e87371bb8e52d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0e9e7a-ecb6-bb9b-fafa-d831a9b421ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toOpenPartialHomeomorph_left_inv {x : X} : (h.toOpenPartialHomeomorph f).symm (f x) = x := by
  rw [← congr_fun (h.toOpenPartialHomeomorph_apply f), OpenPartialHomeomorph.left_inv]
  exact Set.mem_univ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d550b3aab803ff8f76d8f700f3f5ea09985b18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
