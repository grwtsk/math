# disclosureSource_eq_actual_centeredForwardAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2277586-b58c-793a-7e19-50a9c4c5a2aa",
  "kind": "theorem",
  "lexical_name": "disclosureSource_eq_actual_centeredForwardAt",
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
  "slug": "disclosuresource-eq-actual-centeredforwardat--aac698510afabf59b5b691d8",
  "source": {
    "blob": "3a05bf769bf8cce6683bb19dd0fe92aef9caea4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variantd29e503416e62ffc4a2d08b54514d310adc19903f8335705eb82d60e825df26c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac698510afabf59b5b691d8a126beceea84491f93dcab0a84439520434af79b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variantd29e503416e62ffc4a2d08b54514d310adc19903f8335705eb82d60e825df26c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2277586-b58c-793a-7e19-50a9c4c5a2aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disclosureSource_eq_actual_centeredForwardAt (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ U → r ∈ P) (hU : 1 ≤ U) :
    disclosureSource (originalSourceL2 A hA) (Finset.Ioc U N) (primeDivisors P U) =
      centeredForwardAt A hA U N := by
  classical
  rw [centeredForwardAt_eq_finiteProfile]
  unfold disclosureSource finiteProfile
  apply Finset.sum_congr rfl
  intro n hn
  dsimp only
  rw [centeredDisclosure_eq_actual_centeredBeta P U n hP hcover hU
    (Finset.mem_Ioc.mp hn).1]
  rfl

/-- Completing the fresh-prime coverage decomposes the actual unchanged centered source row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variantd29e503416e62ffc4a2d08b54514d310adc19903f8335705eb82d60e825df26c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeDisclosureActual/Variantd29e503416e62ffc4a2d08b54514d310adc19903f8335705eb82d60e825df26c.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a05bf769bf8cce6683bb19dd0fe92aef9caea4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
