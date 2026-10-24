# lift_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe3960f2a2920fa18d98764648c06064013e847e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a95cdb15f484918da830b4a21f57c5b401323f7b64e18569cdf7b361b8c89434.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6db3e1d2-87df-db10-55c0-594edaea798b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8efad8eb-e5fb-1ca4-d868-5a70732c56e4",
  "kind": "theorem",
  "lexical_name": "lift_apply",
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
  "slug": "lift-apply--963adf721282c68a1aee9c40",
  "source": {
    "blob": "fe3960f2a2920fa18d98764648c06064013e847e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta95cdb15f484918da830b4a21f57c5b401323f7b64e18569cdf7b361b8c89434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:963adf721282c68a1aee9c40a24f3b5c2f80e4f38ae2fef4f40bb71addccf9fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Varianta95cdb15f484918da830b4a21f57c5b401323f7b64e18569cdf7b361b8c89434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8efad8eb-e5fb-1ca4-d868-5a70732c56e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_apply (f : M →ₗ[R] N →ₗ[R] P) (m : M) (n : N) : lift R L M N P f (m ⊗ₜ n) = f m n :=
  rfl

/-- A weaker form of the universal property for tensor product of modules of a Lie algebra.

Note that maps `f` of type `M →ₗ⁅R,L⁆ N →ₗ[R] P` are exactly those `R`-bilinear maps satisfying
`⁅x, f m n⁆ = f ⁅x, m⁆ n + f m ⁅x, n⁆` for all `x, m, n` (see e.g, `LieModuleHom.map_lie₂`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Varianta95cdb15f484918da830b4a21f57c5b401323f7b64e18569cdf7b361b8c89434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta95cdb15f484918da830b4a21f57c5b401323f7b64e18569cdf7b361b8c89434.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe3960f2a2920fa18d98764648c06064013e847e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
