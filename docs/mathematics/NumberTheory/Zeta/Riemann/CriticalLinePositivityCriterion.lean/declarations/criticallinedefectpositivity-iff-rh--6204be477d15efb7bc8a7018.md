# criticalLineDefectPositivity_iff_rh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15655584-14e8-aca4-18d8-6094d17c86fa",
  "kind": "theorem",
  "lexical_name": "criticalLineDefectPositivity_iff_rh",
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
  "slug": "criticallinedefectpositivity-iff-rh--6204be477d15efb7bc8a7018",
  "source": {
    "blob": "0df392e51d4edd1e05bb08414e6f8f2618f9af95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6204be477d15efb7bc8a70183bd7d246d3961ded83caf48f09e23069f934a549",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15655584-14e8-aca4-18d8-6094d17c86fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalLineDefectPositivity_iff_rh :
    (∀ z : CriticalLineTest, 0 ≤ criticalLineDefectForm z z) ↔
      _root_.RiemannHypothesis := by
  rw [riemann_hypothesis_iff_defect_zero]
  constructor
  · intro hpositive s hs
    have hnegativeDefect := hpositive ⟨s, hs⟩
    have hdiagonal := criticalLineDefectForm_diagonal ⟨s, hs⟩
    rw [hdiagonal] at hnegativeDefect
    have hnonnegativeDefect := rh_defect_nonneg s
    linarith
  · intro hzero z
    rw [criticalLineDefectForm_diagonal, hzero z.1 z.2]
    norm_num

/-- The exact criterion packaged for the generic positive-limit endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0df392e51d4edd1e05bb08414e6f8f2618f9af95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
