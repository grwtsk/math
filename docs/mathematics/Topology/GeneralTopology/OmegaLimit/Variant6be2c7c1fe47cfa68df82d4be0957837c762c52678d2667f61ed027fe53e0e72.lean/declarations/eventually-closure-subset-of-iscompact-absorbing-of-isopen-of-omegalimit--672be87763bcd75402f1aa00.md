# eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c8639944a420ef8209865a0063cbae1679adf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25a6ea59-3300-8e94-a27b-59505159b898",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a845d52c-7805-9e40-c68b-ecd2ec53cb1a",
  "kind": "theorem",
  "lexical_name": "eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset",
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
  "slug": "eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--672be87763bcd75402f1aa00",
  "source": {
    "blob": "45c8639944a420ef8209865a0063cbae1679adf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:672be87763bcd75402f1aa0091d22c5ca72d88c8454ecaaa768113ff225cbdff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a845d52c-7805-9e40-c68b-ecd2ec53cb1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset [T2Space β]
    {c : Set β} (hc₁ : IsCompact c) (hc₂ : ∀ᶠ t in f, MapsTo (ϕ t) s c) {n : Set β} (hn₁ : IsOpen n)
    (hn₂ : ω f ϕ s ⊆ n) : ∃ u ∈ f, closure (image2 ϕ u s) ⊆ n :=
  eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset' f ϕ _ hc₁
    ⟨_, hc₂, closure_minimal (image2_subset_iff.2 fun _t ↦ id) hc₁.isClosed⟩ hn₁ hn₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6be2c7c1fe47cfa68df82d4be0957837c762c52678d2667f61ed027fe53e0e72.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c8639944a420ef8209865a0063cbae1679adf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
