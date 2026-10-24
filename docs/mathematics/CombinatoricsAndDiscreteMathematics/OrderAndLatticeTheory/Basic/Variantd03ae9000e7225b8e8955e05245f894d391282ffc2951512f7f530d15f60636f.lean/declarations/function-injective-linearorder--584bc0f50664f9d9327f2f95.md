# Function.Injective.linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c64441ad3ebd2e024c777579e1d0347757e3fdca33f4495a4084a889ec69b5dc",
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
  "slug": "function-injective-linearorder--584bc0f50664f9d9327f2f95",
  "source": {
    "blob": "3b1370777d8043bca3c85b8503de07ff517c2cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 696,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd03ae9000e7225b8e8955e05245f894d391282ffc2951512f7f530d15f60636f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:584bc0f50664f9d9327f2f9594718e84ae4f68a10232eaf55ec9e44c7d1ad531",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd03ae9000e7225b8e8955e05245f894d391282ffc2951512f7f530d15f60636f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c64441ad3ebd2e024c777579e1d0347757e3fdca33f4495a4084a889ec69b5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–724.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd03ae9000e7225b8e8955e05245f894d391282ffc2951512f7f530d15f60636f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantd03ae9000e7225b8e8955e05245f894d391282ffc2951512f7f530d15f60636f.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1370777d8043bca3c85b8503de07ff517c2cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
