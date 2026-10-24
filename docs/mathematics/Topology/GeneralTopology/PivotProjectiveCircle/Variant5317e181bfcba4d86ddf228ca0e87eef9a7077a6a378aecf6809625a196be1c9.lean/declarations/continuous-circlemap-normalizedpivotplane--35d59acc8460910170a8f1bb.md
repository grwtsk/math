# continuous_circleMap_normalizedPivotPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed8b4b18-3bce-7dfd-f7b6-cbc54046c880",
  "kind": "theorem",
  "lexical_name": "continuous_circleMap_normalizedPivotPlane",
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
  "slug": "continuous-circlemap-normalizedpivotplane--35d59acc8460910170a8f1bb",
  "source": {
    "blob": "925a634a4d405002a30235e5cc11b34fc191f5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35d59acc8460910170a8f1bbddb2c35d052f9028af8d19a867f8688ed5ba4892",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed8b4b18-3bce-7dfd-f7b6-cbc54046c880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_circleMap_normalizedPivotPlane (I : Fin 1 ↪o Fin 2) :
    Continuous (fun A : NormalizedPivotFrame I => circleMap (normalizedPivotPlane I A)) := by
  have hv : Continuous (fun A : NormalizedPivotFrame I => A.val) := continuous_subtype_val
  have hr : Continuous (fun A : NormalizedPivotFrame I => A.val (0 : Fin 1)) :=
    (continuous_apply (0 : Fin 1)).comp hv
  have h₀ : Continuous (fun A : NormalizedPivotFrame I => A.val 0 0) :=
    (continuous_apply (0 : Fin 2)).comp hr
  have h₁ : Continuous (fun A : NormalizedPivotFrame I => A.val 0 1) :=
    (continuous_apply (1 : Fin 2)).comp hr
  have hd : ∀ A : NormalizedPivotFrame I, A.val 0 0 ^ 2 + A.val 0 1 ^ 2 ≠ 0 :=
    fun A => (fullRankFrame_denominator_pos ⟨A.val, normalizedPivotFrame_rank I A⟩).ne'
  have hc₀ : Continuous (fun A : NormalizedPivotFrame I =>
      (A.val 0 0 ^ 2 - A.val 0 1 ^ 2) / (A.val 0 0 ^ 2 + A.val 0 1 ^ 2)) :=
    ((h₀.pow 2).sub (h₁.pow 2)).div ((h₀.pow 2).add (h₁.pow 2)) hd
  have hc₁ : Continuous (fun A : NormalizedPivotFrame I =>
      2 * A.val 0 0 * A.val 0 1 / (A.val 0 0 ^ 2 + A.val 0 1 ^ 2)) :=
    ((continuous_const.mul h₀).mul h₁).div ((h₀.pow 2).add (h₁.pow 2)) hd
  have hc : Continuous (fun A : NormalizedPivotFrame I => doubleAngle (A.val 0 0) (A.val 0 1)) :=
    hc₀.prodMk hc₁
  have he : (fun A : NormalizedPivotFrame I => circleMap (normalizedPivotPlane I A)) =
      (fun A => frameCircle ⟨A.val, normalizedPivotFrame_rank I A⟩) :=
    funext (circleMap_normalizedPivotPlane I)
  rw [he]
  exact hc.subtype_mk _

/-- Continuity uses the genuine final atlas topology, without a continuous frame choice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925a634a4d405002a30235e5cc11b34fc191f5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
