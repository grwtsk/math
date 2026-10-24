# IsUniformEmbedding.isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e524957-4d29-4f61-0130-2988ab5d0d5c",
  "kind": "theorem",
  "lexical_name": "IsUniformEmbedding.isClosedEmbedding",
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
  "slug": "isuniformembedding-isclosedembedding--fcba036e1b61df1a024f20a2",
  "source": {
    "blob": "8910c4c20ce43ffade35c03ed02461b42c0bfe11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcba036e1b61df1a024f20a230c0557419969ecaf83cac8d655ce3c408806a3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e524957-4d29-4f61-0130-2988ab5d0d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUniformEmbedding.isClosedEmbedding [UniformSpace α] [UniformSpace β] [CompleteSpace α]
    [T0Space β] {f : α → β} (hf : IsUniformEmbedding f) :
    IsClosedEmbedding f :=
  ⟨hf.isEmbedding, hf.isUniformInducing.isComplete_range.isClosed⟩

@[deprecated (since := "2024-10-30")]
alias IsUniformEmbedding.toIsClosedEmbedding := IsUniformEmbedding.isClosedEmbedding

namespace IsDenseInducing

open Filter

variable [TopologicalSpace α] {β : Type*} [TopologicalSpace β]
variable {γ : Type*} [UniformSpace γ] [CompleteSpace γ] [T0Space γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompleteSeparated/Variant0cc808cabc9065c485fd8869e026b126cd655b4a9977ddec36b45ceb09d818bf.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8910c4c20ce43ffade35c03ed02461b42c0bfe11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
