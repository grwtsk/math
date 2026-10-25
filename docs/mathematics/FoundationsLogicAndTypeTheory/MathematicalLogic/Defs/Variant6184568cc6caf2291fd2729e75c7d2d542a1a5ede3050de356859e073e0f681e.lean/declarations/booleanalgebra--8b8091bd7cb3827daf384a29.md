# BooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a5cd0114064b28bfaaf5270dfda5318a2de05de177122bf1a9e4df2aabf11cf",
  "kind": "class",
  "lexical_name": "BooleanAlgebra",
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
  "slug": "booleanalgebra--8b8091bd7cb3827daf384a29",
  "source": {
    "blob": "622da077d5fa71e2b4aa4668a9e86279e20cb29a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6184568cc6caf2291fd2729e75c7d2d542a1a5ede3050de356859e073e0f681e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b8091bd7cb3827daf384a294924c4591c37a00f4310e7f656fb8aacb96a3e57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6184568cc6caf2291fd2729e75c7d2d542a1a5ede3050de356859e073e0f681e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a5cd0114064b28bfaaf5270dfda5318a2de05de177122bf1a9e4df2aabf11cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class BooleanAlgebra (α : Type u) extends
    DistribLattice α, Compl α, SDiff α, HImp α, Top α, Bot α where
  /-- The infimum of `x` and `xᶜ` is at most `⊥` -/
  inf_compl_le_bot : ∀ x : α, x ⊓ xᶜ ≤ ⊥
  /-- The supremum of `x` and `xᶜ` is at least `⊤` -/
  top_le_sup_compl : ∀ x : α, ⊤ ≤ x ⊔ xᶜ
  /-- `⊤` is the greatest element -/
  le_top : ∀ a : α, a ≤ ⊤
  /-- `⊥` is the least element -/
  bot_le : ∀ a : α, ⊥ ≤ a
  /-- `x \ y` is equal to `x ⊓ yᶜ` -/
  sdiff := fun x y => x ⊓ yᶜ
  /-- `x ⇨ y` is equal to `y ⊔ xᶜ` -/
  himp := fun x y => y ⊔ xᶜ
  /-- `x \ y` is equal to `x ⊓ yᶜ` -/
  sdiff_eq : ∀ x y : α, x \ y = x ⊓ yᶜ := by aesop
  /-- `x ⇨ y` is equal to `y ⊔ xᶜ` -/
  himp_eq : ∀ x y : α, x ⇨ y = y ⊔ xᶜ := by aesop

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6184568cc6caf2291fd2729e75c7d2d542a1a5ede3050de356859e073e0f681e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant6184568cc6caf2291fd2729e75c7d2d542a1a5ede3050de356859e073e0f681e.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `622da077d5fa71e2b4aa4668a9e86279e20cb29a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
