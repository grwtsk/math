# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe7a14c571a6e6bee2acf3eed2ef2fbc324ecbed09ca0664599082c8fd596df3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--abfb7f24851f0cd39f7df7f9",
  "source": {
    "blob": "4895732bc02295bd81bdbd90c82982e89af2fef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abfb7f24851f0cd39f7df7f9ea2fe60f1ab78369b1b7d4af97f89fb21ad1272c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe7a14c571a6e6bee2acf3eed2ef2fbc324ecbed09ca0664599082c8fd596df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasImageMaps (Type u) where
  has_image_map {f g} st :=
    HasImageMap.transport st (monoFactorisation f.hom) (isImage g.hom)
      (fun x => ⟨st.right x.1, ⟨st.left (Classical.choose x.2), by
        have p := st.w
        replace p := congr_fun p (Classical.choose x.2)
        simp only [Functor.id_obj, Functor.id_map, types_comp_apply] at p
        rw [p, Classical.choose_spec x.2]⟩⟩) rfl

variable {F : ℕᵒᵖ ⥤ Type u} {c : Cone F}
  (hF : ∀ n, Function.Surjective (F.map (homOfLE (Nat.le_succ n)).op))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant0e2b3f1441ff5136ab83f583cbbc73f38a4fa074fa90a5cbb318566057f356a3.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4895732bc02295bd81bdbd90c82982e89af2fef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
