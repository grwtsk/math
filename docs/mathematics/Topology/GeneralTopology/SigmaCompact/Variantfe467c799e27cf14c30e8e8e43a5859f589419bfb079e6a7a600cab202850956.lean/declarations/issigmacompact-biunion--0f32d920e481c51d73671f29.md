# isSigmaCompact_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d4dbb45-3169-de79-01ff-313fd3e12d0a",
  "kind": "lemma",
  "lexical_name": "isSigmaCompact_biUnion",
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
  "slug": "issigmacompact-biunion--0f32d920e481c51d73671f29",
  "source": {
    "blob": "f4cb963afa9e1678f649743f8e227ec21a8887aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f32d920e481c51d73671f29c6705d39fc6ef2d92f7e81dbf44d6d0da3ffa640",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d4dbb45-3169-de79-01ff-313fd3e12d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSigmaCompact_biUnion {s : Set ι} {S : ι → Set X} (hc : Set.Countable s)
    (hcomp : ∀ (i : ι), i ∈ s → IsSigmaCompact (S i)) :
    IsSigmaCompact (⋃ (i : ι) (_ : i ∈ s), S i) := by
  have : Countable ↑s := countable_coe_iff.mpr hc
  rw [biUnion_eq_iUnion]
  exact isSigmaCompact_iUnion _ (fun ⟨i', hi'⟩ ↦ hcomp i' hi')

/-- A closed subset of a σ-compact set is σ-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantfe467c799e27cf14c30e8e8e43a5859f589419bfb079e6a7a600cab202850956.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4cb963afa9e1678f649743f8e227ec21a8887aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
