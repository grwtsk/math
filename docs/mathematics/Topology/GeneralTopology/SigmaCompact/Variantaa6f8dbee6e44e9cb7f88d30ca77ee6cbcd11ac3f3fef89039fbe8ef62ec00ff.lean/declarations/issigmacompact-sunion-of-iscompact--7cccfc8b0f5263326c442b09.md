# isSigmaCompact_sUnion_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1a29974-da0b-fdbc-7be9-6ba033e0f8a6",
  "kind": "lemma",
  "lexical_name": "isSigmaCompact_sUnion_of_isCompact",
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
  "slug": "issigmacompact-sunion-of-iscompact--7cccfc8b0f5263326c442b09",
  "source": {
    "blob": "0dd298a20448c6ef208bf901868dcded37334039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cccfc8b0f5263326c442b095b28a9e457da749169e6b138f58899d6bf9815bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a29974-da0b-fdbc-7be9-6ba033e0f8a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSigmaCompact_sUnion_of_isCompact {S : Set (Set X)} (hc : Set.Countable S)
    (hcomp : ∀ (s : Set X), s ∈ S → IsCompact s) : IsSigmaCompact (⋃₀ S) := by
  have : Countable S := countable_coe_iff.mpr hc
  rw [sUnion_eq_iUnion]
  apply isSigmaCompact_iUnion_of_isCompact _ (fun ⟨s, hs⟩ ↦ hcomp s hs)

/-- Countable unions of σ-compact sets are σ-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variantaa6f8dbee6e44e9cb7f88d30ca77ee6cbcd11ac3f3fef89039fbe8ef62ec00ff.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd298a20448c6ef208bf901868dcded37334039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
