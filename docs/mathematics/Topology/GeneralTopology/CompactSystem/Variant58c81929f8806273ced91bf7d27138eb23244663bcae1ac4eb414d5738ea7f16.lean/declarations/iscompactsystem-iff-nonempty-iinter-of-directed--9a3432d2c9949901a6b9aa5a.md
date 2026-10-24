# isCompactSystem_iff_nonempty_iInter_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fac10ad-24a1-4ebe-ea01-e85fdb005970",
  "kind": "theorem",
  "lexical_name": "isCompactSystem_iff_nonempty_iInter_of_directed",
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
  "slug": "iscompactsystem-iff-nonempty-iinter-of-directed--9a3432d2c9949901a6b9aa5a",
  "source": {
    "blob": "d8c71a8f734d3b18de0b0d8d75a6e89a0506d089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/CompactSystem/Variant58c81929f8806273ced91bf7d27138eb23244663bcae1ac4eb414d5738ea7f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3432d2c9949901a6b9aa5a883e6bd342ed5159c8094d8fe77832f5d7d89da9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactSystem/Variant58c81929f8806273ced91bf7d27138eb23244663bcae1ac4eb414d5738ea7f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fac10ad-24a1-4ebe-ea01-e85fdb005970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompactSystem_iff_nonempty_iInter_of_directed (hpi : IsPiSystem S) :
    IsCompactSystem S ↔
    ∀ (C : ℕ → Set α), (Directed (· ⊇ ·) C) → (∀ i, C i ∈ S) → (∀ n, (C n).Nonempty) →
      (⋂ i, C i).Nonempty := by
  rw [isCompactSystem_iff_of_directed hpi]
  refine ⟨fun h1 C h3 h4 ↦ ?_, fun h1 C h3 s ↦ ?_⟩ <;> contrapose!
  · exact h1 C h3 h4
  · exact h1 C h3 s

section IsCompactIsClosed

/-- The set of compact and closed sets is a compact system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactSystem/Variant58c81929f8806273ced91bf7d27138eb23244663bcae1ac4eb414d5738ea7f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactSystem/Variant58c81929f8806273ced91bf7d27138eb23244663bcae1ac4eb414d5738ea7f16.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c71a8f734d3b18de0b0d8d75a6e89a0506d089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
