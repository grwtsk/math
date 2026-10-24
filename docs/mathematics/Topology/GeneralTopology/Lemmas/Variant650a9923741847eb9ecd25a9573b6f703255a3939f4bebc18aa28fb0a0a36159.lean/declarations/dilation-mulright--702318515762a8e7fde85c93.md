# Dilation.mulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8836721b4af55511419b466411fd28c5c2f1509f89ba8adc557bdacea914297f",
  "kind": "def",
  "lexical_name": "Dilation.mulRight",
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
  "slug": "dilation-mulright--702318515762a8e7fde85c93",
  "source": {
    "blob": "182bc86f66430d7ef09e9b1a3e522a18109a10de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant650a9923741847eb9ecd25a9573b6f703255a3939f4bebc18aa28fb0a0a36159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:702318515762a8e7fde85c939e227acaf8996633456748ec74ce39386aad1153",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant650a9923741847eb9ecd25a9573b6f703255a3939f4bebc18aa28fb0a0a36159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8836721b4af55511419b466411fd28c5c2f1509f89ba8adc557bdacea914297f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Dilation.mulRight (a : α) (ha : a ≠ 0) : α →ᵈ α where
  toFun b := b * a
  edist_eq' := ⟨‖a‖₊, nnnorm_ne_zero_iff.2 ha, fun x y ↦ by
    simp [edist_nndist, nndist_eq_nnnorm, ← sub_mul, ← mul_comm (‖a‖₊)]⟩

namespace Filter

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant650a9923741847eb9ecd25a9573b6f703255a3939f4bebc18aa28fb0a0a36159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant650a9923741847eb9ecd25a9573b6f703255a3939f4bebc18aa28fb0a0a36159.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `182bc86f66430d7ef09e9b1a3e522a18109a10de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
