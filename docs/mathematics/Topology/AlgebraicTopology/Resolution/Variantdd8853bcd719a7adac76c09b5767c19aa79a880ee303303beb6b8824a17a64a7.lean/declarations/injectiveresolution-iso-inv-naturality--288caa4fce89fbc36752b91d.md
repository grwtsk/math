# InjectiveResolution.iso_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86da04e4-e4c4-cf63-7652-54ca41f26698",
  "kind": "lemma",
  "lexical_name": "InjectiveResolution.iso_inv_naturality",
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
  "slug": "injectiveresolution-iso-inv-naturality--288caa4fce89fbc36752b91d",
  "source": {
    "blob": "5023b82ad3f05a9aa72cbda7e98d8480f2852cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 254,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288caa4fce89fbc36752b91d9ab80dce2816ac468bd695e8ffadaef51d830020",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86da04e4-e4c4-cf63-7652-54ca41f26698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma InjectiveResolution.iso_inv_naturality {X Y : C} (f : X ⟶ Y)
    (I : InjectiveResolution X) (J : InjectiveResolution Y)
    (φ : I.cocomplex ⟶ J.cocomplex) (comm : I.ι.f 0 ≫ φ.f 0 = f ≫ J.ι.f 0) :
    I.iso.inv ≫ (injectiveResolutions C).map f =
      (HomotopyCategory.quotient _ _).map φ ≫ J.iso.inv := by
  rw [← cancel_mono (J.iso).hom, Category.assoc, iso_hom_naturality f I J φ comm,
    Iso.inv_hom_id_assoc, Category.assoc, Iso.inv_hom_id, Category.comp_id]

end

section

variable [Abelian C] [EnoughInjectives C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5023b82ad3f05a9aa72cbda7e98d8480f2852cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
