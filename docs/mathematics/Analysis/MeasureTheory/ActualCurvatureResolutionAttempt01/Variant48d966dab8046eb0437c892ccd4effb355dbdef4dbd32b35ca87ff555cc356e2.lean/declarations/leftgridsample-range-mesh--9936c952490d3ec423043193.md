# leftGridSample_range_mesh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4006db8-ac6d-c3ef-3546-3c0f5f94946e",
  "kind": "theorem",
  "lexical_name": "leftGridSample_range_mesh",
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
  "slug": "leftgridsample-range-mesh--9936c952490d3ec423043193",
  "source": {
    "blob": "5ec1a647367b0027c9ea78a58363445acf5ad257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 80,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9936c952490d3ec42304319375e873bf30b75cd6814b70ae6a92da9412d313e3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4006db8-ac6d-c3ef-3546-3c0f5f94946e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftGridSample_range_mesh {A u : ℝ} {n : ℕ} (hA : 0<A) (hn : 0<n)
    (hu : u∈Icc (0:ℝ) (2*A)) :
    leftGridSample A n u∈Icc (0:ℝ) (2*A) ∧ |leftGridSample A n u-u|≤2*A/n := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  let h : ℝ := 2*A/n
  have hh : 0<h := by dsimp [h];positivity
  have hx : 0≤u/h := div_nonneg hu.1 hh.le
  have hf := Nat.floor_le hx
  have ht := Nat.lt_floor_add_one (u/h)
  have hlo : 0≤h*(⌊u/h⌋₊:ℝ) := by positivity
  have hle : h*(⌊u/h⌋₊:ℝ)≤u := by
    have hf2 := (le_div_iff₀ hh).mp hf
    nlinarith
  have hdiff : u-h*(⌊u/h⌋₊:ℝ)≤h := by
    have ht2 := (div_lt_iff₀ hh).mp ht
    nlinarith
  change h*(⌊u/h⌋₊:ℝ)∈Icc (0:ℝ) (2*A) ∧ |h*(⌊u/h⌋₊:ℝ)-u|≤h
  constructor
  · exact ⟨hlo,hle.trans hu.2⟩
  · rw [abs_sub_comm,abs_of_nonneg (sub_nonneg.mpr hle)]
    exact hdiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt01/Variant48d966dab8046eb0437c892ccd4effb355dbdef4dbd32b35ca87ff555cc356e2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec1a647367b0027c9ea78a58363445acf5ad257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
