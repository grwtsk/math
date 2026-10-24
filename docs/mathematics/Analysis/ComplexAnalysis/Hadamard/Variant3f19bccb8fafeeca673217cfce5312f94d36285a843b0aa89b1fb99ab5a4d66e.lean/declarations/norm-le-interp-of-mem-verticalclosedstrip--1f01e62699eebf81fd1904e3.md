# norm_le_interp_of_mem_verticalClosedStrip'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fb72c59-919c-a4f9-6181-f051edf73177",
  "kind": "lemma",
  "lexical_name": "norm_le_interp_of_mem_verticalClosedStrip'",
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
  "slug": "norm-le-interp-of-mem-verticalclosedstrip--1f01e62699eebf81fd1904e3",
  "source": {
    "blob": "374ba20fd7fa61465130ea23d60d0cfbf2b56112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 644,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f01e62699eebf81fd1904e39b7d33c13d0b67741bad5b721e730b3f630b925e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb72c59-919c-a4f9-6181-f051edf73177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_interp_of_mem_verticalClosedStrip' {f : ℂ → E} {z : ℂ} {a b l u : ℝ}
    (hul : l < u) (hz : z ∈ verticalClosedStrip l u) (hd : DiffContOnCl ℂ f (verticalStrip l u))
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip l u))
    (ha : ∀ z ∈ re ⁻¹' {l}, ‖f z‖ ≤ a) (hb : ∀ z ∈ re ⁻¹' {u}, ‖f z‖ ≤ b) :
    ‖f z‖ ≤ a ^ (1 - (z.re - l) / (u - l)) * b ^ ((z.re - l) / (u - l)) := by
  have hgoal := norm_le_interp_of_mem_verticalClosedStrip₀₁' (scale f l u)
    (mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip hul hz) (scale_diffContOnCl hul hd)
    (scale_bddAbove hul hB) (scale_bound_left ha) (scale_bound_right hb)
  simp only [scale, smul_eq_mul, sub_re] at hgoal
  rw [fun_arg_eq hul, bound_exp_eq hul] at hgoal
  exact hgoal

end HadamardThreeLines
end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374ba20fd7fa61465130ea23d60d0cfbf2b56112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
