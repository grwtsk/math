# signedHeat_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17c22e8e-feac-184d-b4c2-3d8a7345e248",
  "kind": "theorem",
  "lexical_name": "signedHeat_hasDerivAt",
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
  "slug": "signedheat-hasderivat--2267e05be10d519d96035884",
  "source": {
    "blob": "bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2267e05be10d519d9603588481f3d36ec12ad3ecc5f6c46c19d0ce6244014ef4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c22e8e-feac-184d-b4c2-3d8a7345e248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeat_hasDerivAt (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (t : ℝ) :
    HasDerivAt (signedHeat μ k) (-cubicHeat μ k t) t := by
  let b : ℝ := M ^ 3 * Real.exp ((|t| + 1) * M ^ 2)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := μ) (F := fun u x => k x * Real.exp (-u * k x ^ 2))
    (F' := fun u x => -(k x ^ 3 * Real.exp (-u * k x ^ 2)))
    (bound := fun _ => b) (Ioo_mem_nhds (by linarith : t - 1 < t) (by linarith : t < t + 1))
    (Eventually.of_forall (fun _ => by fun_prop))
    (signedHeat_integrable hk hM hb t) (by fun_prop)
    (ae_of_all _ (fun x u hu => by
      simpa only [norm_neg] using heatPower_bound 3 (k x) u M (|t| + 1) hM
        (hb x) (abs_time_local t u hu)))
    (integrable_const b) (ae_of_all _ (fun x u _ => by
      have hd := (((hasDerivAt_id u).neg.mul_const (k x ^ 2)).exp).const_mul (k x)
      simp only [Pi.neg_apply, id_eq] at hd
      convert! hd using 1
      ring))
  simpa only [signedHeat, cubicHeat, integral_neg] using! h.2

/-- Cubic heat is continuous on every finite nonnegative heat interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
