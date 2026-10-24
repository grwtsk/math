# admWindow_taperPhi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55f571e40a0700960db0c211e4247c0ae9c16ac6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b578523a-8091-e9d8-48c8-1d9a54bdd1a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf70d294-8654-e4c7-f3ba-735518dce7c8",
  "kind": "theorem",
  "lexical_name": "admWindow_taperPhi",
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
  "slug": "admwindow-taperphi--8ae344df387e49b9541d4f69",
  "source": {
    "blob": "55f571e40a0700960db0c211e4247c0ae9c16ac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae344df387e49b9541d4f690e1aa0ee713b3b0f1c03b54be394a59390dbcdc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf70d294-8654-e4c7-f3ba-735518dce7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admWindow_taperPhi {ϱ : ℝ → ℝ} {L w : ℝ} (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    AdmWindow (Taper.phi ϱ L w) L w (Taper.cRho ϱ) where
  one_le_w := hw
  w8 := hwL
  four_le_c := Taper.four_le_cRho hϱ
  even := Taper.phi_even
  nonneg := Taper.phi_nonneg hϱ
  le_one := Taper.phi_le_one hϱ
  contDiff := (Taper.phi_contDiff hϱ (by linarith) (by linarith)).of_le (by norm_num)
  support := fun _ hu => Taper.phi_eq_zero hϱ (by linarith) hu
  l1_deriv := (Taper.integral_abs_deriv_phi hϱ (by linarith) (by linarith)).le
  l1_deriv_sq := (Taper.integral_abs_deriv_phi_sq hϱ (by linarith) (by linarith)).le
  l1_deriv2 := by
    rw [Taper.integral_abs_deriv2_phi hϱ (by linarith) (by linarith)]
    exact div_le_div_of_nonneg_right (Taper.two_mul_l1Deriv2_le_cRho hϱ) (by linarith)
  l1_deriv2_sq := Taper.integral_abs_deriv2_phi_sq_le hϱ hw (by linarith)

/-- **the flat taper of a valid parameter set is an admissible window** (eventually 8w ≤ L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55f571e40a0700960db0c211e4247c0ae9c16ac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
