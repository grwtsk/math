# continuousOn_iff'_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1951,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:608ba485-5202-6e73-c538-33f76e501574",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a49546a7-e084-44c6-fdaa-78e17a594b9a",
  "kind": "theorem",
  "lexical_name": "continuousOn_iff'_right",
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
  "slug": "continuouson-iff-right--7eb5f6b3bd1ac8f051675734",
  "source": {
    "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1955,
    "line": 1951,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eb5f6b3bd1ac8f0516757342e62708d7aa0949ea33bf52dd3836cce6cb2c13e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49546a7-e084-44c6-fdaa-78e17a594b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1951–1955.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_iff'_right [TopologicalSpace β] {f : β → α} {s : Set β} :
    ContinuousOn f s ↔ ∀ b ∈ s, Tendsto (fun x => (f b, f x)) (𝓝[s] b) (𝓤 α) := by
  simp [ContinuousOn, continuousWithinAt_iff'_right]
#align uniform.continuous_on_iff'_right Uniform.continuousOn_iff'_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean#L1951).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095842172c30b0f12e6f84aa2a9ef6bac9e1441b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
