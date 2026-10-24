# ContMDiffConstVAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61e47dce38b4593faa36dcdeba15b801b0684316f7bc391eedcc7eb85d429a70",
  "kind": "class",
  "lexical_name": "ContMDiffConstVAdd",
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
  "slug": "contmdiffconstvadd--2b0e4190cc64d44ba9b648f3",
  "source": {
    "blob": "133c52bfb2ea666e9e74295e250a0d59ed1ff523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b0e4190cc64d44ba9b648f3873d949354d67673429fd4f6a410831be7a5dec3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61e47dce38b4593faa36dcdeba15b801b0684316f7bc391eedcc7eb85d429a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContMDiffConstVAdd {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] (I : ModelWithCorners 𝕜 E H) (n : ℕ∞ω)
    (Γ : Type*) (M : Type*) [TopologicalSpace M] [ChartedSpace H M] [VAdd Γ M] : Prop where
  /-- For each `γ : Γ`, the map `fun x : M ↦ γ +ᵥ x` is Cⁿ. -/
  contMDiff_const_vadd : ∀ γ : Γ, CMDiff n fun x : M ↦ γ +ᵥ x

/-- Typeclass stating that for each `γ : Γ`, the scalar multiplication `fun x : M ↦ γ • x` is Cⁿ.
Unlike `ContMDiffSMul` (which requires the action to be Cⁿ jointly as a map `Γ × M → M`), no
topology or manifold structure on `Γ` is required, so this class also covers actions of discrete
groups by Cⁿ maps, e.g. the properly discontinuous actions used to construct quotient manifolds. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133c52bfb2ea666e9e74295e250a0d59ed1ff523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
