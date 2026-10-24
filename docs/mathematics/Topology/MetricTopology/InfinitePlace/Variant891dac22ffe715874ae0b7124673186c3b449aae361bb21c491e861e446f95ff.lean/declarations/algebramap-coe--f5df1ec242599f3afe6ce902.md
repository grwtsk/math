# algebraMap_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24a53b32-c802-dcb4-f9d5-5f704c098ce1",
  "kind": "theorem",
  "lexical_name": "algebraMap_coe",
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
  "slug": "algebramap-coe--f5df1ec242599f3afe6ce902",
  "source": {
    "blob": "907738e62718f31eab5c807ef44896d9b26a1a4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 351,
    "path": "GRWTSK/Topology/MetricTopology/InfinitePlace/Variant891dac22ffe715874ae0b7124673186c3b449aae361bb21c491e861e446f95ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5df1ec242599f3afe6ce9021d60d55e8dbf3aa139bd18e0527dc82fc386b86d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/InfinitePlace/Variant891dac22ffe715874ae0b7124673186c3b449aae361bb21c491e861e446f95ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24a53b32-c802-dcb4-f9d5-5f704c098ce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_coe (x : WithAbs v.1) :
    algebraMap v.Completion w.Completion x = algebraMap (WithAbs v.1) (WithAbs w.1) x :=
  (IsScalarTower.algebraMap_apply (WithAbs v.1) v.Completion w.Completion x).symm.trans
    (algebraMap_eq_coe w x)

end Completion

section LiesOver

variable {L : Type*} [Field L] [Algebra K L] (w : InfinitePlace L) (v : InfinitePlace K)

namespace Completion

variable [Algebra v.Completion w.Completion] [IsScalarTower K v.Completion w.Completion]

/-- Assume that `w.Completion` forms an algebra over `v.Completion` with continuous scalar action,
such that `IsScalarTower K v.Completion w.Completion`.
If `w.embedding : L →+* ℂ` extends `v.embedding : K →+* ℂ`, then the corresponding embeddings
to completions are also extensions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/InfinitePlace/Variant891dac22ffe715874ae0b7124673186c3b449aae361bb21c491e861e446f95ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/InfinitePlace/Variant891dac22ffe715874ae0b7124673186c3b449aae361bb21c491e861e446f95ff.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907738e62718f31eab5c807ef44896d9b26a1a4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
