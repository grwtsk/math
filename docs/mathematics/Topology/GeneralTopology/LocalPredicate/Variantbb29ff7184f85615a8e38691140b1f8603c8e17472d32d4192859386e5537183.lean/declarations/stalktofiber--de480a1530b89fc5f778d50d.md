# stalkToFiber_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10bc5686-8e98-f245-4a38-b85e9643feed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09872f0d-fbc3-3a03-b9e4-702697beb32b",
  "kind": "lemma",
  "lexical_name": "stalkToFiber_ι",
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
  "slug": "stalktofiber--de480a1530b89fc5f778d50d",
  "source": {
    "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de480a1530b89fc5f778d50df48ea7b2adb075ac2e60f80ad15afee719371912",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09872f0d-fbc3-3a03-b9e4-702697beb32b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkToFiber_ι (P : LocalPredicate T) (x : X) (U : (OpenNhds x)ᵒᵖ)
    (fU : {f //  P.pred f}) :
    dsimp% (stalkToFiber P x)
      (colimit.ι ((OpenNhds.inclusion x).op ⋙ subpresheafToTypes P.toPrelocalPredicate) U fU) =
      (P.cocone x).ι.app U fU :=
  colimit.ι_desc_apply _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243541d6420c86b4346c81579a8f7eb0607c1cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
