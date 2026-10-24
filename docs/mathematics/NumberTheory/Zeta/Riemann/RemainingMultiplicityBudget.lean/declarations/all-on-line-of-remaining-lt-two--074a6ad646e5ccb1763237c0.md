# all_on_line_of_remaining_lt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4a20015-fa67-60e4-d3e6-4aacdb971a88",
  "kind": "theorem",
  "lexical_name": "all_on_line_of_remaining_lt_two",
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
  "slug": "all-on-line-of-remaining-lt-two--074a6ad646e5ccb1763237c0",
  "source": {
    "blob": "91d2756444801a53d388a63014cc4ac2f4a12ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:074a6ad646e5ccb1763237c0ce82f8ded2c34e0c09b08643de72186994420663",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4a20015-fa67-60e4-d3e6-4aacdb971a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_on_line_of_remaining_lt_two (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U) (small : remainingCount T U known < 2) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  have partition := remaining_add_known T U known subset
  exact all_on_line_of_known_budget T U known subset knownLine stable
    (mass known multiplicity) (regionCount T U) le_rfl le_rfl (by omega)

/-- Zero remaining mass really does exhaust the canonical region, using positive
actual analytic multiplicities. Line status is not needed for this separate result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d2756444801a53d388a63014cc4ac2f4a12ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
