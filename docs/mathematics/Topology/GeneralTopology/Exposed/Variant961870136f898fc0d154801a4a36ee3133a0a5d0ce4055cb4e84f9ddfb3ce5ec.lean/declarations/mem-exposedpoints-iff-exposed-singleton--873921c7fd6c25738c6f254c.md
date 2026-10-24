# mem_exposedPoints_iff_exposed_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf2234b8-b746-db0a-a8d0-c8fb298815cc",
  "kind": "theorem",
  "lexical_name": "mem_exposedPoints_iff_exposed_singleton",
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
  "slug": "mem-exposedpoints-iff-exposed-singleton--873921c7fd6c25738c6f254c",
  "source": {
    "blob": "015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:873921c7fd6c25738c6f254c90228d362ade5f8a4de9d3415fa32b257b486def",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf2234b8-b746-db0a-a8d0-c8fb298815cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_exposedPoints_iff_exposed_singleton : x ∈ A.exposedPoints 𝕜 ↔ IsExposed 𝕜 A {x} := by
  use fun ⟨hxA, l, hl⟩ _ =>
    ⟨l,
      Eq.symm <|
        eq_singleton_iff_unique_mem.2
          ⟨⟨hxA, fun y hy => (hl y hy).1⟩, fun z hz => (hl z hz.1).2 (hz.2 x hxA)⟩⟩
  rintro h
  obtain ⟨l, hl⟩ := h ⟨x, mem_singleton _⟩
  rw [eq_comm, eq_singleton_iff_unique_mem] at hl
  exact
    ⟨hl.1.1, l, fun y hy =>
      ⟨hl.1.2 y hy, fun hxy => hl.2 y ⟨hy, fun z hz => (hl.1.2 z hz).trans hxy⟩⟩⟩

end OrderedRing

section LinearOrderedRing

variable {𝕜 : Type*} {E : Type*} [TopologicalSpace 𝕜]
  [Ring 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜] [AddCommMonoid E]
  [TopologicalSpace E] [Module 𝕜 E] {A B : Set E}

namespace IsExposed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
