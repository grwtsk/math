# simply_connected_iff_unique_homotopic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95968725497e01a32255909775b1ae8d6ef2b025",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad73a4de-86bb-8072-9e1b-398c501eeef3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66300881-b5c0-94e3-6747-c957de7825cb",
  "kind": "theorem",
  "lexical_name": "simply_connected_iff_unique_homotopic",
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
  "slug": "simply-connected-iff-unique-homotopic--b351157c592f938153cdca86",
  "source": {
    "blob": "95968725497e01a32255909775b1ae8d6ef2b025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b351157c592f938153cdca8628c38a08766afee2ea6adb999702806e7345e235",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66300881-b5c0-94e3-6747-c957de7825cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simply_connected_iff_unique_homotopic (X : Type*) [TopologicalSpace X] :
    SimplyConnectedSpace X ↔
      Nonempty X ∧ ∀ x y : X, Nonempty (Unique (Path.Homotopic.Quotient x y)) := by
  rw [simply_connected_def, equiv_punit_iff_unique]; rfl
#align simply_connected_iff_unique_homotopic simply_connected_iff_unique_homotopic

namespace SimplyConnectedSpace

variable {X : Type*} [TopologicalSpace X] [SimplyConnectedSpace X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95968725497e01a32255909775b1ae8d6ef2b025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
