# eq_Icc_of_connected_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e1982cb6cd1f808ded359ffdb0afa8ee9a8bdba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23707f5b-a3d0-2ade-8031-107af6362d93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f52d5df-c04d-cc24-5f5e-ea28d7855631",
  "kind": "theorem",
  "lexical_name": "eq_Icc_of_connected_compact",
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
  "slug": "eq-icc-of-connected-compact--142ec97a5d27f6e1516209ad",
  "source": {
    "blob": "8e1982cb6cd1f808ded359ffdb0afa8ee9a8bdba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 462,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142ec97a5d27f6e1516209ad718e9c60920990ddede857cf61610cb94b35b554",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f52d5df-c04d-cc24-5f5e-ea28d7855631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem eq_Icc_of_connected_compact {s : Set α} (h₁ : IsConnected s) (h₂ : IsCompact s) :
    s = Icc (sInf s) (sSup s) :=
  eq_Icc_csInf_csSup_of_connected_bdd_closed h₁ h₂.bddBelow h₂.bddAbove h₂.isClosed

/-- If `f : γ → β → α` is a function that is continuous as a function on `γ × β`, `α` is a
conditionally complete linear order, and `K : Set β` is a compact set, then
`fun x ↦ sSup (f x '' K)` is a continuous function. -/
/- TODO: generalize. The following version seems to be true:
```
theorem IsCompact.tendsto_sSup {f : γ → β → α} {g : β → α} {K : Set β} {l : Filter γ}
    (hK : IsCompact K) (hf : ∀ y ∈ K, Tendsto ↿f (l ×ˢ 𝓝[K] y) (𝓝 (g y)))
    (hgc : ContinuousOn g K) :
    Tendsto (fun x => sSup (f x '' K)) l (𝓝 (sSup (g '' K))) := _
```
Moreover, it seems that `hgc` follows from `hf` (Yury Kudryashov). -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e1982cb6cd1f808ded359ffdb0afa8ee9a8bdba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
