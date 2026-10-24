# all_on_line_of_known_quartet_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c8d9390-9fd8-4ea7-2f80-dd14d9915fe9",
  "kind": "theorem",
  "lexical_name": "all_on_line_of_known_quartet_budget",
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
  "slug": "all-on-line-of-known-quartet-budget--9c39b6175a681ea7276d5bf6",
  "source": {
    "blob": "d5ec9680b27aca7c73bde737c84bae21df795cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c39b6175a681ea7276d5bf63e5250639b20b6508b47c9f77ad683f1fd5b1c4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c8d9390-9fd8-4ea7-2f80-dd14d9915fe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_on_line_of_known_quartet_budget (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : regionCount T U ≤ upper) (strict : upper < knownLower + 4) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  intro z hz
  exact critical_line_of_known_quartet_budget T U known subset knownLine reflectStable
    conjugateStable z hz 1 knownLower upper (multiplicity_pos z) knownBound countBound
    (by simpa using strict)

/-- Remaining multiplicity below four classifies all points; it does NOT enumerate them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ec9680b27aca7c73bde737c84bae21df795cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
