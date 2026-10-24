# Flow.Expression.zetaMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b40a7237e3ac9b8b71a997106337dca63868f78bc795511c9a96e1dcfc18d15",
  "kind": "def",
  "lexical_name": "Flow.Expression.zetaMatrix",
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
  "slug": "flow-expression-zetamatrix--e7f751c1c19b5106fb82b09e",
  "source": {
    "blob": "58cf01ade6ff6f15321d10c77ac422c3b7f2f2db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7f751c1c19b5106fb82b09e65f301acac4bcb69cb442b777c4a02b4bb1be6ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b40a7237e3ac9b8b71a997106337dca63868f78bc795511c9a96e1dcfc18d15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.zetaMatrix
    (t : Flow.Expression α) :
    Flow.IntMatrix
      (Flow.Expression.nodeCount t)
      (Flow.Expression.nodeCount t) :=
  Flow.IntMatrix.ofBool
    (Flow.Expression.zetaBoolMatrix t)

/--
Möbius matrix of the tree poset.

For a rooted tree poset in preorder:

* diagonal entries are `1`;
* cover entries, i.e. parent-child edges, are `-1`;
* all other entries are `0`.

This is the local Möbius inversion operator for the zeta/incidence matrix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cf01ade6ff6f15321d10c77ac422c3b7f2f2db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
