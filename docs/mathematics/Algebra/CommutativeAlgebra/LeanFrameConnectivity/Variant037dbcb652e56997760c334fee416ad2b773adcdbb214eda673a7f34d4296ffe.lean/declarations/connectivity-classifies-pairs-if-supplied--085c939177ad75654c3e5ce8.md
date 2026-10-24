# connectivity_classifies_pairs_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78a6d9fc-658e-9a89-a147-3362e216e444",
  "kind": "theorem",
  "lexical_name": "connectivity_classifies_pairs_if_supplied",
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
  "slug": "connectivity-classifies-pairs-if-supplied--085c939177ad75654c3e5ce8",
  "source": {
    "blob": "582b22dcac05fbc9e95807d1d5e8b4520d6ff96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/LeanFrameConnectivity/Variant037dbcb652e56997760c334fee416ad2b773adcdbb214eda673a7f34d4296ffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:085c939177ad75654c3e5ce80934f96a974eb6e1c69a6f1656f31f42629e22ab",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/LeanFrameConnectivity/Variant037dbcb652e56997760c334fee416ad2b773adcdbb214eda673a7f34d4296ffe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78a6d9fc-658e-9a89-a147-3362e216e444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connectivity_classifies_pairs_if_supplied
    (T : BinaryMatrixStreamConnectivityTarget)
    (a b : TheoremNode) :
    T.compression.graph.pathExists a b ∨
      ∃ G : GlitchedTraversal,
        G.graph = T.compression.graph ∧ G.source = a ∧ G.target = b :=
  T.allTheoremPairsClassified a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/LeanFrameConnectivity/Variant037dbcb652e56997760c334fee416ad2b773adcdbb214eda673a7f34d4296ffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/LeanFrameConnectivity/Variant037dbcb652e56997760c334fee416ad2b773adcdbb214eda673a7f34d4296ffe.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `582b22dcac05fbc9e95807d1d5e8b4520d6ff96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
