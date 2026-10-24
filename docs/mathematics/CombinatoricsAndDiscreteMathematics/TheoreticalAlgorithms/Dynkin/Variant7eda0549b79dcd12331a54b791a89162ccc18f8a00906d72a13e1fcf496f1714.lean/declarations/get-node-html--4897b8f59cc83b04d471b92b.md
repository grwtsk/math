# get_node_html

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f13a828f931eaf3cc01e8ba2f114e7c182df8289a3ef60e160a4403a8ec5b85",
  "kind": "def",
  "lexical_name": "get_node_html",
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
  "slug": "get-node-html--4897b8f59cc83b04d471b92b",
  "source": {
    "blob": "be815f0852d73e8a84a1917409e5137b50bf0aa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dynkin/Variant7eda0549b79dcd12331a54b791a89162ccc18f8a00906d72a13e1fcf496f1714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4897b8f59cc83b04d471b92bc96d71972b4f5f98941324cff5c783cad8180d05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dynkin/Variant7eda0549b79dcd12331a54b791a89162ccc18f8a00906d72a13e1fcf496f1714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f13a828f931eaf3cc01e8ba2f114e7c182df8289a3ef60e160a4403a8ec5b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def get_node_html (n i : Nat) : Html :=
  <circle
    cx={toString <| get_node_cx n i}
    cy={toString <| get_node_cy n i}
    r="10"
    fill="white"
    stroke="black" />

/-- TODO
 * Error if `j ≤ i`
 * Error if `(A i j, A j i) ∉ [((0 : Int), (0 : Int)), (-1, -1), (-1, -2), (-2, -1), (-1, -3), (-3, -1)]`
 * Render `(A i j) * (A j i)` edges
 * Render arrow on double or triple edge with direction decided by `A i j < A j i` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dynkin/Variant7eda0549b79dcd12331a54b791a89162ccc18f8a00906d72a13e1fcf496f1714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dynkin/Variant7eda0549b79dcd12331a54b791a89162ccc18f8a00906d72a13e1fcf496f1714.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be815f0852d73e8a84a1917409e5137b50bf0aa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
