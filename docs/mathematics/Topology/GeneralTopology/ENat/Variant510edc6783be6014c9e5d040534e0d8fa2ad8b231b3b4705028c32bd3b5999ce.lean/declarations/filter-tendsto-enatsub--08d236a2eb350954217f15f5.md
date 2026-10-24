# Filter.Tendsto.enatSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae0ae35c52cb5506685b51bd15cd8e0684743f8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:221f2d8e-1715-7e0a-7a5c-347a8cdc5377",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4992fe59-2451-41d5-f450-6e5950bc651b",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.enatSub",
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
  "slug": "filter-tendsto-enatsub--08d236a2eb350954217f15f5",
  "source": {
    "blob": "ae0ae35c52cb5506685b51bd15cd8e0684743f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d236a2eb350954217f15f5cc932806e3230446d86672bcf1a557452265f8de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4992fe59-2451-41d5-f450-6e5950bc651b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.enatSub {α : Type*} {l : Filter α} {f g : α → ℕ∞} {a b : ℕ∞}
    (hf : Tendsto f l (𝓝 a)) (hg : Tendsto g l (𝓝 b)) (h : a ≠ ⊤ ∨ b ≠ ⊤) :
    Tendsto (fun x ↦ f x - g x) l (𝓝 (a - b)) :=
  (ENat.continuousAt_sub h).tendsto.comp (hf.prodMk_nhds hg)

variable {X : Type*} [TopologicalSpace X] {f g : X → ℕ∞} {s : Set X} {x : X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENat/Variant510edc6783be6014c9e5d040534e0d8fa2ad8b231b3b4705028c32bd3b5999ce.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0ae35c52cb5506685b51bd15cd8e0684743f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
