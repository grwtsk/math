# all_on_line_of_region_credit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd7ddca7-31f6-b82d-6b26-c2dc96e8ee70",
  "kind": "theorem",
  "lexical_name": "all_on_line_of_region_credit",
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
  "slug": "all-on-line-of-region-credit--7b74fb0eea9f1c24b0e58c82",
  "source": {
    "blob": "0935c7c7a7fc5102dc5ed713b2e9103fa401b380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b74fb0eea9f1c24b0e58c829b35d016c5f30b49f1bc369f351c0c4394ebf0e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd7ddca7-31f6-b82d-6b26-c2dc96e8ee70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_on_line_of_region_credit (T : ℝ) (region : Set ℂ)
    (known : Finset ZeroPoint) (credit upper : ℕ)
    (knownSubset : known ⊆ regionHead T region)
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ region, criticalReflection s ∈ region)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : regionCount T region ≤ upper) (strict : upper < credit + 2) :
    ∀ z ∈ regionHead T region, z.1.re = 1 / 2 := by
  classical
  intro z member
  by_contra offLine
  have missing := off_line_pair_missing known z knownOnLine offLine
  have reflectedMember := reflected_mem_regionHead T region z member stable
  have leftLower : 1 ≤ multiplicity z := multiplicity_pos z
  have rightLower : 1 ≤ multiplicity (reflected z) := multiplicity_pos (reflected z)
  exact no_room_for_unrecorded_pair (regionHead T region) known multiplicity knownSubset
    z (reflected z) member reflectedMember missing.1 missing.2 (distinct_of_off_line z offLine)
    credit 1 1 upper creditLower leftLower rightLower countUpper (by omega)

/-- The complete height count retains both signs and all horizontal coordinates.
Known points must satisfy the SAME closed absolute-height cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0935c7c7a7fc5102dc5ed713b2e9103fa401b380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
