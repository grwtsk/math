# liftP_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8c8df6868773a8fe9e247b4c5d96a46ee477d72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90c4baa9-c1ab-2bf8-5f82-bb900d31ecb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55ae7294-ce66-ed5b-4c1b-67d84587e774",
  "kind": "theorem",
  "lexical_name": "liftP_iff",
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
  "slug": "liftp-iff--1d8562c7fcd26351076ff2ea",
  "source": {
    "blob": "e8c8df6868773a8fe9e247b4c5d96a46ee477d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8562c7fcd26351076ff2eaefcd48bd4e606106bbcafe68bdf79bd781d068d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55ae7294-ce66-ed5b-4c1b-67d84587e774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftP_iff {α : TypeVec n} (p : ∀ ⦃i⦄, α i → Prop) (x : F α) :
    LiftP p x ↔ ∃ a f, x = abs ⟨a, f⟩ ∧ ∀ i j, p (f i j) := by
  constructor
  · rintro ⟨y, hy⟩
    rcases h : repr y with ⟨a, f⟩
    use a, fun i j => (f i j).val
    constructor
    · rw [← hy, ← abs_repr y, h, ← abs_map]; rfl
    intro i j
    apply (f i j).property
  rintro ⟨a, f, h₀, h₁⟩
  use abs ⟨a, fun i j => ⟨f i j, h₁ i j⟩⟩
  rw [← abs_map, h₀]; rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4079a08c8008520266a9e8243a1a5ba5bc4e4b76b5a92ee966939c0c45208c38.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c8df6868773a8fe9e247b4c5d96a46ee477d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
