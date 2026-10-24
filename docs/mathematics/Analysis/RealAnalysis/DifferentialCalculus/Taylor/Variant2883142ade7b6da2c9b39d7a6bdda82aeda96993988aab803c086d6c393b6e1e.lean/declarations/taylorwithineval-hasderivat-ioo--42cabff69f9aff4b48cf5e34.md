# taylorWithinEval_hasDerivAt_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:820cfc69-2884-7cff-8209-85ff5ff0bda1",
  "kind": "theorem",
  "lexical_name": "taylorWithinEval_hasDerivAt_Ioo",
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
  "slug": "taylorwithineval-hasderivat-ioo--42cabff69f9aff4b48cf5e34",
  "source": {
    "blob": "89d1aaeaac5c145b051f05b0f9986d60868db26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42cabff69f9aff4b48cf5e34124129d884986f5f16e081adc8defd01bae67133",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:820cfc69-2884-7cff-8209-85ff5ff0bda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylorWithinEval_hasDerivAt_Ioo {f : ℝ → E} {a b t : ℝ} (x : ℝ) {n : ℕ} (hx : a < b)
    (ht : t ∈ Ioo a b) (hf : ContDiffOn ℝ n f (Icc a b))
    (hf' : DifferentiableOn ℝ (iteratedDerivWithin n f (Icc a b)) (Ioo a b)) :
    HasDerivAt (fun y => taylorWithinEval f n (Icc a b) y x)
      (((n ! : ℝ)⁻¹ * (x - t) ^ n) • iteratedDerivWithin (n + 1) f (Icc a b) t) t :=
  have h_nhds : Ioo a b ∈ 𝓝 t := isOpen_Ioo.mem_nhds ht
  have h_nhds' : Ioo a b ∈ 𝓝[Icc a b] t := nhdsWithin_le_nhds h_nhds
  (hasDerivWithinAt_taylorWithinEval (uniqueDiffWithinAt_Ioo ht) (uniqueDiffOn_Icc hx) h_nhds' ht
    Ioo_subset_Icc_self hf <| (hf' t ht).mono_of_mem h_nhds').hasDerivAt h_nhds
#align taylor_within_eval_has_deriv_at_Ioo taylorWithinEval_hasDerivAt_Ioo

/-- Calculate the derivative of the Taylor polynomial with respect to `x₀`.

Version for closed intervals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d1aaeaac5c145b051f05b0f9986d60868db26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
