# integrableOn_exp_neg_smul_of_isBigO_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1ff70c5f7779cee1d501cc6a2cf4d2be66c2eeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5381291-fe19-197d-908a-ce2c186907cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74b16981-97be-6612-bc27-3ca7ed3363da",
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
  "slug": "integrableon-exp-neg-smul-of-isbigo-exp--ad9e77f671fc4320b881803e",
  "source": {
    "blob": "b1ff70c5f7779cee1d501cc6a2cf4d2be66c2eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variantb6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad9e77f671fc4320b881803edbf67041e0c97041559485240a44a96ef94b6ded",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExpDecay/Variantb6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74b16981-97be-6612-bc27-3ca7ed3363da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExpDecay/Variantb6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExpDecay/Variantb6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ff70c5f7779cee1d501cc6a2cf4d2be66c2eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
