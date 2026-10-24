# pow_mul_m_le_card_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bebd173-3b1f-20f6-c476-720f4a461bb0",
  "kind": "theorem",
  "lexical_name": "pow_mul_m_le_card_part",
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
  "slug": "pow-mul-m-le-card-part--f0d407f376f1462ad60b049c",
  "source": {
    "blob": "90afccc542a3f76f94c1e0b4c2fe5ae141f3c48d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0d407f376f1462ad60b049cb1d6d9b4d093be20751ed432bb83a4a32fbeabfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bebd173-3b1f-20f6-c476-720f4a461bb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_mul_m_le_card_part (hP : P.IsEquipartition) (hu : u ∈ P.parts) :
    (4 : ℝ) ^ P.parts.card * m ≤ u.card := by
  norm_cast
  rw [stepBound, ← Nat.div_div_eq_div_mul]
  exact (Nat.mul_div_le _ _).trans (hP.average_le_card_part hu)
#align szemeredi_regularity.pow_mul_m_le_card_part SzemerediRegularity.pow_mul_m_le_card_part

variable (P ε) (l : ℕ)

/-- Auxiliary function for Szemerédi's regularity lemma. The size of the partition by which we start
blowing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90afccc542a3f76f94c1e0b4c2fe5ae141f3c48d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
