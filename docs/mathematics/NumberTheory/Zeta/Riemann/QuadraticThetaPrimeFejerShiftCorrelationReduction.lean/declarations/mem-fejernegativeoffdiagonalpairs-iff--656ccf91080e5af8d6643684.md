# mem_fejerNegativeOffDiagonalPairs_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de35a410-638a-287a-004b-7d95d2f0b807",
  "kind": "theorem",
  "lexical_name": "mem_fejerNegativeOffDiagonalPairs_iff",
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
  "slug": "mem-fejernegativeoffdiagonalpairs-iff--656ccf91080e5af8d6643684",
  "source": {
    "blob": "2d39630a6d426d2110328af98a5034c57a1c33f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656ccf91080e5af8d6643684cef46a08dc52ca6aa504fbbbe97bc69607fce8ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de35a410-638a-287a-004b-7d95d2f0b807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_fejerNegativeOffDiagonalPairs_iff
    {X : ℕ} {p : ℕ × ℕ} :
    p ∈ fejerNegativeOffDiagonalPairs X ↔
      p.1 ∈ fejerOctaveIndexSet X ∧
      p.2 ∈ fejerOctaveIndexSet X ∧
      p.2 < p.1 := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hoff, hlt⟩
    rcases Finset.mem_offDiag.mp hoff with ⟨h1, h2, hne⟩
    exact ⟨h1, h2, hlt⟩
  · rintro ⟨h1, h2, hlt⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_offDiag.mpr
        ⟨h1, h2, Ne.symm (Nat.ne_of_lt hlt)⟩,
       hlt⟩

/-- Every off-diagonal ordered pair lies in exactly one strict triangular
region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d39630a6d426d2110328af98a5034c57a1c33f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
