# abelian_of_solvable_ideal_eq_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89876a40-f6a3-6b22-a7b5-4f3726da4bd1",
  "kind": "theorem",
  "lexical_name": "abelian_of_solvable_ideal_eq_bot_iff",
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
  "slug": "abelian-of-solvable-ideal-eq-bot-iff--66430a01a26ba4c521475405",
  "source": {
    "blob": "8ce3a8ff8456d3f8943c425146efb0cd94da3afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 370,
    "path": "GRWTSK/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66430a01a26ba4c521475405d13d8b84972409c0267b95f4587609e3101c71ac",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89876a40-f6a3-6b22-a7b5-4f3726da4bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abelian_of_solvable_ideal_eq_bot_iff (I : LieIdeal R L) [h : IsSolvable R I] :
    derivedAbelianOfIdeal I = ⊥ ↔ I = ⊥ := by
  dsimp only [derivedAbelianOfIdeal]
  split -- Porting note: Original tactic was `cases' h : derivedAbelianOfIdeal R L I with k`
  · rename_i h
    rw [derivedLength_zero] at h
    rw [h]
  · rename_i k h
    obtain ⟨_, h₂⟩ := (derivedSeries_of_derivedLength_succ R L I k).mp h
    have h₃ : I ≠ ⊥ := by intro contra; apply h₂; rw [contra]; apply derivedSeries_of_bot_eq_bot
    simp only [h₂, h₃]
#align lie_algebra.abelian_of_solvable_ideal_eq_bot_iff LieAlgebra.abelian_of_solvable_ideal_eq_bot_iff

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce3a8ff8456d3f8943c425146efb0cd94da3afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
