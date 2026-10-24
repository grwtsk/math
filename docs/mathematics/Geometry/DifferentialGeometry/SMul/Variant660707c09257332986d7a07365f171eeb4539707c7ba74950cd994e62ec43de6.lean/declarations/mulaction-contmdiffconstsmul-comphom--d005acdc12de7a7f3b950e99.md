# MulAction.contMDiffConstSMul_compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "133c52bfb2ea666e9e74295e250a0d59ed1ff523",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db06a7da-b03a-1a96-747b-01bc1f4fd53b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aabce59c-b069-3eca-5cdc-23e2242845bf",
  "kind": "theorem",
  "lexical_name": "MulAction.contMDiffConstSMul_compHom",
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
  "slug": "mulaction-contmdiffconstsmul-comphom--d005acdc12de7a7f3b950e99",
  "source": {
    "blob": "133c52bfb2ea666e9e74295e250a0d59ed1ff523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 317,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d005acdc12de7a7f3b950e99e9649021fc48d8d9946bdf479146c36c091e905d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aabce59c-b069-3eca-5cdc-23e2242845bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulAction.contMDiffConstSMul_compHom {Γ Γ' : Type*} [Monoid Γ] [MulAction Γ M]
    [ContMDiffConstSMul I n Γ M] [Monoid Γ'] {f : Γ' →* Γ} :
    letI : MulAction Γ' M := MulAction.compHom _ f
    ContMDiffConstSMul I n Γ' M := by
  let _ : MulAction Γ' M := MulAction.compHom _ f
  exact ⟨fun g ↦ contMDiff_id.const_smul (f g)⟩

end ContMDiffConstSMul

section Diffeomorph

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {H : Type*} [TopologicalSpace H]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] {I : ModelWithCorners 𝕜 E H}
  {H' : Type*} [TopologicalSpace H']
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {I' : ModelWithCorners 𝕜 E' H'}
  {G : Type*} [TopologicalSpace G] [ChartedSpace H G]
  {M : Type*} [TopologicalSpace M] [ChartedSpace H' M]
  [Group G] [MulAction G M] {n : ℕ∞ω} [ContMDiffSMul I I' n G M] (g : G)

variable (I I' n) in
/-- The diffeomorphism given by scalar multiplication by an element of a group `G` acting
Cⁿ-differentiably on a manifold `M` is a diffeomorphism from `M` to itself. Its inverse is scalar
multiplication by `g⁻¹`. -/
@[expose, to_additive
/-- The diffeomorphism given by affine-addition of an element of an additive group `G` acting
Cⁿ-differentiably on a manifold `M` is a diffeomorphism from `M` to itself. Its inverse is
addition of `-g`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133c52bfb2ea666e9e74295e250a0d59ed1ff523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
