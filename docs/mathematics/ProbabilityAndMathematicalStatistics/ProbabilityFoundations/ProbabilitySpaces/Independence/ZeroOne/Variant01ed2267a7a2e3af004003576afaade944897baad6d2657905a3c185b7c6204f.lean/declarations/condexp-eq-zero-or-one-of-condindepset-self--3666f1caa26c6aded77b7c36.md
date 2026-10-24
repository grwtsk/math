# condExp_eq_zero_or_one_of_condIndepSet_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0949a9e8-56e1-d8b1-30f1-ca856c4eb610",
  "kind": "theorem",
  "lexical_name": "condExp_eq_zero_or_one_of_condIndepSet_self",
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
  "slug": "condexp-eq-zero-or-one-of-condindepset-self--3666f1caa26c6aded77b7c36",
  "source": {
    "blob": "dd8a82532592e7e0240ac9dd4997280ff8d07fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3666f1caa26c6aded77b7c36ae7998b73c45e046e45f1f96ba2ef9548a402054",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0949a9e8-56e1-d8b1-30f1-ca856c4eb610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_eq_zero_or_one_of_condIndepSet_self
    [StandardBorelSpace Ω]
    (hm : m ≤ m0) [hμ : IsFiniteMeasure μ] {t : Set Ω} (ht : MeasurableSet t)
    (h_indep : CondIndepSet m hm t t μ) :
    ∀ᵐ ω ∂μ, (μ⟦t | m⟧) ω = 0 ∨ (μ⟦t | m⟧) ω = 1 := by
  -- TODO: Why is not inferred?
  have (a) : IsFiniteMeasure (condExpKernel μ m a) := inferInstance
  have h := ae_of_ae_trim hm (Kernel.measure_eq_zero_or_one_of_indepSet_self h_indep)
  filter_upwards [condExpKernel_ae_eq_condExp hm ht, h] with ω hω_eq hω
  rwa [← hω_eq, measureReal_eq_zero_iff, measureReal_def, ENNReal.toReal_eq_one_iff]

@[deprecated (since := "2025-01-21")]
alias condexp_eq_zero_or_one_of_condIndepSet_self := condExp_eq_zero_or_one_of_condIndepSet_self

open Filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8a82532592e7e0240ac9dd4997280ff8d07fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
