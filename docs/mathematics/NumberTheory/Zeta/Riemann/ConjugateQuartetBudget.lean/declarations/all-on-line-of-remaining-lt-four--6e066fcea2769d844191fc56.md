# all_on_line_of_remaining_lt_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f2e0fd0-0fc6-8f70-913e-faf601ac53e4",
  "kind": "theorem",
  "lexical_name": "all_on_line_of_remaining_lt_four",
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
  "slug": "all-on-line-of-remaining-lt-four--6e066fcea2769d844191fc56",
  "source": {
    "blob": "d5ec9680b27aca7c73bde737c84bae21df795cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e066fcea2769d844191fc56ab4d7c84142df79dbc7eb3939260a6ac84712dcd",
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

Occurrence: `result:4f2e0fd0-0fc6-8f70-913e-faf601ac53e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_on_line_of_remaining_lt_four (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U)
    (small : remainingCount T U known < 4) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  have partition := remaining_add_known T U known subset
  exact all_on_line_of_known_quartet_budget T U known subset knownLine reflectStable
    conjugateStable (mass known multiplicity) (regionCount T U) le_rfl le_rfl (by omega)

/-- Both signs are already present in the OLD complete head. No new zero inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ec9680b27aca7c73bde737c84bae21df795cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
