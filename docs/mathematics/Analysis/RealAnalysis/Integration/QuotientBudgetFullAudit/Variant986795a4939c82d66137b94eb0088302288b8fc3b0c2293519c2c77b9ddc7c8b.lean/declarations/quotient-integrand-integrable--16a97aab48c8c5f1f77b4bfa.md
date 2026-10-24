# quotient_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf04c9d295c90427b76ef18c5de93a5ce7bcbb18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b75dd00-7af4-d4a7-b1ba-e3b121e2b639",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01eaf425-719b-1e7c-38d8-2293f2a7810c",
  "kind": "theorem",
  "lexical_name": "quotient_integrand_integrable",
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
  "slug": "quotient-integrand-integrable--16a97aab48c8c5f1f77b4bfa",
  "source": {
    "blob": "bf04c9d295c90427b76ef18c5de93a5ce7bcbb18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a97aab48c8c5f1f77b4bfa95b5e2b810b95d121a15a6085eb4cd968540450c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01eaf425-719b-1e7c-38d8-2293f2a7810c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_integrand_integrable (X : ℕ) (w : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Ioc 1 (X : ℝ)) :=
  (reciprocal_prefix_power_integrable X w).mono_set Set.Ioc_subset_Icc_self

/-- Parameter continuity of the genuine prefix integral includes the canceled point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf04c9d295c90427b76ef18c5de93a5ce7bcbb18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
