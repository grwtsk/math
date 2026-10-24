# ENorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8108adbce77939b5cc088260fc614ce6b58bf979a12a58584400c742c7f34062",
  "kind": "structure",
  "lexical_name": "ENorm",
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
  "slug": "enorm--b8eea3032b745ca7b204dae2",
  "source": {
    "blob": "6192915b9c0861be6168f6397300ca082fda6be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8eea3032b745ca7b204dae24cab789064a61d2ec64a7128e9422cee12041549",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8108adbce77939b5cc088260fc614ce6b58bf979a12a58584400c742c7f34062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ENorm (𝕜 : Type*) (V : Type*) [NormedField 𝕜] [AddCommGroup V] [Module 𝕜 V] where
  toFun : V → ℝ≥0∞
  eq_zero' : ∀ x, toFun x = 0 → x = 0
  map_add_le' : ∀ x y : V, toFun (x + y) ≤ toFun x + toFun y
  map_smul_le' : ∀ (c : 𝕜) (x : V), toFun (c • x) ≤ ‖c‖₊ * toFun x
#align enorm ENorm

namespace ENorm

variable {𝕜 : Type*} {V : Type*} [NormedField 𝕜] [AddCommGroup V] [Module 𝕜 V] (e : ENorm 𝕜 V)

-- Porting note: added to appease norm_cast complaints
attribute [coe] ENorm.toFun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6192915b9c0861be6168f6397300ca082fda6be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
