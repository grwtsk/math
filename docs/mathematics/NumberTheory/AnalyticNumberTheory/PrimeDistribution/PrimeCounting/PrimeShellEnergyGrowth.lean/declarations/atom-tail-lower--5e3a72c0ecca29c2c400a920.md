# atom_tail_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6f3b4ce-bf5e-5fe3-30d2-1c387b7be1da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfb6c981-acec-68f1-b909-fccf3e42dbd6",
  "kind": "theorem",
  "lexical_name": "atom_tail_lower",
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
  "slug": "atom-tail-lower--5e3a72c0ecca29c2c400a920",
  "source": {
    "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 149,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3a72c0ecca29c2c400a92077eadbd8b6021199034baf74bbd45037ea71bdcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfb6c981-acec-68f1-b909-fccf3e42dbd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_tail_lower {p : ℕ} {T u : ℝ} (hp : 0 < p)
    (hupper : (p : ℝ) ≤ Real.exp (T-binWidth)) (hu : T-terminalWidth ≤ u) :
    atomGain*Real.exp (-T/2) ≤ atom p u := by
  have hpp : 0 < (p : ℝ) := by exact_mod_cast hp
  have hl : Real.log (p : ℝ) ≤ T-binWidth :=
    (Real.log_le_iff_le_exp hpp).mpr hupper
  have he : Real.log (p : ℝ) ≤ u := by
    unfold terminalWidth at hu
    linarith [binWidth_positive]
  have hinv : Real.exp (-(T-binWidth)/2) ≤ (Real.sqrt (p : ℝ))⁻¹ := by
    rw [← ASBNP04.FiniteProduct.exp_negative_half_log hpp]
    apply Real.exp_le_exp.mpr
    linarith
  have hsub : Real.exp (-u/2) ≤ Real.exp (-T/2+binWidth/4) := by
    apply Real.exp_le_exp.mpr
    unfold terminalWidth at hu
    linarith
  have hfirst : Real.exp (-(T-binWidth)/2) = Real.exp (-T/2)*Real.exp (binWidth/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hsecond : Real.exp (-T/2+binWidth/4) = Real.exp (-T/2)*Real.exp (binWidth/4) :=
    Real.exp_add _ _
  rw [hfirst] at hinv
  rw [hsecond] at hsub
  rw [atom,if_pos he]
  unfold atomGain
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
