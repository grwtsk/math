# rankOne_square_insert_two_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29dcd3ae-0a6a-466b-18a3-3b8f137c6b5b",
  "kind": "theorem",
  "lexical_name": "rankOne_square_insert_two_coprime",
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
  "slug": "rankone-square-insert-two-coprime--b5516a3ac0d96958fec6c1d7",
  "source": {
    "blob": "bf2e33e73816d6c7d3ee1060c0d91043b5f23660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5516a3ac0d96958fec6c1d70688d5b69af2c970924ae43c69f3553a66208f66",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29dcd3ae-0a6a-466b-18a3-3b8f137c6b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankOne_square_insert_two_coprime (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ sourceRankOneCoefficient A / (q : ℝ)) =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (sourceRankOneCoefficient A / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) := by
  rw [rankOne_square_insert_two A P g T hP h2P, if_pos hg, one_mul]
  exact rectangular_difference_eq_boundary P g T _

/-- Even common scales have no new signed placement and keep their entire old contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf2e33e73816d6c7d3ee1060c0d91043b5f23660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
