# rounded_right_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2383f4d4-0813-ddf7-0099-72fdad3ab1ee",
  "kind": "theorem",
  "lexical_name": "rounded_right_change",
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
  "slug": "rounded-right-change--d226eef0b05a78eb89d6260e",
  "source": {
    "blob": "c871d0bf760c11275659115b2f2fe62d068ca7c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d226eef0b05a78eb89d6260ed8acce1e19f962d53f695d5c4f7e6693f8e37580",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2383f4d4-0813-ddf7-0099-72fdad3ab1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rounded_right_change (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (T : ℝ) (herr : |T - separatedHeight J| ≤ heightClearance J / 2) :
    vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) -
      vertical (integrand x h) 2 (separatedHeight J) / ((2 * Real.pi : ℝ) : ℂ) =
        edgeRemainder x h N T - edgeRemainder x h N (separatedHeight J) := by
  have hT : 0 < T := by
    have hJ := Nat.cast_nonneg (α := ℝ) J
    linarith [(rounded_height_bounds J T herr).1]
  rw [right_residue_at_height x h hh ha N T hT (rounded_avoids J T herr),
    right_residue_at_height x h hh ha N (separatedHeight J)
      (separatedHeight_pos J) (separatedHeight_avoids J), rounded_heightHead_eq J T herr]
  ring

/-- A whole sequence of certified perturbations stays cofinal; no numerical routine is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c871d0bf760c11275659115b2f2fe62d068ca7c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
