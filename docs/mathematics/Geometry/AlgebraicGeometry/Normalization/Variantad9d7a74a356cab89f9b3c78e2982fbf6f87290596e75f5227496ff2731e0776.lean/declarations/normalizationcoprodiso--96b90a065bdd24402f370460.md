# normalizationCoprodIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f0a226c16edfab23ffc3bb3608579992a19b1fcd9032bc97acc69e7883c6c31",
  "kind": "def",
  "lexical_name": "normalizationCoprodIso",
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
  "slug": "normalizationcoprodiso--96b90a065bdd24402f370460",
  "source": {
    "blob": "5ae53fc5e8b129ad008bb61b2d33ac664b547236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 508,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96b90a065bdd24402f370460661724de6895f450b5d2456e935463c0a31687ba",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f0a226c16edfab23ffc3bb3608579992a19b1fcd9032bc97acc69e7883c6c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalizationCoprodIso :
    (iU ≫ f).normalization ⨿ (iV ≫ f).normalization ≅ f.normalization where
  hom := coprod.desc
      ((iU ≫ f).normalizationDesc (iU ≫ f.toNormalization) f.fromNormalization (by simp))
      ((iV ≫ f).normalizationDesc (iV ≫ f.toNormalization) f.fromNormalization (by simp))
  inv := f.normalizationDesc ((e.coconePointUniqueUpToIso (colimit.isColimit _)).hom ≫
      coprod.map (iU ≫ f).toNormalization (iV ≫ f).toNormalization)
      (coprod.desc (iU ≫ f).fromNormalization (iV ≫ f).fromNormalization) <| by
    simp only [← Iso.inv_comp_eq, Category.assoc]
    apply coprod.hom_ext <;> simp
  hom_inv_id := by
    ext
    · refine Scheme.Hom.normalization.hom_ext _ _ _
        (coprod.desc (iU ≫ f).fromNormalization (iV ≫ f).fromNormalization) ?_ (by simp) (by simp)
      have H : iU ≫ (e.coconePointUniqueUpToIso (colimit.isColimit (pair U V))).hom = coprod.inl :=
        e.comp_coconePointUniqueUpToIso_hom (colimit.isColimit (pair U V)) ⟨.left⟩
      simp [reassoc_of% H]
    · refine Scheme.Hom.normalization.hom_ext _ _ _
        (coprod.desc (iU ≫ f).fromNormalization (iV ≫ f).fromNormalization) ?_ (by simp) (by simp)
      have H : iV ≫ (e.coconePointUniqueUpToIso (colimit.isColimit (pair U V))).hom = coprod.inr :=
        e.comp_coconePointUniqueUpToIso_hom (colimit.isColimit (pair U V)) ⟨.right⟩
      simp [reassoc_of% H]
  inv_hom_id := by
    refine Scheme.Hom.normalization.hom_ext _ _ _ f.fromNormalization ?_ (by simp) (by simp)
    rw [← cancel_epi (e.coconePointUniqueUpToIso (colimit.isColimit (pair U V))).inv]
    apply coprod.hom_ext <;> simp

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae53fc5e8b129ad008bb61b2d33ac664b547236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
