# forwardQuantized_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:322982e0-077e-c53e-42d3-08cdd71238ea",
  "kind": "theorem",
  "lexical_name": "forwardQuantized_nonempty",
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
  "slug": "forwardquantized-nonempty--03dbaff7e4b039c0468b49f8",
  "source": {
    "blob": "32e26b477374ac1cecdd7a4f21f810042983d1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 601,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03dbaff7e4b039c0468b49f8f1c9f5d12b8fe3d91c38e2bf45443c2e246f302c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322982e0-077e-c53e-42d3-08cdd71238ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardQuantized_nonempty
    (l_quant : QuantizedLayer)
    (input : AlignedInput)
    (x : List ℝ)
    -- Dimension hypotheses
    (_h_input_dim : x.length = l_quant.inDim)
    (h_lo_dim : input.lo.size = l_quant.inDim)
    (h_hi_dim : input.hi.size = l_quant.inDim)
    (h_wpos_dim : l_quant.weightsPos.size = l_quant.outDim)
    (h_wneg_dim : l_quant.weightsNeg.size = l_quant.outDim)
    (h_bias_dim : l_quant.bias.size = l_quant.outDim)
    (h_wpos_cols : ∀ r (hr : r < l_quant.outDim), l_quant.weightsPos[r].size = l_quant.inDim)
    (h_wneg_cols : ∀ r (hr : r < l_quant.outDim), l_quant.weightsNeg[r].size = l_quant.inDim)
    -- Positivity invariant
    (h_pos_nonneg : ∀ r c, r < l_quant.outDim → c < l_quant.inDim →
        0 ≤ (l_quant.weightsPos[r]!)[c]!)
    (h_neg_nonneg : ∀ r c, r < l_quant.outDim → c < l_quant.inDim →
        0 ≤ (l_quant.weightsNeg[r]!)[c]!)
    -- Input containment
    (h_aligned : input.exp = l_quant.commonExp)
    (hx_lo : ∀ k, k < l_quant.inDim → intVal input.lo[k]! input.exp ≤ x[k]!)
    (hx_hi : ∀ k, k < l_quant.inDim → x[k]! ≤ intVal input.hi[k]! input.exp) :
    -- Conclusion: Output interval is non-empty
    ∀ i (_hi : i < l_quant.outDim),
      intVal (l_quant.forwardQuantized input).lo[i]! (l_quant.forwardQuantized input).exp ≤
      intVal (l_quant.forwardQuantized input).hi[i]! (l_quant.forwardQuantized input).exp := by
  intro i hi
  -- Derive input bounds validity from the containment of x
  have h_bounds_valid : ∀ k, k < l_quant.inDim → input.lo[k]! ≤ input.hi[k]! := by
    intro k hk
    have hlo := hx_lo k hk
    have hhi := hx_hi k hk
    by_contra! h_neg
    have h_strict := intVal_strictMono h_neg input.exp
    linarith
  have h_lo_le_hi := forwardQuantized_sound l_quant input h_lo_dim h_hi_dim h_wpos_dim h_wneg_dim
    h_bias_dim h_wpos_cols h_wneg_cols h_pos_nonneg h_neg_nonneg h_bounds_valid h_aligned i hi
  exact intVal_mono h_lo_le_hi _

end QuantizedLayer

/-! ### Full Network with Quantized Layers -/

/-- A neural network with all layers quantized for fast verification -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e26b477374ac1cecdd7a4f21f810042983d1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
