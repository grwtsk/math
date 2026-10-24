# induction_fixed_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a5f5684-93a3-5375-773b-8ed7b140f6c1",
  "kind": "lemma",
  "lexical_name": "induction_fixed_target",
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
  "slug": "induction-fixed-target--44dea5b1581e59007a92d89d",
  "source": {
    "blob": "f06be9349e3ca960ac3af8536dc9d38c698cc1ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44dea5b1581e59007a92d89da19dad6dc9b831f97f99cc3db6c2dde9bfec37b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a5f5684-93a3-5375-773b-8ed7b140f6c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma induction_fixed_target {b : Paths V} (P : ∀ {a : Paths V}, (a ⟶ b) → Prop)
    (id : P (𝟙 b))
    (comp : ∀ {u v : V} (p : (of V).obj v ⟶ b) (q : u ⟶ v), P p → P ((of V).map q ≫ p)) :
    ∀ {a : Paths V} (f : a ⟶ b), P f := by
  intro a f
  generalize h : f.length = k
  induction k generalizing f a with
  | zero => cases f with
    | nil => exact id
    | cons _ _ => simp at h
  | succ k h' =>
    obtain ⟨c, f, q, hq, rfl⟩ := f.eq_toPath_comp_of_length_eq_succ h
    exact comp _ _ (h' _ hq)

/-- To prove a property on morphisms of a path category, it suffices to prove it for the identity
and prove that the property is preserved under composition on the right with length 1 paths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06be9349e3ca960ac3af8536dc9d38c698cc1ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
