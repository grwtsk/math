# rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48c62a8532b8623b861e060c8377a2f5624142e8a3da2bc59c423fe073c7eb96",
  "kind": "def",
  "lexical_name": "rank",
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
  "slug": "rank--0be03afd01fbfbeb3ade57fe",
  "source": {
    "blob": "e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0be03afd01fbfbeb3ade57fee2738abb4b66a10e1038a6e83c1d85a1e4423b69",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48c62a8532b8623b861e060c8377a2f5624142e8a3da2bc59c423fe073c7eb96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rank (A : Matrix m n R) : ℕ :=
  finrank R <| LinearMap.range A.mulVecLin

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
