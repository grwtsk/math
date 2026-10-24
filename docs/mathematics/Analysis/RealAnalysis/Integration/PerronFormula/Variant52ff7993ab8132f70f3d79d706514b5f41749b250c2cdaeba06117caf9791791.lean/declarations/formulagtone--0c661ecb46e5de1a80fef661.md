# formulaGtOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1026,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7906e7c4-ecf1-334c-440e-991fa38c142b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf642319-c193-ce7c-56d3-63ae94db392a",
  "kind": "lemma",
  "lexical_name": "formulaGtOne",
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
  "slug": "formulagtone--0c661ecb46e5de1a80fef661",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1071,
    "line": 1026,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c661ecb46e5de1a80fef661cd2f4250f073079ef56461e7eb2b3db28dfd3ceb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf642319-c193-ce7c-56d3-63ae94db392a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1026–1071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma formulaGtOne (x_gt_one : 1 < x) (σ_pos : 0 < σ) :
    VerticalIntegral' (fun s ↦ x^s / (s * (s + 1))) σ = 1 - 1 / x := by
  /-- Let $f(s) = x^s/(s(s+1))$. Then $f$ is holomorphic on $\C \setminus {0,-1}$. -/
  set f : ℂ → ℂ := (fun s ↦ x^s / (s * (s + 1)))
  /-- First pull the contour from $(\sigma)$ to $(-1/2)$, picking up a residue $1$ at $s=0$. -/
  rw [residuePull1 x_gt_one σ_pos]
  /-- Next pull the contour from $(-1/2)$ to $(-3/2)$, picking up a residue $-1/x$ at
  $s=-1$. -/
  rw [residuePull2 x_gt_one]
  /-- Then pull the contour all the way to $(\sigma')$ with $\sigma'<-3/2$. -/
  have contourPull₃ (σ' σ'' : ℝ) (hσ' : σ' ≤ -3/2) (hσ'' : σ'' ≤ -3/2) :
      VerticalIntegral' f σ' = VerticalIntegral' f σ'' :=
    contourPull3 x_gt_one hσ' hσ''
  /-- For $\sigma' < -3/2$, the integral is bounded by
  $x^{\sigma'}\int_\R\frac{1}{|(1+t ^ 2)(2+t ^ 2)|^{1/2}}dt$. -/
  have VertIntBound : ∃ C, ∀ σ' < -3/2, ‖VerticalIntegral' f σ'‖ ≤ C * x ^ σ' :=
    vertIntBoundLeft (by linarith : 0 < x)
  /-- Therefore $\int_{(\sigma')}\to 0$ as $\sigma'\to\infty$. -/
  have AbsVertIntTendsto :
      Tendsto ((‖·‖ : ℂ → ℝ) ∘ (VerticalIntegral' f)) atBot (𝓝 0) := by
    obtain ⟨C, hC⟩ := VertIntBound
    have := tendsto_rpow_atTop_nhds_zero_of_norm_gt_one x_gt_one C
    apply tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds this
    · filter_upwards using fun _ ↦ norm_nonneg _
    · filter_upwards [eventually_lt_atBot (-3/2)]
      (conv at hC => intro σ hσ; rw [mul_comm]); exact fun _ ↦ hC _
  /-- So pulling contours gives $\int_{(-3/2)}=0$. -/
  rw [limitOfConstantLeft (σ := -3/2) (Eq.le rfl) contourPull₃ ?_]
  · ring
  · exact tendsto_zero_iff_norm_tendsto_zero.mpr AbsVertIntTendsto


blueprint_comment /--
The two together give the Perron formula. (Which doesn't need to be a separate lemma.)

For $x>0$ and $\sigma>0$, we have
$$
\frac1{2\pi i}
\int_{(\sigma)}\frac{x^s}{s(s+1)}ds = \begin{cases}
1-\frac1x & \text{ if }x>1\\
0 & \text{ if } x<1
\end{cases}.
$$
-/

end Perron
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L1026).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
