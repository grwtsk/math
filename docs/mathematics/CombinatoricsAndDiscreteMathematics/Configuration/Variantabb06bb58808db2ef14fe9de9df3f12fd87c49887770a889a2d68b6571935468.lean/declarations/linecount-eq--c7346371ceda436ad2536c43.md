# lineCount_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14f9aa6e-39b9-dec2-6312-fb539f9fbfa0",
  "kind": "theorem",
  "lexical_name": "lineCount_eq",
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
  "slug": "linecount-eq--c7346371ceda436ad2536c43",
  "source": {
    "blob": "90fe22ae0eab72724e4a79c792addc7d76d1f5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7346371ceda436ad2536c438f6ca09ff4e08ab1ee61ee259f110dc78d32a496",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f9aa6e-39b9-dec2-6312-fb539f9fbfa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineCount_eq [Finite P] [Finite L] (p : P) : lineCount L p = order P L + 1 := by
  classical
    obtain ⟨q, -, -, l, -, -, -, -, h, -⟩ := Classical.choose_spec (@exists_config P L _ _)
    cases nonempty_fintype { l : L // q ∈ l }
    rw [order, lineCount_eq_lineCount L p q, lineCount_eq_lineCount L (Classical.choose _) q,
      lineCount, Nat.card_eq_fintype_card, Nat.sub_add_cancel]
    exact Fintype.card_pos_iff.mpr ⟨⟨l, h⟩⟩
#align configuration.projective_plane.line_count_eq Configuration.ProjectivePlane.lineCount_eq

variable (P) {L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90fe22ae0eab72724e4a79c792addc7d76d1f5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
