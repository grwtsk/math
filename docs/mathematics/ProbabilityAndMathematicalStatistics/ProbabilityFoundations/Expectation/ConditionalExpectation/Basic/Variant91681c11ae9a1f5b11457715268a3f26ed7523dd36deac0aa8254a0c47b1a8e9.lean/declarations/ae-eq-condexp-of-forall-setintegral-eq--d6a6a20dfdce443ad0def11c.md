# ae_eq_condExp_of_forall_setIntegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:338ecbe5-534d-4c76-c97b-30b212836cbc",
  "kind": "theorem",
  "lexical_name": "ae_eq_condExp_of_forall_setIntegral_eq",
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
  "slug": "ae-eq-condexp-of-forall-setintegral-eq--d6a6a20dfdce443ad0def11c",
  "source": {
    "blob": "2e0dba011dacd639f000caf31a3683da6da1c30e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 262,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6a6a20dfdce443ad0def11cbfa857f568c534306d5170137ba55c3b2ddbcdb5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:338ecbe5-534d-4c76-c97b-30b212836cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_condExp_of_forall_setIntegral_eq (hm : m ≤ m₀) [SigmaFinite (μ.trim hm)]
    {f g : α → E} (hf : Integrable f μ)
    (hg_int_finite : ∀ s, MeasurableSet[m] s → μ s < ∞ → IntegrableOn g s μ)
    (hg_eq : ∀ s : Set α, MeasurableSet[m] s → μ s < ∞ → ∫ x in s, g x ∂μ = ∫ x in s, f x ∂μ)
    (hgm : AEStronglyMeasurable[m] g μ) : g =ᵐ[μ] μ[f | m] := by
  refine ae_eq_of_forall_setIntegral_eq_of_sigmaFinite' hm hg_int_finite
    (fun s _ _ => integrable_condExp.integrableOn) (fun s hs hμs => ?_) hgm
    (StronglyMeasurable.aestronglyMeasurable stronglyMeasurable_condExp)
  rw [hg_eq s hs hμs, setIntegral_condExp hm hf hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e0dba011dacd639f000caf31a3683da6da1c30e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
