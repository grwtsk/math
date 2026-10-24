# IsCompactOperator.codRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23bab783-ca9b-bc43-8a37-827a59b32423",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cf48535-a115-1187-37ec-209b09712f87",
  "kind": "theorem",
  "lexical_name": "IsCompactOperator.codRestrict",
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
  "slug": "iscompactoperator-codrestrict--6d306627b8d8f3da8a77df8b",
  "source": {
    "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d306627b8d8f3da8a77df8bd2990a4675c1c147c5c5722afd434fd6bdcf53cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cf48535-a115-1187-37ec-209b09712f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompactOperator.codRestrict {f : M₁ → M₂} (hf : IsCompactOperator f) {V : Submodule R₂ M₂}
    (hV : ∀ x, f x ∈ V) (h_closed : IsClosed (V : Set M₂)) :
    IsCompactOperator (Set.codRestrict f V hV) :=
  let ⟨_, hK, hKf⟩ := hf
  ⟨_, (closedEmbedding_subtype_val h_closed).isCompact_preimage hK, hKf⟩
#align is_compact_operator.cod_restrict IsCompactOperator.codRestrict

end CodRestrict

section Restrict

variable {R₁ R₂ R₃ : Type*} [Semiring R₁] [Semiring R₂] [Semiring R₃] {σ₁₂ : R₁ →+* R₂}
  {σ₂₃ : R₂ →+* R₃} {M₁ M₂ M₃ : Type*} [TopologicalSpace M₁] [UniformSpace M₂]
  [TopologicalSpace M₃] [AddCommMonoid M₁] [AddCommMonoid M₂] [AddCommMonoid M₃] [Module R₁ M₁]
  [Module R₂ M₂] [Module R₃ M₃]

/-- If a compact operator preserves a closed submodule, its restriction to that submodule is
compact.

Note that, following mathlib's convention in linear algebra, `restrict` designates the restriction
of an endomorphism `f : E →ₗ E` to an endomorphism `f' : ↥V →ₗ ↥V`. To prove that the restriction
`f' : ↥U →ₛₗ ↥V` of a compact operator `f : E →ₛₗ F` is compact, apply
`IsCompactOperator.codRestrict` to `f ∘ U.subtypeL`, which is compact by
`IsCompactOperator.comp_clm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6f20323928ec80e6345c793fe419bff2da9f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
