# ModuleFilterBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18eee88ff74a7af466cef73efaf610966173badca8918c0e6dc048f898dede5d",
  "kind": "structure",
  "lexical_name": "ModuleFilterBasis",
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
  "slug": "modulefilterbasis--1ebff69bb61208e77aaa791a",
  "source": {
    "blob": "b7caf0144c9aa0c10f4b48059ff7b54c578b4ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 304,
    "path": "GRWTSK/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ebff69bb61208e77aaa791a2ae021b5906afbd984bc8ea6ab8aa995b9028472",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18eee88ff74a7af466cef73efaf610966173badca8918c0e6dc048f898dede5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ModuleFilterBasis (R M : Type*) [Semiring R] [TopologicalSpace R] [AddCommGroup M]
  [Module R M] extends AddGroupFilterBasis M where
  smul' : ∀ {U}, U ∈ sets → ∃ V ∈ 𝓝 (0 : R), ∃ W ∈ sets, V • W ⊆ U
  smul_left' : ∀ (x₀ : R) {U}, U ∈ sets → ∃ V ∈ sets, V ⊆ (fun x ↦ x₀ • x) ⁻¹' U
  smul_right' : ∀ (m₀ : M) {U}, U ∈ sets → ∀ᶠ x in 𝓝 (0 : R), x • m₀ ∈ U

namespace ModuleFilterBasis

section Semiring

variable {R M : Type*} [Semiring R] [TopologicalSpace R] [AddCommGroup M] [Module R M]
  (B : ModuleFilterBasis R M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7caf0144c9aa0c10f4b48059ff7b54c578b4ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
