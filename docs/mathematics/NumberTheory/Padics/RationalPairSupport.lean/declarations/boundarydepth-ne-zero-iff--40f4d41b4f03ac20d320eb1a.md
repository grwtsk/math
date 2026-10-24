# boundaryDepth_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71103878-5697-cdf4-46ec-83c933a49672",
  "kind": "theorem",
  "lexical_name": "boundaryDepth_ne_zero_iff",
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
  "slug": "boundarydepth-ne-zero-iff--40f4d41b4f03ac20d320eb1a",
  "source": {
    "blob": "c38865bf0f550dff0b1a2b529f704c2f7b3601df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Padics/RationalPairSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40f4d41b4f03ac20d320eb1a88d4f328fb0d714f339baa28f47b79ec1d46caed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Padics/RationalPairSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71103878-5697-cdf4-46ec-83c933a49672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryDepth_ne_zero_iff (p : ℕ) (u v : ℚ) :
    boundaryDepth p u v ≠ 0 ↔ padicValRat p u ≠ 0 ∨ padicValRat p v ≠ 0 := by
  have hz : boundaryDepth p u v = 0 ↔ padicValRat p u = 0 ∧ padicValRat p v = 0 := by
    constructor
    · intro h
      have hu := le_max_left (padicValRat p u).natAbs (padicValRat p v).natAbs
      have hv := le_max_right (padicValRat p u).natAbs (padicValRat p v).natAbs
      change max (padicValRat p u).natAbs (padicValRat p v).natAbs = 0 at h
      exact ⟨Int.natAbs_eq_zero.mp (by omega), Int.natAbs_eq_zero.mp (by omega)⟩
    · rintro ⟨hu,hv⟩
      simp [boundaryDepth,hu,hv]
  rw [ne_eq, hz, not_and_or]

/-- A common prime in coprime factors is impossible, so its overlap budget vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Padics/RationalPairSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Padics/RationalPairSupport.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38865bf0f550dff0b1a2b529f704c2f7b3601df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
