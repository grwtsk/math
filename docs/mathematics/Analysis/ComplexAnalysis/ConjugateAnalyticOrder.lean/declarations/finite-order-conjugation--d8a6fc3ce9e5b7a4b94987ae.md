# finite_order_conjugation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e921360b-d720-7aa7-8d0a-55969ad11677",
  "kind": "theorem",
  "lexical_name": "finite_order_conjugation",
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
  "slug": "finite-order-conjugation--d8a6fc3ce9e5b7a4b94987ae",
  "source": {
    "blob": "023d2834d08a3d9ee6e8bd68b3f75c75332dfec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/Analysis/Complex/ConjugateAnalyticOrder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8a6fc3ce9e5b7a4b94987ae2b46cd2cf8ab9f5f2cfff1ccb93252480cd4b7bb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e921360b-d720-7aa7-8d0a-55969ad11677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_order_conjugation {f : ℂ → ℂ} {z : ℂ} {n : ℕ}
    (hf : ∀ w, f (star w) = star (f w))
    (hz : AnalyticAt ℂ f z) (hc : AnalyticAt ℂ f (star z))
    (ho : analyticOrderAt f z = (n : ℕ∞)) :
    analyticOrderAt f (star z) = (n : ℕ∞) := by
  obtain ⟨hvan, hnon⟩ := (analyticOrderAt_eq_nat_iff_iteratedDeriv_eq_zero hz).mp ho
  apply (analyticOrderAt_eq_nat_iff_iteratedDeriv_eq_zero hc).mpr
  constructor
  · intro k hk
    rw [iteratedDeriv_conjugation hf k z, hvan k hk, star_zero]
  · rw [iteratedDeriv_conjugation hf n z]
    intro h
    apply hnon
    have hh := congrArg (fun v : ℂ => star v) h
    simpa only [star_star, star_zero] using hh

end GRWTSK.Analysis.Complex.ConjugateAnalyticOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ConjugateAnalyticOrder.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023d2834d08a3d9ee6e8bd68b3f75c75332dfec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
