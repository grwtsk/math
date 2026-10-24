# eq_Gamma_of_log_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aadd75a5-5b51-8527-b2d8-94fb75024bb9",
  "kind": "theorem",
  "lexical_name": "eq_Gamma_of_log_convex",
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
  "slug": "eq-gamma-of-log-convex--536796a4dad6332eb8120ce4",
  "source": {
    "blob": "94400ea0c85b30a04ce15d85786d3cf2523cd725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 311,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:536796a4dad6332eb8120ce403cb73406c63368468030e2dafd8bbf57aa0f60b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aadd75a5-5b51-8527-b2d8-94fb75024bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_Gamma_of_log_convex {f : ℝ → ℝ} (hf_conv : ConvexOn ℝ (Ioi 0) (log ∘ f))
    (hf_feq : ∀ {y : ℝ}, 0 < y → f (y + 1) = y * f y) (hf_pos : ∀ {y : ℝ}, 0 < y → 0 < f y)
    (hf_one : f 1 = 1) : EqOn f Gamma (Ioi (0 : ℝ)) := by
  suffices EqOn (log ∘ f) (log ∘ Gamma) (Ioi (0 : ℝ)) from
    fun x hx ↦ log_injOn_pos (hf_pos hx) (Gamma_pos_of_pos hx) (this hx)
  intro x hx
  have e1 := BohrMollerup.tendsto_logGammaSeq hf_conv ?_ hx
  · rw [Function.comp_apply (f := log) (g := f) (x := 1), hf_one, log_one, sub_zero] at e1
    exact tendsto_nhds_unique e1 (BohrMollerup.tendsto_log_gamma hx)
  · intro y hy
    rw [Function.comp_apply, Function.comp_apply, hf_feq hy, log_mul hy.ne' (hf_pos hy).ne']
    ring

end BohrMollerup

-- (section)
section StrictMono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94400ea0c85b30a04ce15d85786d3cf2523cd725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
