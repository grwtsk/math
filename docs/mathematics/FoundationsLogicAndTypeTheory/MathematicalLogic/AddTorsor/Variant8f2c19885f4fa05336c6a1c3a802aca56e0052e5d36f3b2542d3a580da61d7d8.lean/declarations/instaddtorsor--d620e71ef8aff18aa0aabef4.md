# instAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:111d0e7a26970155665c5e6ceb88d6ad5797d321a463ec7b65f679cf8e67f4cd",
  "kind": "instance",
  "lexical_name": "instAddTorsor",
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
  "slug": "instaddtorsor--d620e71ef8aff18aa0aabef4",
  "source": {
    "blob": "55924cd14fe1e7238c0406fab126331b211ff6f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d620e71ef8aff18aa0aabef46c90aeaf8d8311695e77841b8849143aba3a049d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:111d0e7a26970155665c5e6ceb88d6ad5797d321a463ec7b65f679cf8e67f4cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddTorsor : AddTorsor (G × G') (P × P') where
  vadd v p := (v.1 +ᵥ p.1, v.2 +ᵥ p.2)
  zero_vadd _ := Prod.ext (zero_vadd _ _) (zero_vadd _ _)
  add_vadd _ _ _ := Prod.ext (add_vadd _ _ _) (add_vadd _ _ _)
  vsub p₁ p₂ := (p₁.1 -ᵥ p₂.1, p₁.2 -ᵥ p₂.2)
  Nonempty := Prod.Nonempty
  vsub_vadd' _ _ := Prod.ext (vsub_vadd _ _) (vsub_vadd _ _)
  vadd_vsub' _ _ := Prod.ext (vadd_vsub _ _) (vadd_vsub _ _)

-- Porting note: The proofs above used to be shorter:
-- zero_vadd p := by simp ⊢ 0 +ᵥ p = p
-- add_vadd := by simp [add_vadd] ⊢ ∀ (a : G) (b : G') (a_1 : G) (b_1 : G') (a_2 : P) (b_2 : P'),
--  (a + a_1, b + b_1) +ᵥ (a_2, b_2) = (a, b) +ᵥ ((a_1, b_1) +ᵥ (a_2, b_2))
-- vsub_vadd' p₁ p₂ := show (p₁.1 -ᵥ p₂.1 +ᵥ p₂.1, _) = p₁ by simp
--   ⊢ (p₁.fst -ᵥ p₂.fst +ᵥ p₂.fst, ((p₁.fst -ᵥ p₂.fst, p₁.snd -ᵥ p₂.snd) +ᵥ p₂).snd) = p₁
-- vadd_vsub' v p := show (v.1 +ᵥ p.1 -ᵥ p.1, v.2 +ᵥ p.2 -ᵥ p.2) = v by simp
--   ⊢ (v.fst +ᵥ p.fst -ᵥ p.fst, v.snd) = v

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55924cd14fe1e7238c0406fab126331b211ff6f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
