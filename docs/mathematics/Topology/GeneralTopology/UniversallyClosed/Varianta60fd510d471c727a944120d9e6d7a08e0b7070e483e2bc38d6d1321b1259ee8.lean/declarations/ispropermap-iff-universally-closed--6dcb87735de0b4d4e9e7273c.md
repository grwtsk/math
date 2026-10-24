# isProperMap_iff_universally_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0de06a8a-7620-a258-bc37-3a1e795ec227",
  "kind": "theorem",
  "lexical_name": "isProperMap_iff_universally_closed",
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
  "slug": "ispropermap-iff-universally-closed--6dcb87735de0b4d4e9e7273c",
  "source": {
    "blob": "0563b96a95c11bfb0010be423fb2ffc9da2cb0da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dcb87735de0b4d4e9e7273cfd2224753310813eab6df0ed9f82f7d9246da95d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de06a8a-7620-a258-bc37-3a1e795ec227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProperMap_iff_universally_closed {X : Type u} {Y : Type v} [TopologicalSpace X]
    [TopologicalSpace Y] {f : X → Y} :
    IsProperMap f ↔ Continuous f ∧ ∀ (Z : Type u) [TopologicalSpace Z],
      IsClosedMap (Prod.map f id : X × Z → Y × Z) := by
  constructor <;> intro H
  · exact ⟨H.continuous, fun Z ↦ H.universally_closed _⟩
  · rw [isProperMap_iff_isClosedMap_ultrafilter]
    exact ⟨H.1, H.2 _⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0563b96a95c11bfb0010be423fb2ffc9da2cb0da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
