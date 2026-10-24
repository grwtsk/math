# disclosedMangoldtRow_eq_actual_on_long

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b51ffc4-8fef-c9b2-9344-0150445d2bed",
  "kind": "theorem",
  "lexical_name": "disclosedMangoldtRow_eq_actual_on_long",
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
  "slug": "disclosedmangoldtrow-eq-actual-on-long--a4e12eb57442f9fc4e7108a1",
  "source": {
    "blob": "68dd122fced9fbf30cd68decec1003a875d7c3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4e12eb57442f9fc4e7108a1227d946397cb7119642d312c187cfc93bd77e72f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b51ffc4-8fef-c9b2-9344-0150445d2bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disclosedMangoldtRow_eq_actual_on_long (P : Finset ℕ) (U N n : ℕ)
    (hcover : ∀ r, r.Prime → r ≤ N → r ∈ P) (hn : n ∈ Finset.Ioc U N) :
    disclosedMangoldtRow P n = mangoldtCoefficient n := by
  classical
  by_cases hn1 : n = 1
  · subst n
    simp [disclosedMangoldtRow, mangoldtCoefficient]
  · have hn0 : 0 < n := Nat.zero_lt_of_lt (Finset.mem_Ioc.mp hn).1
    have hmem : n.minFac ∈ P := hcover n.minFac (Nat.minFac_prime hn1)
      ((Nat.minFac_le hn0).trans (Finset.mem_Ioc.mp hn).2)
    simp only [disclosedMangoldtRow, if_pos hmem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Variantb8133a691283648b0c54fcf7dd155b15dfc9bb59e1a997d5d0d86ce3f3b25995.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd122fced9fbf30cd68decec1003a875d7c3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
