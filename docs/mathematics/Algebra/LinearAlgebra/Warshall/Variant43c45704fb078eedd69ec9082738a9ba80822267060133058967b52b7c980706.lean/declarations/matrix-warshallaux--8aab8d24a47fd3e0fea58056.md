# Matrix.warshallAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba10d6d8bcb47f3e38392136f08b59eec26ef88f35060068f021bcaeef5fb889",
  "kind": "def",
  "lexical_name": "Matrix.warshallAux",
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
  "slug": "matrix-warshallaux--8aab8d24a47fd3e0fea58056",
  "source": {
    "blob": "dc67668e741f29a9e9e7ac23915384b8b03c8b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8aab8d24a47fd3e0fea5805671761fec67920196b9c32e62f91b5ad0d4eddbd0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba10d6d8bcb47f3e38392136f08b59eec26ef88f35060068f021bcaeef5fb889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.warshallAux {n : Nat} :
    (limit : Nat) → limit ≤ n → Matrix n n → Matrix n n
  | 0, _, A => A
  | k + 1, hk, A =>
      Matrix.warshallStep
        ⟨k, hk⟩
        (Matrix.warshallAux
          k
          (Nat.le_trans (Nat.le_succ k) hk)
          A)

/--
Warshall's algorithm on a square Boolean matrix.

For a relation matrix, this repeatedly applies the Boolean update

`A[i,j] := A[i,j] || (A[i,k] && A[k,j])`

for every intermediate index `k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Warshall/Variant43c45704fb078eedd69ec9082738a9ba80822267060133058967b52b7c980706.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc67668e741f29a9e9e7ac23915384b8b03c8b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
