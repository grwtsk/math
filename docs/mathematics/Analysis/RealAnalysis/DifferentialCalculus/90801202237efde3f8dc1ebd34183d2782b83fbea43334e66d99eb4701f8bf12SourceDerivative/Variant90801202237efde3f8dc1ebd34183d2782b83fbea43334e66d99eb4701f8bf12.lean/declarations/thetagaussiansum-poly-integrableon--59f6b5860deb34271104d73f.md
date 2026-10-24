# thetaGaussianSum_poly_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3946d6d-c3ec-5e1c-e232-02f758b7a1f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4e3b306-fd8f-c3aa-33dc-2e13888f0f37",
  "kind": "theorem",
  "lexical_name": "thetaGaussianSum_poly_integrableOn",
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
  "slug": "thetagaussiansum-poly-integrableon--59f6b5860deb34271104d73f",
  "source": {
    "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59f6b5860deb34271104d73f4493d4ba4cec04069604445870efcff5e613027a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e3b306-fd8f-c3aa-33dc-2e13888f0f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianSum_poly_integrableOn (k c p : ℕ) :
    IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Ici (0 : ℝ)) := by
  let T : ℝ := (c : ℝ) + 3
  have hTpos : 0 < T := by dsimp [T]; positivity
  have hcont : Continuous (fun t => thetaGaussianSum k c t * t ^ p) :=
    (continuous_thetaGaussianSum k c).mul (continuous_id.pow p)
  have hinitial : IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Icc 0 T) :=
    hcont.continuousOn.integrableOn_Icc
  have hmajor : IntegrableOn (fun t : ℝ =>
      (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) * Real.exp (-t)) (Ioi T) :=
    (integrableOn_exp_neg_Ioi T).const_mul _
  have htail : IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Ioi T) := by
    refine Integrable.mono' hmajor hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaGaussianSum_poly_norm_le_tail k c p (le_of_lt ht)
  apply (hinitial.union htail).mono_set
  intro t ht
  by_cases htT : t ≤ T
  · exact Or.inl ⟨ht, htT⟩
  · exact Or.inr (lt_of_not_ge htT)


/-- Exact first mode derivative as three polynomial Gaussian modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d322c9779e5e2552b1183bad2c6a9f6340c90e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
