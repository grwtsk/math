# residuePull2

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
      "line": 969,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7caccd61-c5e7-d8f2-2ac6-7d2b31008e27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6931aa42-0e04-d680-e633-c359681e8ea0",
  "kind": "lemma",
  "lexical_name": "residuePull2",
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
  "slug": "residuepull2--021bec980c28076accf0840e",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1004,
    "line": 969,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:021bec980c28076accf0840efe546dda52fe6960d3864115f2cf39b8bcaae9ab",
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

Occurrence: `result:6931aa42-0e04-d680-e633-c359681e8ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–1004.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma residuePull2 (x_gt_one : 1 < x) :
    VerticalIntegral' (fun s ↦ x ^ s / (s * (s + 1))) (-1 / 2)
    = -1 / x + VerticalIntegral' (fun s ↦ x ^ s / (s * (s + 1))) (-3 / 2) := by
  apply eq_add_of_sub_eq
  have xpos : 0 < x := zero_lt_one.trans x_gt_one
  have hf : HolomorphicOn (f x) (Icc (-3 / 2) (-1 / 2) ×ℂ univ \ {-1}) :=
    (isHolomorphicOn xpos).mono fun s ⟨⟨⟨_, _⟩, _⟩, hs1⟩ hc ↦ hc.casesOn
      (fun hc ↦ by linarith [show s.re = 0 from congrArg _ hc]) (fun hc ↦ hs1 hc)
  have := (residueAtNegOne xpos).and <| verticalIntegral_sub_verticalIntegral_eq_squareIntegral
    (by simpa using ⟨by linarith, by linarith⟩) hf
    (tendsto_zero_Lower xpos _ _) (tendsto_zero_Upper xpos _ _)
    (isIntegrable xpos (by norm_num) (by norm_num))
    (isIntegrable xpos (by norm_num) (by norm_num))
  obtain ⟨c, hcf, hc⟩ := this.exists_mem
  obtain ⟨ε, hε, hεc⟩ := Metric.mem_nhdsWithin_iff.mp hcf
  replace hε := hc (ε/2)
    (hεc ⟨mem_ball_iff_norm.mpr (by simp [abs_of_pos, hε]), half_pos hε⟩)
  rw [VerticalIntegral', ← smul_sub, hε.2, ← RectangleIntegral', neg_div, one_div,
    ← ofReal_inv]
  exact hε.1



@[blueprint
  "contourPull3"
  (title := "contourPull3")
  (statement := /--
  For $x>1$ and $\sigma<-3/2$, we have
  $$
  \frac1{2\pi i}
  \int_{(-3/2)}\frac{x^s}{s(s+1)}ds = \frac 1{2\pi i}
  \int_{(\sigma)}\frac{x^s}{s(s+1)}ds.
  $$
  -/)
  (proof := /-- Pull contour from $(-3/2)$ to $(\sigma)$. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
