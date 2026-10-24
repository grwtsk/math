# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b813811981fe510ee3e4e79b5d0c9ac10f0db9733ae8ab917976ebf087c2c2f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4c3d8eb5432518eb1a8ec701",
  "source": {
    "blob": "459d22cb2c8733239689f0423c645ab08b4e1dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c3d8eb5432518eb1a8ec701d7457d2391324844ab67f277b9edf81c367662b8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b813811981fe510ee3e4e79b5d0c9ac10f0db9733ae8ab917976ebf087c2c2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [MulZeroClass α] [Preorder α] [MulPosMono α] : MulPosMono (WithBot α) :=
  ⟨by
    intro ⟨x, x0⟩ a b h
    simp only [Subtype.coe_mk]
    rcases eq_or_ne x 0 with rfl | x0'
    · simp
    lift x to α
    · rintro rfl
      exact (WithBot.bot_lt_coe (0 : α)).not_le x0
    induction a using WithBot.recBotCoe
    · simp_rw [bot_mul x0', bot_le]
    induction b using WithBot.recBotCoe
    · exact absurd h (bot_lt_coe _).not_le
    simp only [← coe_mul, coe_le_coe] at *
    norm_cast at x0
    exact mul_le_mul_of_nonneg_right h x0 ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459d22cb2c8733239689f0423c645ab08b4e1dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
