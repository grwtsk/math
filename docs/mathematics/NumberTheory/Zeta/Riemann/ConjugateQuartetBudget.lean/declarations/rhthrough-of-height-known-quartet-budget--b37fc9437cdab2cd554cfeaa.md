# rhThrough_of_height_known_quartet_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7ef72f9-d6ec-3d23-948f-2f03cc184a8f",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_height_known_quartet_budget",
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
  "slug": "rhthrough-of-height-known-quartet-budget--b37fc9437cdab2cd554cfeaa",
  "source": {
    "blob": "d5ec9680b27aca7c73bde737c84bae21df795cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 173,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37fc9437cdab2cd554cfeaaa34436933632d7bf880ed67b28e46f478c13177b",
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

Occurrence: `result:e7ef72f9-d6ec-3d23-948f-2f03cc184a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_height_known_quartet_budget (N : ℕ) (known : Finset ZeroPoint)
    (subset : known ⊆ heightHead (N : ℝ))
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : heightCount (N : ℝ) ≤ upper) (strict : upper < knownLower + 4) :
    RHThrough N := by
  have allLine := all_on_line_of_known_quartet_budget (N : ℝ) Set.univ known
    (by simpa using subset) knownLine (fun _ _ => Set.mem_univ _)
    (fun _ _ => Set.mem_univ _) knownLower upper knownBound (by simpa using countBound) strict
  intro s zero heightBound
  let z : ZeroPoint := ⟨s, zero⟩
  exact allLine z ((mem_regionHead _ _ _).mpr ⟨heightBound, Set.mem_univ _⟩)

/-- Additional known-set conjugation closure upgrades a below-two remainder to
EXACT enumeration. Reflection stability and known-line status are not needed here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ec9680b27aca7c73bde737c84bae21df795cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
