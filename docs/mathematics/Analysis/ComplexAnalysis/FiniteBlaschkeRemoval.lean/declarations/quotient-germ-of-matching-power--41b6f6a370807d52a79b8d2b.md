# quotient_germ_of_matching_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2b7dcd-cf15-82ea-679b-84ab32b66166",
  "kind": "theorem",
  "lexical_name": "quotient_germ_of_matching_power",
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
  "slug": "quotient-germ-of-matching-power--41b6f6a370807d52a79b8d2b",
  "source": {
    "blob": "f2c4e83c3ba6f77c85034e3e7e570411827cccdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41b6f6a370807d52a79b8d2be00188e76228a4a4b741447e9d5c5c4fd75573cf",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2b7dcd-cf15-82ea-679b-84ab32b66166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_germ_of_matching_power (f P A d : ℂ → ℂ) (z : ℂ) (m : ℕ)
    (hA : AnalyticAt ℂ A z) (hA0 : A z ≠ 0)
    (hd : AnalyticAt ℂ d z) (hd0 : d z ≠ 0)
    (hf : f =ᶠ[𝓝 z] fun w => (w - z) ^ m * A w)
    (hP : ∀ w, P w = (w - z) ^ m * d w) :
    AnalyticAt ℂ (fun w => A w / d w) z ∧ A z / d z ≠ 0 ∧
      (fun w => f w / P w) =ᶠ[𝓝[≠] z] fun w => A w / d w := by
  refine ⟨hA.div hd hd0, div_ne_zero hA0 hd0, ?_⟩
  filter_upwards [hf.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with w hw hwz
  rw [hw, hP w]
  exact mul_div_mul_left (A w) (d w) (pow_ne_zero m (sub_ne_zero.mpr hwz))

/-- Construct one quotient across ALL selected roots, with exact closed-disk factorization.
The root germs must have the recorded exact order. Completeness is a separate input.
No log, quotient-extension, regular-value, or modulus-bound premise is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c4e83c3ba6f77c85034e3e7e570411827cccdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
