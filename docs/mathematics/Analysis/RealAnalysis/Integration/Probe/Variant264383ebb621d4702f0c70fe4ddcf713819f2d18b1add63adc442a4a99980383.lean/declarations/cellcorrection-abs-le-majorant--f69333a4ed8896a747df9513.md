# cellCorrection_abs_le_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec572f3c47017226ac8223f2c6e19c6da1bb1d65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10aa55f4-2232-60a6-fb45-e30eb5ba6dbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ebde99c-033d-4606-e634-3631be0b77d3",
  "kind": "theorem",
  "lexical_name": "cellCorrection_abs_le_majorant",
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
  "slug": "cellcorrection-abs-le-majorant--f69333a4ed8896a747df9513",
  "source": {
    "blob": "ec572f3c47017226ac8223f2c6e19c6da1bb1d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69333a4ed8896a747df9513622fc6b8aceeb0b044fc9727d7b3d8b995549261",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ebde99c-033d-4606-e634-3631be0b77d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellCorrection_abs_le_majorant {A : ℝ} (hA : 200 ≤ A)
    {n : ℕ} (hn : 1 ≤ n) :
    |cellCorrection A n| ≤ (10 / A ^ 2) *
      ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x := by
  have hp : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  have hf := cellIntegrand_intervalIntegrable hp hn
  have hg := (cellMajorant_intervalIntegrable (a := (n : ℝ)) (b := (n : ℝ) + 1)
    hn0 (by linarith)).const_mul (10 / A ^ 2)
  calc
    |cellCorrection A n| ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1),
        |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
          sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1), (10 / A ^ 2) * cellMajorant x :=
      intervalIntegral.integral_mono_on (by linarith) hf.abs hg
        (fun x hx => cell_integrand_abs_le hA hn hx)
    _ = _ := intervalIntegral.integral_const_mul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Probe/Variant264383ebb621d4702f0c70fe4ddcf713819f2d18b1add63adc442a4a99980383.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec572f3c47017226ac8223f2c6e19c6da1bb1d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
