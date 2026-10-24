# compatiblePreservingOfDownwardsClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f79e747351cc3d1015d1576f131b3fb95449dc5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02eaad05-befd-e7c0-b760-72f65250fe15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef3bcb4b-c2c7-d907-6c8b-a9a2cd11eecf",
  "kind": "theorem",
  "lexical_name": "compatiblePreservingOfDownwardsClosed",
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
  "slug": "compatiblepreservingofdownwardsclosed--748295100b1d1f4ab5c38a13",
  "source": {
    "blob": "f79e747351cc3d1015d1576f131b3fb95449dc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748295100b1d1f4ab5c38a13a66e8d7303e5c77b08a012444592914747f13a6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef3bcb4b-c2c7-d907-6c8b-a9a2cd11eecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatiblePreservingOfDownwardsClosed (F : C ⥤ D) [F.Full] [F.Faithful]
    (hF : ∀ {c : C} {d : D} (_ : d ⟶ F.obj c), Σ c', F.obj c' ≅ d) : CompatiblePreserving K F := by
  constructor
  introv hx he
  obtain ⟨X', e⟩ := hF f₁
  apply (ℱ.1.mapIso e.op).toEquiv.injective
  simp only [Iso.op_hom, Iso.toEquiv_fun, ℱ.1.mapIso_hom, ← FunctorToTypes.map_comp_apply]
  simpa using
    hx (F.preimage <| e.hom ≫ f₁) (F.preimage <| e.hom ≫ f₂) hg₁ hg₂
      (F.map_injective <| by simpa using he)

variable {F J K}

/-- If `F` is cover-preserving and compatible-preserving, then `F` is a continuous functor. -/
@[stacks 00WW "This is basically this Stacks entry."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79e747351cc3d1015d1576f131b3fb95449dc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
