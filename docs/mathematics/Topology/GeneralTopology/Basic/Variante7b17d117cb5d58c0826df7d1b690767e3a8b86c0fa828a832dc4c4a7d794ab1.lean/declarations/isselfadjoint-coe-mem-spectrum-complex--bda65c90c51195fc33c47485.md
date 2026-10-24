# IsSelfAdjoint.coe_mem_spectrum_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6e1515a-dcd4-3140-bb0e-21999f2c465a",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.coe_mem_spectrum_complex",
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
  "slug": "isselfadjoint-coe-mem-spectrum-complex--bda65c90c51195fc33c47485",
  "source": {
    "blob": "9a232de5f4356748e118239022ae71b016052f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bda65c90c51195fc33c47485eb4d475ee61aa6efd41e2a5eab5ca00add0dd8e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6e1515a-dcd4-3140-bb0e-21999f2c465a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.coe_mem_spectrum_complex {A : Type*} [TopologicalSpace A] [Ring A]
    [StarRing A] [Algebra ℂ A] [ContinuousFunctionalCalculus ℂ A IsStarNormal]
    {a : A} {x : ℝ} (ha : IsSelfAdjoint a := by cfc_tac) :
    (x : ℂ) ∈ spectrum ℂ a ↔ x ∈ spectrum ℝ a := by
  simp [← ha.spectrumRestricts.algebraMap_image]

end SpectrumRestricts

section NonnegSpectrumClass

variable {A : Type*} [CStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a232de5f4356748e118239022ae71b016052f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
