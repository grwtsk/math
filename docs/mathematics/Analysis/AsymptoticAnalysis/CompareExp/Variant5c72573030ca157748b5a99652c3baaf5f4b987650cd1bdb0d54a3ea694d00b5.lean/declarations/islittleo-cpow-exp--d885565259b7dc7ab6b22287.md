# isLittleO_cpow_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "122b458ae1a11a0811df73d714b1180c3e49a1b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:655a5f52-360c-5d2e-ca65-0169e5efd585",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c85bcf8-df63-fb8d-f436-4f6aed80a297",
  "kind": "theorem",
  "lexical_name": "isLittleO_cpow_exp",
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
  "slug": "islittleo-cpow-exp--d885565259b7dc7ab6b22287",
  "source": {
    "blob": "122b458ae1a11a0811df73d714b1180c3e49a1b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d885565259b7dc7ab6b222875ba8cd75cc96e3a887ec90f74df6324ce346b7d3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c85bcf8-df63-fb8d-f436-4f6aed80a297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_cpow_exp (hl : IsExpCmpFilter l) (a : ℂ) {b : ℝ} (hb : 0 < b) :
    (fun z => z ^ a) =o[l] fun z => exp (b * z) :=
  -- Porting note: Added `show ℂ → ℝ from`
  calc
    (fun z => z ^ a) =Θ[l] (show ℂ → ℝ from fun z => (abs z ^ re a)) :=
      isTheta_cpow_const_rpow fun _ _ => hl.eventually_ne
    _ =ᶠ[l] fun z => Real.exp (re a * Real.log (abs z)) :=
      (hl.eventually_ne.mono fun z hz => by simp only [Real.rpow_def_of_pos, abs.pos hz, mul_comm])
    _ =o[l] fun z => exp (b * z) :=
      IsLittleO.of_norm_right <| by
        simp only [norm_eq_abs, abs_exp, ofReal_mul_re, Real.isLittleO_exp_comp_exp_comp]
        refine'
          (IsEquivalent.refl.sub_isLittleO _).symm.tendsto_atTop (hl.tendsto_re.const_mul_atTop hb)
        exact (hl.isLittleO_log_abs_re.const_mul_left _).const_mul_right hb.ne'
#align complex.is_exp_cmp_filter.is_o_cpow_exp Complex.IsExpCmpFilter.isLittleO_cpow_exp

/-- If `l : Filter ℂ` is an "exponential comparison filter", then for any complex `a₁`, `a₂` and any
real `b₁ < b₂`, we have `(fun z ↦ z ^ a₁ * exp (b₁ * z)) =o[l] (fun z ↦ z ^ a₂ * exp (b₂ * z))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122b458ae1a11a0811df73d714b1180c3e49a1b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
