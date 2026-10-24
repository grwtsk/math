# revAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4247c8df06113f8633f5e5995715f89eb958d7a429196ed775cf55e534ed6f9",
  "kind": "def",
  "lexical_name": "revAt",
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
  "slug": "revat--e564cfccfd79f4b295fbbb2b",
  "source": {
    "blob": "edacf05b459e5801871e2b87895ec20d2d24d06e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e564cfccfd79f4b295fbbb2b5a5d44d638be684a81f92be4440535ef8603f257",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4247c8df06113f8633f5e5995715f89eb958d7a429196ed775cf55e534ed6f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def revAt (N : ℕ) : Function.Embedding ℕ ℕ
    where
  toFun i := ite (i ≤ N) (N - i) i
  inj' := revAtFun_inj
#align polynomial.rev_at Polynomial.revAt

/-- We prefer to use the bundled `revAt` over unbundled `revAtFun`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edacf05b459e5801871e2b87895ec20d2d24d06e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
