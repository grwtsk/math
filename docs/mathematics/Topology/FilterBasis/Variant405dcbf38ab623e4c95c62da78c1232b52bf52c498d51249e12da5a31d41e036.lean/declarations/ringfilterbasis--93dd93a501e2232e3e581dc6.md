# RingFilterBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6556f6cd6d3ce7539e5ceaa0a14ea6b27e4ed3e77e4c8fc25ef73c1de0d5519",
  "kind": "class",
  "lexical_name": "RingFilterBasis",
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
  "slug": "ringfilterbasis--93dd93a501e2232e3e581dc6",
  "source": {
    "blob": "1c6ee90865126cced448657ca0a082a133677a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93dd93a501e2232e3e581dc6e46e7ed067183ba42be4e3b213617f9ba084ef56",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6556f6cd6d3ce7539e5ceaa0a14ea6b27e4ed3e77e4c8fc25ef73c1de0d5519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class RingFilterBasis (R : Type u) [Ring R] extends AddGroupFilterBasis R where
  mul' : ∀ {U}, U ∈ sets → ∃ V ∈ sets, V * V ⊆ U
  mul_left' : ∀ (x₀ : R) {U}, U ∈ sets → ∃ V ∈ sets, V ⊆ (fun x ↦ x₀ * x) ⁻¹' U
  mul_right' : ∀ (x₀ : R) {U}, U ∈ sets → ∃ V ∈ sets, V ⊆ (fun x ↦ x * x₀) ⁻¹' U

namespace RingFilterBasis

variable {R : Type u} [Ring R] (B : RingFilterBasis R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variant405dcbf38ab623e4c95c62da78c1232b52bf52c498d51249e12da5a31d41e036.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c6ee90865126cced448657ca0a082a133677a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
