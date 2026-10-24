# twoBlockTriangular_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13783d58-ccb6-d980-15b9-9d1cb38df0e6",
  "kind": "theorem",
  "lexical_name": "twoBlockTriangular_det",
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
  "slug": "twoblocktriangular-det--c2128fa50937a6821dc425ae",
  "source": {
    "blob": "d57b471e4911406eb326b70629dc71cc4f45a250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 185,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2128fa50937a6821dc425ae4fdccf24ded554263d5a566a235e86435fc90408",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13783d58-ccb6-d980-15b9-9d1cb38df0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoBlockTriangular_det (M : Matrix m m R) (p : m → Prop) [DecidablePred p]
    (h : ∀ i, ¬p i → ∀ j, p j → M i j = 0) :
    M.det = (toSquareBlockProp M p).det * (toSquareBlockProp M fun i => ¬p i).det := by
  rw [det_toBlock M p]
  convert det_fromBlocks_zero₂₁ (toBlock M p p) (toBlock M p fun j => ¬p j)
      (toBlock M (fun j => ¬p j) fun j => ¬p j)
  ext i j
  exact h (↑i) i.2 (↑j) j.2
#align matrix.two_block_triangular_det Matrix.twoBlockTriangular_det

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d57b471e4911406eb326b70629dc71cc4f45a250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
