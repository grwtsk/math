# isColimitOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cd68e982974b93cd7719e17c0b9451d82df6866e6ca885141b8f1c548c29f93",
  "kind": "def",
  "lexical_name": "isColimitOf",
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
  "slug": "iscolimitof--e637125e8ce6cdd668863330",
  "source": {
    "blob": "4cebf179c791dc58c820ce80a4f7ebed23e14273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e637125e8ce6cdd66886333051a3695366aef06deb5a4d4cab856460abc2ac76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cd68e982974b93cd7719e17c0b9451d82df6866e6ca885141b8f1c548c29f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitOf (t : Cocone F) (hsurj : ∀ x : t.pt, ∃ i xi, x = t.ι.app i xi)
    (hinj :
      ∀ i j xi xj,
        t.ι.app i xi = t.ι.app j xj → ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f xi = F.map g xj) :
    IsColimit t := by
  let α : t.pt → J := fun x => (hsurj x).choose
  let f : ∀ (x : t.pt), F.obj (α x) := fun x => (hsurj x).choose_spec.choose
  have hf : ∀ (x : t.pt), x = t.ι.app _ (f x) := fun x => (hsurj x).choose_spec.choose_spec
  exact
    { desc := fun s x => s.ι.app _ (f x)
      fac := fun s j => by
        ext y
        obtain ⟨k, l, g, eq⟩ := hinj _ _ _ _ (hf (t.ι.app j y))
        have h := congr_fun (s.ι.naturality g) (f (t.ι.app j y))
        have h' := congr_fun (s.ι.naturality l) y
        dsimp at h h' ⊢
        rw [← h, ← eq, h']
      uniq := fun s m hm => by
        ext x
        dsimp
        nth_rw 1 [hf x]
        rw [← hm, types_comp_apply] }

variable [IsFilteredOrEmpty J]

/-- Recognizing filtered colimits of types. The injectivity condition here is
slightly easier to check as compared to `isColimitOf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cebf179c791dc58c820ce80a4f7ebed23e14273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
