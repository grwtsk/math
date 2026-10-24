# actionPunitEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5092cf677f83208828d69e24b8635fe0895b990349f76325b55c98304f8d2107",
  "kind": "def",
  "lexical_name": "actionPunitEquivalence",
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
  "slug": "actionpunitequivalence--3567c6c6f20cf4ce08072957",
  "source": {
    "blob": "5c9d08bbce3770c1fa4bd2911cabbb6bf81ffde7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3567c6c6f20cf4ce08072957199f3ca2d6a86b43fb23cb0852329317a12db092",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5092cf677f83208828d69e24b8635fe0895b990349f76325b55c98304f8d2107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actionPunitEquivalence : Action V PUnit ≌ V where
  functor := forget V _
  inverse :=
    { obj := fun X => ⟨X, 1⟩
      map := fun f => ⟨f, fun ⟨⟩ => by simp⟩ }
  unitIso :=
    NatIso.ofComponents fun X => mkIso (Iso.refl _) fun ⟨⟩ => by
      simp only [Functor.id_obj, MonoidHom.one_apply, End.one_def, id_eq, Functor.comp_obj,
        forget_obj, Iso.refl_hom, Category.comp_id]
      exact ρ_one X
  counitIso := NatIso.ofComponents fun _ => Iso.refl _

variable (V)

/-- The "restriction" functor along a monoid homomorphism `f : G ⟶ H`,
taking actions of `H` to actions of `G`.

(This makes sense for any homomorphism, but the name is natural when `f` is a monomorphism.)
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf8165a93ae34120b89660204231c4badcef3af2234d26a650bf085986f39b3e5.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9d08bbce3770c1fa4bd2911cabbb6bf81ffde7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
