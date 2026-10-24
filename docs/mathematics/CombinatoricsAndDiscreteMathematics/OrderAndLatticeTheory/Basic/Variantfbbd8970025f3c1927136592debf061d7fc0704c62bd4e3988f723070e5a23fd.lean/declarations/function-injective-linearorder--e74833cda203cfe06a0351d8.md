# Function.Injective.linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:600bd64bb2cefcebfc867d97c18974109e25f55d9e79d67950c06305b92917b6",
  "kind": "abbrev",
  "lexical_name": "Function.Injective.linearOrder",
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
  "slug": "function-injective-linearorder--e74833cda203cfe06a0351d8",
  "source": {
    "blob": "f197e3f6d84d1acc2ad596c37d00870ad8c35335",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 704,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfbbd8970025f3c1927136592debf061d7fc0704c62bd4e3988f723070e5a23fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e74833cda203cfe06a0351d8b305daa27b84ea8939af58b703cbe179c14fd188",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfbbd8970025f3c1927136592debf061d7fc0704c62bd4e3988f723070e5a23fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:600bd64bb2cefcebfc867d97c18974109e25f55d9e79d67950c06305b92917b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Function.Injective.linearOrder [LinearOrder β] [LE α] [LT α] [Max α] [Min α] [Ord α]
    [DecidableEq α] [DecidableLE α] [DecidableLT α] (f : α → β)
    (hf : Function.Injective f) (le : ∀ {x y}, f x ≤ f y ↔ x ≤ y) (lt : ∀ {x y}, f x < f y ↔ x < y)
    (min : ∀ x y, f (x ⊓ y) = f x ⊓ f y) (max : ∀ x y, f (x ⊔ y) = f x ⊔ f y)
    (compare : ∀ x y, compare (f x) (f y) = compare x y) :
    LinearOrder α where
  toPartialOrder := hf.partialOrder _ le lt
  toDecidableLE := ‹_›
  toDecidableEq := ‹_›
  toDecidableLT := ‹_›
  le_total _ _ := by simp only [← le, le_total]
  min_def _ _ := by simp_rw [← hf.eq_iff, ← le, apply_ite f, ← min_def, min]
  max_def _ _ := by simp_rw [← hf.eq_iff, ← le, apply_ite f, ← max_def, max]
  compare_eq_compareOfLessAndEq _ _ := by
    simp_rw [← compare, LinearOrder.compare_eq_compareOfLessAndEq, compareOfLessAndEq, ← lt,
      hf.eq_iff]

/-!
### Lifts of order instances

Unlike the constructions above, these construct new data fields.
They should be avoided if the types already define any order or decidability instances.
-/

/-- Transfer a `Preorder` on `β` to a `Preorder` on `α` using a function `f : α → β`.

See also `Function.Injective.preorder` when only the proof fields need to be transferred.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfbbd8970025f3c1927136592debf061d7fc0704c62bd4e3988f723070e5a23fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfbbd8970025f3c1927136592debf061d7fc0704c62bd4e3988f723070e5a23fd.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f197e3f6d84d1acc2ad596c37d00870ad8c35335` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
