# all_on_line_of_positive_credit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6e4977a-b967-4bc2-3bfe-5c6364c90477",
  "kind": "theorem",
  "lexical_name": "all_on_line_of_positive_credit",
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
  "slug": "all-on-line-of-positive-credit--e1d238bfa6cfdc84bd8015a1",
  "source": {
    "blob": "fa7ef00f6b9dcf23aa8d09f6817f9ed03816e919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1d238bfa6cfdc84bd8015a170ec2174bfbaec943823e9518b3f1a0258cc35a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6e4977a-b967-4bc2-3bfe-5c6364c90477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_on_line_of_positive_credit (T : ℝ) (known : Finset ZeroPoint)
    (credit upper : ℕ)
    (knownSubset : known ⊆ positiveHeightHead T)
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : positiveHeightCount T ≤ upper)
    (strict : upper < credit + 2) :
    ∀ z ∈ positiveHeightHead T, z.1.re = 1 / 2 := by
  classical
  intro z member
  by_contra offLine
  have missing := off_line_pair_missing_positive known z knownOnLine offLine
  have reflectedMember := reflected_mem_positiveHeightHead T z member
  have leftLower : 1 ≤ multiplicity z := multiplicity_pos z
  have rightLower : 1 ≤ multiplicity (reflected z) := multiplicity_pos (reflected z)
  change mass (positiveHeightHead T) multiplicity ≤ upper at countUpper
  exact no_room_for_unrecorded_pair (positiveHeightHead T) known multiplicity knownSubset
    z (reflected z) member reflectedMember missing.1 missing.2
    (distinct_of_off_line z offLine) credit 1 1 upper
    creditLower leftLower rightLower countUpper (by omega)

/-- The sourced Mellin argument already discharges the height-zero base case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCountDeficit.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7ef00f6b9dcf23aa8d09f6817f9ed03816e919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
