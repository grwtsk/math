# ContinuousMap.UniqueHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:648d367f3dd172cbd8052a526cba1fe6beea21b6404bd6da6f607ca54cb6d3c7",
  "kind": "class",
  "lexical_name": "ContinuousMap.UniqueHom",
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
  "slug": "continuousmap-uniquehom--222265381eadd908bb0bd065",
  "source": {
    "blob": "c2c8424fa2e7b1917643fc95b1d3faf4aa1af414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:222265381eadd908bb0bd065693b56c5073608bc13c67fc76d18a82c1037a54b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:648d367f3dd172cbd8052a526cba1fe6beea21b6404bd6da6f607ca54cb6d3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousMap.UniqueHom (R A : Type*) [CommSemiring R] [StarRing R]
    [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [Ring A] [StarRing A]
    [TopologicalSpace A] [Algebra R A] : Prop where
  eq_of_continuous_of_map_id (s : Set R) [CompactSpace s]
    (φ ψ : C(s, R) →⋆ₐ[R] A) (hφ : Continuous φ) (hψ : Continuous ψ)
    (h : φ (.restrict s <| .id R) = ψ (.restrict s <| .id R)) :
    φ = ψ

@[deprecated (since := "2025-01-10")] alias UniqueContinuousFunctionalCalculus :=
  ContinuousMap.UniqueHom

variable {R A : Type*} {p : A → Prop} [CommSemiring R] [StarRing R] [MetricSpace R]
variable [IsTopologicalSemiring R] [ContinuousStar R] [TopologicalSpace A] [Ring A] [StarRing A]
variable [Algebra R A] [instCFC : ContinuousFunctionalCalculus R A p]

include instCFC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c8424fa2e7b1917643fc95b1d3faf4aa1af414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
