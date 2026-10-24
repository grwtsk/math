# comap_mk.symm_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "824415803e208ab1939de463f1fc97c79a38de52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1d88563-c4a9-54ba-df8e-35064f5e61a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:161eaf47-2e86-8f71-81a6-67a08593eee0",
  "kind": "theorem",
  "lexical_name": "comap_mk.symm_nhds",
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
  "slug": "comap-mk-symm-nhds--2158a6726da18ed26aacd691",
  "source": {
    "blob": "824415803e208ab1939de463f1fc97c79a38de52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2158a6726da18ed26aacd6915970be4c161446a899b3e7909144244e9bd90b9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:161eaf47-2e86-8f71-81a6-67a08593eee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_mk.symm_nhds (x : M) : comap (mk.symm : Mᵈᵐᵃ → M) (𝓝 x) = 𝓝 (mk x) :=
  mkHomeomorph.symm.comap_nhds_eq x

end DomMulAct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824415803e208ab1939de463f1fc97c79a38de52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
