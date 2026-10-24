# addHaar_parallelepiped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2457575c-c40a-fa86-f3a3-144283dcee3c",
  "kind": "theorem",
  "lexical_name": "addHaar_parallelepiped",
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
  "slug": "addhaar-parallelepiped--e9d5ddf37490142068ff44e7",
  "source": {
    "blob": "0226abd034d26f7e28deaa6a97b3fe7cea4aed41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 550,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d5ddf37490142068ff44e74f86121fdbf802662c412448c56a474665eb5ac9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2457575c-c40a-fa86-f3a3-144283dcee3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_parallelepiped (b : Basis ι ℝ G) (v : ι → G) :
    b.addHaar (parallelepiped v) = ENNReal.ofReal |b.det v| := by
  have : FiniteDimensional ℝ G := FiniteDimensional.of_fintype_basis b
  have A : parallelepiped v = b.constr ℕ v '' parallelepiped b := by
    rw [image_parallelepiped]
    -- porting note: was `congr 1 with i` but Lean 4 `congr` applies `ext` first
    refine congr_arg _ <| funext fun i ↦ ?_
    exact (b.constr_basis ℕ v i).symm
  rw [A, addHaar_image_linearMap, b.addHaar_self, mul_one, ← LinearMap.det_toMatrix b,
    ← Basis.toMatrix_eq_toMatrix_constr, Basis.det_apply]
#align measure_theory.measure.add_haar_parallelepiped MeasureTheory.Measure.addHaar_parallelepiped

variable [FiniteDimensional ℝ G] {n : ℕ} [_i : Fact (finrank ℝ G = n)]

/-- The Lebesgue measure associated to an alternating map. It gives measure `|ω v|` to the
parallelepiped spanned by the vectors `v₁, ..., vₙ`. Note that it is not always a Haar measure,
as it can be zero, but it is always locally finite and translation invariant. -/
noncomputable irreducible_def _root_.AlternatingMap.measure (ω : AlternatingMap ℝ G ℝ (Fin n)) :
    Measure G :=
  ‖ω (finBasisOfFinrankEq ℝ G _i.out)‖₊ • (finBasisOfFinrankEq ℝ G _i.out).addHaar
#align alternating_map.measure AlternatingMap.measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0226abd034d26f7e28deaa6a97b3fe7cea4aed41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
