# tendsto_rpow_div_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee6cbc4969b3160be45b205b710dee3aa722b452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e1f0628-3e8f-2c32-8d4e-8847e396af19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07ffcee3-80f3-b5fe-a29a-8162d59dd268",
  "kind": "theorem",
  "lexical_name": "tendsto_rpow_div_mul_add",
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
  "slug": "tendsto-rpow-div-mul-add--aac2c101257c2f26ef20e0b8",
  "source": {
    "blob": "ee6cbc4969b3160be45b205b710dee3aa722b452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac2c101257c2f26ef20e0b8db933e9c033f66e405cc856ada16cf3208bbd110",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07ffcee3-80f3-b5fe-a29a-8162d59dd268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_rpow_div_mul_add (a b c : ℝ) (hb : 0 ≠ b) :
    Tendsto (fun x => x ^ (a / (b * x + c))) atTop (𝓝 1) := by
  refine'
    Tendsto.congr' _
      ((tendsto_exp_nhds_0_nhds_1.comp
            (by
              simpa only [mul_zero, pow_one] using
                (@tendsto_const_nhds _ _ _ a _).mul
                  (tendsto_div_pow_mul_exp_add_atTop b c 1 hb))).comp
        tendsto_log_atTop)
  apply eventuallyEq_of_mem (Ioi_mem_atTop (0 : ℝ))
  intro x hx
  simp only [Set.mem_Ioi, Function.comp_apply] at hx ⊢
  rw [exp_log hx, ← exp_log (rpow_pos_of_pos hx (a / (b * x + c))), log_rpow hx (a / (b * x + c))]
  field_simp
#align tendsto_rpow_div_mul_add tendsto_rpow_div_mul_add

/-- The function `x ^ (1 / x)` tends to `1` at `+∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6cbc4969b3160be45b205b710dee3aa722b452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
