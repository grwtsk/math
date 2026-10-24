# Module.rank_linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b4270610616d0184a141e2fb40c5d52ddc1f4ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c2ac6fa-b78d-3216-4842-27e51ff8ebe2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f50b9c2d-d617-6e44-e0ba-2469c34a1b2d",
  "kind": "theorem",
  "lexical_name": "Module.rank_linearMap",
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
  "slug": "module-rank-linearmap--0aeb082d75ebed9ccee9ab95",
  "source": {
    "blob": "4b4270610616d0184a141e2fb40c5d52ddc1f4ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aeb082d75ebed9ccee9ab951307b4459ce0da6cb83348949bcbaa821d86b192",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50b9c2d-d617-6e44-e0ba-2469c34a1b2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.rank_linearMap :
    Module.rank S (M →ₗ[R] N) = lift.{w} (Module.rank R M) * lift.{v} (Module.rank S N) := by
  rw [(linearMapEquivFun R S M N).rank_eq, rank_fun_eq_lift_mul,
    ← finrank_eq_card_chooseBasisIndex, ← finrank_eq_rank R, lift_natCast]

/-- The `finrank` of `M →ₗ[R] N` as an `S`-module is `(finrank R M) * (finrank S N)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4270610616d0184a141e2fb40c5d52ddc1f4ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
