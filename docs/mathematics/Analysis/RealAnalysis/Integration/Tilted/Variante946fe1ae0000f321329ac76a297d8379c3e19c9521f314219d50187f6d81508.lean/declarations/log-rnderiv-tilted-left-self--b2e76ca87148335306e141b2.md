# log_rnDeriv_tilted_left_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9de39471-4d7a-3fb8-301a-cdfc01f7d351",
  "kind": "lemma",
  "lexical_name": "log_rnDeriv_tilted_left_self",
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
  "slug": "log-rnderiv-tilted-left-self--b2e76ca87148335306e141b2",
  "source": {
    "blob": "204629feb7439c95a384b217e77a057cf8158cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 373,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2e76ca87148335306e141b2429112eef0824f4113cdfc6a9ffb06def36fe531",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de39471-4d7a-3fb8-301a-cdfc01f7d351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_rnDeriv_tilted_left_self [SigmaFinite μ] (hf : Integrable (fun x ↦ exp (f x)) μ) :
    (fun x ↦ log ((μ.tilted f).rnDeriv μ x).toReal)
      =ᵐ[μ] fun x ↦ f x - log (∫ x, exp (f x) ∂μ) := by
  cases eq_zero_or_neZero μ with
  | inl h => simp_rw [h, ae_zero, Filter.EventuallyEq]; exact Filter.eventually_bot
  | inr h0 =>
    have hf' : AEMeasurable f μ := aemeasurable_of_aemeasurable_exp hf.1.aemeasurable
    filter_upwards [rnDeriv_tilted_left_self hf'] with x hx
    rw [hx, ENNReal.toReal_ofReal (by positivity), log_div (exp_pos _).ne', log_exp]
    exact (integral_exp_pos hf).ne'

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204629feb7439c95a384b217e77a057cf8158cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
