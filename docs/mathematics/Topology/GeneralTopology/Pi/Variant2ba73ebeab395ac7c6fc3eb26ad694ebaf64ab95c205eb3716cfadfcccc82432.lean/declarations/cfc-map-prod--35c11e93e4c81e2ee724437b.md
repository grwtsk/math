# cfc_map_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d8dfa762b889a904022ebf981a55c75a8f070bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77e191be-8767-7538-daf0-9df70ad44b78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8568394d-bb2d-a429-984f-833817180c96",
  "kind": "lemma",
  "lexical_name": "cfc_map_prod",
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
  "slug": "cfc-map-prod--35c11e93e4c81e2ee724437b",
  "source": {
    "blob": "9d8dfa762b889a904022ebf981a55c75a8f070bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35c11e93e4c81e2ee724437b165d738c300d974ff71b0ce2d46296a0af87bf66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8568394d-bb2d-a429-984f-833817180c96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_map_prod (f : R → R) (a : A) (b : B)
    (hf : ContinuousOn f (spectrum R a ∪ spectrum R b) := by cfc_cont_tac)
    (hab : pab (a, b) := by cfc_tac) (ha : pa a := by cfc_tac) (hb : pb b := by cfc_tac) :
    cfc f (a, b) = (cfc f a, cfc f b) := by
  ext
  case fst =>
    let φ := StarAlgHom.fst S A B
    exact φ.map_cfc f (a, b) (by rwa [Prod.spectrum_eq]) continuous_fst hab ha
  case snd =>
    let φ := StarAlgHom.snd S A B
    exact φ.map_cfc f (a, b) (by rwa [Prod.spectrum_eq]) continuous_snd hab hb

end unital_prod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8dfa762b889a904022ebf981a55c75a8f070bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
