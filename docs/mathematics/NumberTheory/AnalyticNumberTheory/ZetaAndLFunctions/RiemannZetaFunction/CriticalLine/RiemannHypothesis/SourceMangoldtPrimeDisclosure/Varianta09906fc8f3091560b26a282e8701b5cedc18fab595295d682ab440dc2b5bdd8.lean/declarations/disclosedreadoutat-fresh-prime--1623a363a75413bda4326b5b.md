# disclosedReadoutAt_fresh_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4aa0fbb-c575-0e27-d2cc-013da7b50264",
  "kind": "theorem",
  "lexical_name": "disclosedReadoutAt_fresh_prime",
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
  "slug": "disclosedreadoutat-fresh-prime--1623a363a75413bda4326b5b",
  "source": {
    "blob": "f1380432d8b3683c10ff919a1c66c57337b45188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1623a363a75413bda4326b5b757f4704ece13d8a71558ff12f3c0159d678d849",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4aa0fbb-c575-0e27-d2cc-013da7b50264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disclosedReadoutAt_fresh_prime (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P) :
    disclosedReadoutAt A hA U N (insert p P) - disclosedReadoutAt A hA U N P =
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (disclosedMangoldtRow P) (freshBetaRow P U p) 0 +
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 +
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (freshBetaRow P U p) 0 := by
  unfold disclosedReadoutAt
  rw [disclosedMangoldtRow_insert P p hpP, disclosedBetaRow_insert P U p hP hp hpP]
  exact compensatedReadout_two_row_increment _ _ _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1380432d8b3683c10ff919a1c66c57337b45188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
