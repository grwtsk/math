# isSheaf_iff_multiequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:210255f7-e6ff-4c0b-da89-b3f3af1de6ea",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_multiequalizer",
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
  "slug": "issheaf-iff-multiequalizer--f43e634f69c503726e38c881",
  "source": {
    "blob": "c26bbcbef902255c66f545f981ef9e8978922068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 589,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f43e634f69c503726e38c88143adab6b2a95686f71b621467b87d3259030b3df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:210255f7-e6ff-4c0b-da89-b3f3af1de6ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_multiequalizer [∀ (X : C) (S : J.Cover X), HasMultiequalizer (S.index P)] :
    IsSheaf J P ↔ ∀ (X : C) (S : J.Cover X), IsIso (S.toMultiequalizer P) := by
  rw [isSheaf_iff_multifork]
  refine forall₂_congr fun X S => ⟨?_, ?_⟩
  · rintro ⟨h⟩
    let e : P.obj (op X) ≅ multiequalizer (S.index P) :=
      h.conePointUniqueUpToIso (limit.isLimit _)
    exact (inferInstance : IsIso e.hom)
  · intro h
    refine ⟨IsLimit.ofIsoLimit (limit.isLimit _) (Cone.ext ?_ ?_)⟩
    · apply (@asIso _ _ _ _ _ h).symm
    · intro a
      symm
      simp

end MultiequalizerConditions

section

variable [HasProducts.{max u₁ v₁} A]
variable [HasProducts.{max u₁ v₁} A']

/-- The middle object of the fork diagram given in Equation (3) of [MM92], as well as the fork
diagram of the Stacks entry. -/
@[stacks 00VM "The middle object of the fork diagram there."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26bbcbef902255c66f545f981ef9e8978922068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
