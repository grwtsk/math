# integrableOn_exp_neg_smul_of_isBigO_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:305841cd-b49e-a54d-353f-a66651efaf64",
  "kind": "theorem",
  "lexical_name": "integrableOn_exp_neg_smul_of_isBigO_exp",
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
  "slug": "integrableon-exp-neg-smul-of-isbigo-exp--acf4e38290337113f99e2fe2",
  "source": {
    "blob": "654480d646c75d75ddd8211c97430d98c30a3323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variant9425438ce4a0cab98b0bfcd90a45a43dac0e5e5c6838860e4f219bb3fd9722ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf4e38290337113f99e2fe2b3af33f06959372a02c096ef6f782cc78a0df4f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExpDecay/Variant9425438ce4a0cab98b0bfcd90a45a43dac0e5e5c6838860e4f219bb3fd9722ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:305841cd-b49e-a54d-353f-a66651efaf64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_exp_neg_smul_of_isBigO_exp {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {a b c : ℝ} {f : ℝ → E} (hfc : LocallyIntegrableOn f (Ici c))
    (hf : f =O[atTop] fun x : ℝ => exp (a * x)) (hab : a < b) :
    IntegrableOn (fun x : ℝ => exp (-b * x) • f x) (Ici c) := by
  have hloc : LocallyIntegrableOn (fun x : ℝ => exp (-b * x) • f x) (Ici c) :=
    hfc.continuousOn_smul isClosed_Ici.isLocallyClosed (by fun_prop)
  exact hloc.integrableOn_of_isBigO_atTop (g := fun x : ℝ => exp ((a - b) * x))
    (((isBigO_refl _ atTop).smul hf).congr_right fun x => by
      simp only [smul_eq_mul, ← exp_add]; ring_nf)
    ⟨Ioi c, Ioi_mem_atTop c, by
      simpa [neg_sub] using exp_neg_integrableOn_Ioi c (sub_pos.mpr hab)⟩

/-- Real-valued specialization of `integrableOn_exp_neg_smul_of_isBigO_exp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExpDecay/Variant9425438ce4a0cab98b0bfcd90a45a43dac0e5e5c6838860e4f219bb3fd9722ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variant9425438ce4a0cab98b0bfcd90a45a43dac0e5e5c6838860e4f219bb3fd9722ad.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654480d646c75d75ddd8211c97430d98c30a3323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
