# liftR_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11706434-f840-818e-2a90-efdc7ad8ee28",
  "kind": "theorem",
  "lexical_name": "liftR_iff",
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
  "slug": "liftr-iff--1b67fb1c1e217d3b1d70dadc",
  "source": {
    "blob": "7f4845e1c6666ae35037f9c5a1cd726c2145d104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b67fb1c1e217d3b1d70dadcb7f1e756d18726602dcbbd79e133f0333f0863b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11706434-f840-818e-2a90-efdc7ad8ee28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftR_iff {α : TypeVec n} (r : ∀ /- ⦃i⦄ -/ {i}, α i → α i → Prop) (x y : F α) :
    LiftR r x y ↔ ∃ a f₀ f₁, x = abs ⟨a, f₀⟩ ∧ y = abs ⟨a, f₁⟩ ∧ ∀ i j, r (f₀ i j) (f₁ i j) := by
  constructor
  · rintro ⟨u, xeq, yeq⟩
    cases' h : repr u with a f
    use a, fun i j => (f i j).val.fst, fun i j => (f i j).val.snd
    constructor
    · rw [← xeq, ← abs_repr u, h, ← abs_map]; rfl
    constructor
    · rw [← yeq, ← abs_repr u, h, ← abs_map]; rfl
    intro i j
    exact (f i j).property
  rintro ⟨a, f₀, f₁, xeq, yeq, h⟩
  use abs ⟨a, fun i j => ⟨(f₀ i j, f₁ i j), h i j⟩⟩
  dsimp; constructor
  · rw [xeq, ← abs_map]; rfl
  rw [yeq, ← abs_map]; rfl
#align mvqpf.liftr_iff MvQPF.liftR_iff

open Set

open MvFunctor (LiftP LiftR)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4845e1c6666ae35037f9c5a1cd726c2145d104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
