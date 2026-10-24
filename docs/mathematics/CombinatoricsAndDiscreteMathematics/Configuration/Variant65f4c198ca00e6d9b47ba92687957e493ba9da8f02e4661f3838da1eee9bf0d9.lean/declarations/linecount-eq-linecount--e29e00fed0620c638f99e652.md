# lineCount_eq_lineCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbb82d3d-a9ac-e3b1-15cb-277eadebc4ea",
  "kind": "theorem",
  "lexical_name": "lineCount_eq_lineCount",
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
  "slug": "linecount-eq-linecount--e29e00fed0620c638f99e652",
  "source": {
    "blob": "49f83a1401d6b840707153706b768b5e2bd1d8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 358,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e29e00fed0620c638f99e652a4521e403f6f88ea658554f61b889ac5a1526a96",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbb82d3d-a9ac-e3b1-15cb-277eadebc4ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineCount_eq_lineCount [Finite P] [Finite L] (p q : P) : lineCount L p = lineCount L q := by
  cases nonempty_fintype P
  cases nonempty_fintype L
  obtain ⟨p₁, p₂, p₃, l₁, l₂, l₃, h₁₂, h₁₃, h₂₁, h₂₂, h₂₃, h₃₁, h₃₂, h₃₃⟩ := @exists_config P L _ _
  have h := card_points_eq_card_lines P L
  let n := lineCount L p₂
  have hp₂ : lineCount L p₂ = n := rfl
  have hl₁ : pointCount P l₁ = n := (HasLines.lineCount_eq_pointCount h h₂₁).symm.trans hp₂
  have hp₃ : lineCount L p₃ = n := (HasLines.lineCount_eq_pointCount h h₃₁).trans hl₁
  have hl₃ : pointCount P l₃ = n := (HasLines.lineCount_eq_pointCount h h₃₃).symm.trans hp₃
  have hp₁ : lineCount L p₁ = n := (HasLines.lineCount_eq_pointCount h h₁₃).trans hl₃
  have hl₂ : pointCount P l₂ = n := (HasLines.lineCount_eq_pointCount h h₁₂).symm.trans hp₁
  suffices ∀ p : P, lineCount L p = n by exact (this p).trans (this q).symm
  refine fun p =>
    or_not.elim (fun h₂ => ?_) fun h₂ => (HasLines.lineCount_eq_pointCount h h₂).trans hl₂
  refine or_not.elim (fun h₃ => ?_) fun h₃ => (HasLines.lineCount_eq_pointCount h h₃).trans hl₃
  rw [(eq_or_eq h₂ h₂₂ h₃ h₂₃).resolve_right fun h =>
      h₃₃ ((congr_arg (p₃ ∈ ·) h).mp h₃₂)]

variable (P) {L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49f83a1401d6b840707153706b768b5e2bd1d8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
