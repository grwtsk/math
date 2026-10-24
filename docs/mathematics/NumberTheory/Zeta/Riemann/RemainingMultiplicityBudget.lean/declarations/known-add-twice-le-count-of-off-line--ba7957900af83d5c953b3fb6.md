# known_add_twice_le_count_of_off_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0661c11a-72f4-433a-7c10-441e1cd03364",
  "kind": "theorem",
  "lexical_name": "known_add_twice_le_count_of_off_line",
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
  "slug": "known-add-twice-le-count-of-off-line--ba7957900af83d5c953b3fb6",
  "source": {
    "blob": "91d2756444801a53d388a63014cc4ac2f4a12ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7957900af83d5c953b3fb6b2ad340e4cd3303e7f957f6e4f1cc9a4ebba14e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0661c11a-72f4-433a-7c10-441e1cd03364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem known_add_twice_le_count_of_off_line (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (z : ZeroPoint) (member : z ∈ regionHead T U) (offLine : z.1.re ≠ 1 / 2) :
    mass known multiplicity + 2 * multiplicity z ≤ regionCount T U := by
  classical
  have outside : z ∉ known := fun hz => offLine (knownLine z hz)
  have reflectedOutside : reflected z ∉ known :=
    fun hz => reflected_off_line z offLine (knownLine (reflected z) hz)
  have bound := known_add_pair_le_mass (regionHead T U) known multiplicity subset
    z (reflected z) member (reflected_mem_regionHead T U z member stable)
    outside reflectedOutside (distinct_of_off_line z offLine)
  simpa only [multiplicity_reflected, two_mul, Nat.add_assoc] using bound

/-- Only ONE selected multiplicity lower certificate is needed. Known mass may
also be bounded below, while the regional count is independently bounded above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d2756444801a53d388a63014cc4ac2f4a12ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
