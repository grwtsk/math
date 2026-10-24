# congr_arg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d5ca006de8845a77665832a71a6d7b8914927f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96d8c9ee-e35f-f090-50c6-57639039789c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e49b1779-7eca-82c8-e7a4-2aa971784eae",
  "kind": "theorem",
  "lexical_name": "congr_arg",
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
  "slug": "congr-arg--6b3eccbfe0443b21e4f39952",
  "source": {
    "blob": "0d5ca006de8845a77665832a71a6d7b8914927f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 621,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b3eccbfe0443b21e4f3995278cef87f3a09e5ad2a4c30e063e8efefb7cf092c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49b1779-7eca-82c8-e7a4-2aa971784eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congr_arg (f : α →𝒄 β) {x y : α} (h : x = y) : f x = f y :=
  _root_.congr_arg f h
#align omega_complete_partial_order.continuous_hom.congr_arg OmegaCompletePartialOrder.ContinuousHom.congr_arg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Varianteac9db4dc63daeac9cf98268579a6cf2aa5f15c6c385d347ad14339b5729ac52.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d5ca006de8845a77665832a71a6d7b8914927f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
