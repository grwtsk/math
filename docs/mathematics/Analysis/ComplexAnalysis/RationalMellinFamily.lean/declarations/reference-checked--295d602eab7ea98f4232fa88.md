# reference_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5604ac1-4888-07ac-dcfd-7ab0ed304bdd",
  "kind": "theorem",
  "lexical_name": "reference_checked",
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
  "slug": "reference-checked--295d602eab7ea98f4232fa88",
  "source": {
    "blob": "ac85b66a4cc2134280684f95db7dd1f23f123577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 233,
    "path": "GRWTSK/Analysis/Complex/RationalMellinFamily.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:295d602eab7ea98f4232fa88e8b7dbfa549bd077b22416c041ee2518886309fc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalMellinFamily.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5604ac1-4888-07ac-dcfd-7ab0ed304bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_checked {family : List Member} {a b : ℚ}
    (ha : 1 < a) (hab : a ≤ b) (hk : (family.map Member.key).Nodup)
    (cells : ℕ → ℕ) (p : ℕ → ℕ → RationalMellinNode.Resolution)
    (hm : ∀ i < family.length, 0 < (memberAt family i).multiplicity)
    (hN : ∀ i < family.length, 0 < cells i)
    (hz : ∀ i < family.length, (memberAt family i).center.1 ≤ 1)
    (hl : ∀ i < family.length, ∀ j < cells i,
      RationalLogEnclosure.validScale (RationalMellinQuadrature.node a b (cells i) j)
        (p i j).logScale (p i j).logTwoCells (p i j).mantissaCells = true)
    (hg : ∀ i < family.length, ∀ j < cells i,
      (RationalMellinNode.exponentBound (memberAt family i).center
        (RationalMellinQuadrature.node a b (cells i) j) (p i j) /
        (2 ^ (p i j).expScale : ℕ)) / ((p i j).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check family a b (referenceTrace family a b cells p) = true := by
  apply withExactAccumulation_checked ha hab hk (by simp [referenceEvaluations])
  intro i hi
  have hi' := Finset.mem_range.mp hi
  rw [referenceEvaluationAt family a b cells p i hi']
  exact ⟨hm i hi', rfl,
    RationalMellinQuadrature.reference_checked ha hab (hN i hi') (hz i hi')
      (p i) (hl i hi') (hg i hi')⟩

/-- Coordinate uncertainty is an additional, derived included-family charge.
It is not tested by the rational center evaluator and supplies no omitted tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalMellinFamily.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalMellinFamily.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac85b66a4cc2134280684f95db7dd1f23f123577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
