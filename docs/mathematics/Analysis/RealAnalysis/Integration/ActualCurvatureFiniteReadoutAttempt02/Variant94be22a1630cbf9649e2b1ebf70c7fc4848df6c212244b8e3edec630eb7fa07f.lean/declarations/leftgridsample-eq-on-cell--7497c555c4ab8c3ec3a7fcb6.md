# leftGridSample_eq_on_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70d751df-a77a-c7d2-356f-6e888cf3aa90",
  "kind": "theorem",
  "lexical_name": "leftGridSample_eq_on_cell",
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
  "slug": "leftgridsample-eq-on-cell--7497c555c4ab8c3ec3a7fcb6",
  "source": {
    "blob": "37df889bce4e886b3bc1c06ba08d455ded4b7a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7497c555c4ab8c3ec3a7fcb6e7141f61b22a21fb397837b96aedcb376c2365fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70d751df-a77a-c7d2-356f-6e888cf3aa90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftGridSample_eq_on_cell {A u : ℝ} {n k : ℕ} (hA : 0<A) (hn : 0<n)
    (hu : u∈Ioo (gridPoint A n k) (gridPoint A n (k+1))) :
    leftGridSample A n u=gridPoint A n k := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  let h : ℝ := 2*A/(n:ℝ)
  have hh : 0<h := by dsimp [h];positivity
  have hk0 : (0:ℝ)≤(k:ℝ)*h := by positivity
  have hu0 : 0≤u := by
    dsimp [gridPoint] at hu
    change (k:ℝ)*h<u ∧ u<((k+1:ℕ):ℝ)*h at hu
    exact hk0.trans hu.1.le
  have hf : ⌊u/h⌋₊=k := by
    apply (Nat.floor_eq_iff (div_nonneg hu0 hh.le)).mpr
    constructor
    · apply (le_div_iff₀ hh).mpr
      exact hu.1.le
    · apply (div_lt_iff₀ hh).mpr
      simpa [gridPoint,Nat.cast_add,Nat.cast_one,h] using hu.2
  change h*(⌊u/h⌋₊:ℝ)=(k:ℝ)*h
  rw [hf,mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt02/Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37df889bce4e886b3bc1c06ba08d455ded4b7a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
