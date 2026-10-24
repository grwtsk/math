# LinearOrder.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34f5f9af11c9f944f2c331953510c6608fd73814a88bcee8adf02b75e0e7581e",
  "kind": "def",
  "lexical_name": "LinearOrder.lift",
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
  "slug": "linearorder-lift--2719d2764cbf13f3568b822c",
  "source": {
    "blob": "1f36ff88bc019754e37ef905bc96e0be6b5e0c81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1043,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2719d2764cbf13f3568b822cc0399895d593f5352bf982758f20a986a8c25df9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34f5f9af11c9f944f2c331953510c6608fd73814a88bcee8adf02b75e0e7581e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1043–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearOrder.lift {α β} [LinearOrder β] [Sup α] [Inf α] (f : α → β) (inj : Injective f)
    (hsup : ∀ x y, f (x ⊔ y) = max (f x) (f y)) (hinf : ∀ x y, f (x ⊓ y) = min (f x) (f y)) :
    LinearOrder α :=
  letI instOrdα : Ord α := ⟨fun a b ↦ compare (f a) (f b)⟩
  letI decidableLE := fun x y ↦ (inferInstance : Decidable (f x ≤ f y))
  letI decidableLT := fun x y ↦ (inferInstance : Decidable (f x < f y))
  letI decidableEq := fun x y ↦ decidable_of_iff (f x = f y) inj.eq_iff
  { PartialOrder.lift f inj, instOrdα with
    le_total := fun x y ↦ le_total (f x) (f y)
    decidableLE := decidableLE
    decidableLT := decidableLT
    decidableEq := decidableEq
    min := (· ⊓ ·)
    max := (· ⊔ ·)
    min_def := by
      intros x y
      apply inj
      rw [apply_ite f]
      exact (hinf _ _).trans (min_def _ _)
    max_def := by
      intros x y
      apply inj
      rw [apply_ite f]
      exact (hsup _ _).trans (max_def _ _)
    compare_eq_compareOfLessAndEq := fun a b ↦
      compare_of_injective_eq_compareOfLessAndEq a b f inj }

/-- Transfer a `LinearOrder` on `β` to a `LinearOrder` on `α` using an injective
function `f : α → β`. This version autogenerates `min` and `max` fields. See `LinearOrder.lift`
for a version that takes `[Sup α]` and `[Inf α]`, then uses them as `max` and `min`. See
`LinearOrder.liftWithOrd'` for a version which does not auto-generate `compare` fields.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8288c3e4da87cf4c7e9e41c6fdecf4b74509a6fc8203431b7c6b7e63f1d079eb.lean#L1043).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f36ff88bc019754e37ef905bc96e0be6b5e0c81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
