# NonUnitalStarAlgHom.toOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb7a0964a14948c8eb7b9891585301b9367cfd2dd9d9481898bb26d397459aca",
  "kind": "def",
  "lexical_name": "NonUnitalStarAlgHom.toOrderEmbedding",
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
  "slug": "nonunitalstaralghom-toorderembedding--a3482a074554cf90c30871bb",
  "source": {
    "blob": "073cfb8e82dce06607880a14b3d1e20c9af8ea5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3482a074554cf90c30871bbcdd15b17cdf3a3fb25380887f471fa7c11b2e857",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb7a0964a14948c8eb7b9891585301b9367cfd2dd9d9481898bb26d397459aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NonUnitalStarAlgHom.toOrderEmbedding (φ : A →⋆ₙₐ[ℂ] B) (hφ : Function.Injective φ) :
    A ↪o B where
  toFun := φ
  inj' := hφ
  map_rel_iff' {a b} := by
    simp only [Function.Embedding.coeFn_mk]
    refine ⟨?_, (OrderHomClass.mono φ ·)⟩
    rw [← sub_nonneg, ← sub_nonneg (a := b), ← map_sub φ]
    simp_rw [nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts, QuasispectrumRestricts.nnreal_iff]
    rintro ⟨h₁, h₂⟩
    have h_sa := h₁.of_map φ hφ
    exact ⟨h_sa, by rwa [← h_sa.map_quasispectrum_real φ hφ]⟩

/-- A non-unital star monomorphism between C⋆-algebras is an order embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `073cfb8e82dce06607880a14b3d1e20c9af8ea5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
