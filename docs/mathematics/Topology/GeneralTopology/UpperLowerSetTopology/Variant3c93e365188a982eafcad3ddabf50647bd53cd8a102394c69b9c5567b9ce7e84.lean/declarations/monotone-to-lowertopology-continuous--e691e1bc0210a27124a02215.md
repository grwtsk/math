# Monotone_to_LowerTopology_Continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba25ac24-0391-2b01-e501-8b3459479a2f",
  "kind": "lemma",
  "lexical_name": "Monotone_to_LowerTopology_Continuous",
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
  "slug": "monotone-to-lowertopology-continuous--e691e1bc0210a27124a02215",
  "source": {
    "blob": "0d66285de15d86a95e5e7df2792f0a0472c4270c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 436,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e691e1bc0210a27124a02215a9934cb49de7ab40bcc52cd0d2a09ccf37b086fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba25ac24-0391-2b01-e501-8b3459479a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monotone_to_LowerTopology_Continuous [TopologicalSpace α]
    [LowerSetTopology α] [TopologicalSpace β] [LowerTopology β] {f : α → β} (hf : Monotone f) :
    Continuous f := by
  apply UpperSetTopology.Monotone_to_UpperTopology_Continuous (α := αᵒᵈ) (β := βᵒᵈ)
    (f:= (toDual ∘ f ∘ ofDual : αᵒᵈ → βᵒᵈ))
  exact Monotone.dual hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d66285de15d86a95e5e7df2792f0a0472c4270c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
