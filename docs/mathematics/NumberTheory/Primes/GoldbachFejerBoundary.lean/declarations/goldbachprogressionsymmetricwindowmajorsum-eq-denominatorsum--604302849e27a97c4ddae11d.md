# goldbachProgressionSymmetricWindowMajorSum_eq_denominatorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27232254-0991-1076-e3be-cef77ea5016a",
  "kind": "theorem",
  "lexical_name": "goldbachProgressionSymmetricWindowMajorSum_eq_denominatorSum",
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
  "slug": "goldbachprogressionsymmetricwindowmajorsum-eq-denominatorsum--604302849e27a97c4ddae11d",
  "source": {
    "blob": "7265b7603e55cda94078bfe8bb5b40298c75fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604302849e27a97c4ddae11d6fff59ea62c9855ebfca0b22900de7bafe078c21",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27232254-0991-1076-e3be-cef77ea5016a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProgressionSymmetricWindowMajorSum_eq_denominatorSum
    (Q N : ℕ) :
    goldbachProgressionSymmetricWindowMajorSum Q N =
      ∑ q ∈ goldbachDenominatorRange Q,
        goldbachFejerDenominatorBlock Q N q := by
  unfold goldbachProgressionSymmetricWindowMajorSum
    goldbachFejerDenominatorBlock
  calc
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSymmetricRealSingularIntegral Q N aq.2) =
      ∑ q ∈ goldbachDenominatorRange Q,
        ∑ aq ∈ goldbachRationalArcIndices Q with aq.2 = q,
          goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
            goldbachSymmetricRealSingularIntegral Q N aq.2 := by
              symm
              exact Finset.sum_fiberwise_of_maps_to
                (s := goldbachRationalArcIndices Q) (t := goldbachDenominatorRange Q)
                (g := fun aq : ℕ × ℕ => aq.2)
                (fun aq haq => by
                  exact mem_goldbachDenominatorRange.mpr
                    ⟨(mem_goldbachRationalArcIndices.mp haq).2.2.1,
                      (mem_goldbachRationalArcIndices.mp haq).2.1⟩)
                (fun aq =>
                  goldbachProgressionArithmeticCoefficient
                      N aq.1 aq.2 *
                    goldbachSymmetricRealSingularIntegral
                      Q N aq.2)
    _ =
      ∑ q ∈ goldbachDenominatorRange Q,
        (∑ a ∈ goldbachCoprimeResidues q,
          goldbachProgressionArithmeticCoefficient N a q) *
            goldbachSymmetricRealSingularIntegral Q N q := by
              apply Finset.sum_congr rfl
              intro q hq
              rw [Finset.sum_mul]
              apply Finset.sum_bij (fun aq _haq => aq.1)
              · intro aq haq
                rw [← goldbachRationalArcIndices_denominator_fiber hq]
                exact Finset.mem_image.mpr ⟨aq, haq, rfl⟩
              · intro aq₁ h₁ aq₂ h₂ heq
                apply Prod.ext heq
                exact (Finset.mem_filter.mp h₁).2.trans (Finset.mem_filter.mp h₂).2.symm
              · intro a ha
                rw [← goldbachRationalArcIndices_denominator_fiber hq] at ha
                rcases Finset.mem_image.mp ha with ⟨aq, haq, rfl⟩
                exact ⟨aq, haq, rfl⟩
              · intro aq haq
                rw [(Finset.mem_filter.mp haq).2]
    _ =
      ∑ q ∈ goldbachDenominatorRange Q,
        goldbachProgressionDenominatorCoefficient q N *
          goldbachSymmetricRealSingularIntegral Q N q := by
            rfl

/-- The real part of a denominator block is the real coefficient times the
real singular-window value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7265b7603e55cda94078bfe8bb5b40298c75fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
