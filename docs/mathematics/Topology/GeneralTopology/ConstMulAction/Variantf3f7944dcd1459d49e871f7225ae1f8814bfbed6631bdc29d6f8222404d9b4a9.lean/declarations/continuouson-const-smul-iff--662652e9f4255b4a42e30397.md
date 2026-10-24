# continuousOn_const_smul_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2127471f-80a3-946e-2476-7f33d76ff847",
  "kind": "theorem",
  "lexical_name": "continuousOn_const_smul_iff₀",
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
  "slug": "continuouson-const-smul-iff--662652e9f4255b4a42e30397",
  "source": {
    "blob": "ab706d218dd7d59f5e2725582a619d833d3670d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:662652e9f4255b4a42e303973fc49ef04a8b549eeda1e8cb7928ddafe3b525c2",
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

Occurrence: `result:2127471f-80a3-946e-2476-7f33d76ff847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_const_smul_iff₀ (hc : c ≠ 0) :
    ContinuousOn (fun x => c • f x) s ↔ ContinuousOn f s :=
  continuousOn_const_smul_iff (Units.mk0 c hc)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantf3f7944dcd1459d49e871f7225ae1f8814bfbed6631bdc29d6f8222404d9b4a9.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab706d218dd7d59f5e2725582a619d833d3670d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
