# natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d56a0adc041f2c821eff2f859dd07c9a231558ea7d6bd7e97ae51877c7f1fc6b",
  "kind": "def",
  "lexical_name": "natural",
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
  "slug": "natural--2ef5844d1f661ecd63b455c5",
  "source": {
    "blob": "d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 268,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ef5844d1f661ecd63b455c5e2976cbdb9fd14247485fc0d186a32c26b8a13a2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d56a0adc041f2c821eff2f859dd07c9a231558ea7d6bd7e97ae51877c7f1fc6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natural (u : ι → Ω → β) (hum : ∀ i, StronglyMeasurable (u i)) : Filtration ι m where
  seq i := ⨆ j ≤ i, MeasurableSpace.comap (u j) mβ
  mono' i j hij := biSup_mono fun k => ge_trans hij
  le' i := by
    refine' iSup₂_le _
    rintro j _ s ⟨t, ht, rfl⟩
    exact (hum j).measurable ht
#align measure_theory.filtration.natural MeasureTheory.Filtration.natural

section

open MeasurableSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
