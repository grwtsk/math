# closure_smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57ca1468-94f3-7535-1325-11666babc819",
  "kind": "theorem",
  "lexical_name": "closure_smul₀",
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
  "slug": "closure-smul--1f9c86a488351b8b2d538f79",
  "source": {
    "blob": "ab706d218dd7d59f5e2725582a619d833d3670d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 426,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f9c86a488351b8b2d538f796efc27e842431bdd507ce2eb23603f02b31952eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57ca1468-94f3-7535-1325-11666babc819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_smul₀ {E} [Zero E] [MulActionWithZero G₀ E] [TopologicalSpace E] [T1Space E]
    [ContinuousConstSMul G₀ E] (c : G₀) (s : Set E) : closure (c • s) = c • closure s := by
  rcases eq_or_ne c 0 with (rfl | hc)
  · rcases eq_empty_or_nonempty s with (rfl | hs)
    · simp
    · rw [zero_smul_set hs, zero_smul_set hs.closure]
      exact closure_singleton
  · exact closure_smul₀' hc s

open scoped Pointwise in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab706d218dd7d59f5e2725582a619d833d3670d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
