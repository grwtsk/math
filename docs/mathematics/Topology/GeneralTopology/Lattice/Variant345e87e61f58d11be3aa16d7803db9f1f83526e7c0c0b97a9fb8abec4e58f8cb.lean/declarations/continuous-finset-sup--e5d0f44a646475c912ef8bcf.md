# Continuous.finset_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c16fdfa9ebc1a2a379a3e78c4da9b4a7e19e34b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2029d2ea-5b7f-f018-6961-19df77aaea6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da3ddb02-654e-366e-43ba-778ec7346529",
  "kind": "lemma",
  "lexical_name": "Continuous.finset_sup",
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
  "slug": "continuous-finset-sup--e5d0f44a646475c912ef8bcf",
  "source": {
    "blob": "c16fdfa9ebc1a2a379a3e78c4da9b4a7e19e34b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d0f44a646475c912ef8bcf6e744669fa2fd0ef5343f4f4b83e2926795d3f0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da3ddb02-654e-366e-43ba-778ec7346529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Continuous.finset_sup (hs : ∀ i ∈ s, Continuous (f i)) : Continuous (s.sup f) :=
  continuous_iff_continuousAt.2 fun _ ↦ ContinuousAt.finset_sup fun i hi ↦ (hs i hi).continuousAt

end FinsetSup

section FinsetInf'

variable {ι : Type*} [SemilatticeInf L] [ContinuousInf L] {s : Finset ι}
  {f : ι → X → L} {t : Set X} {x : X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant345e87e61f58d11be3aa16d7803db9f1f83526e7c0c0b97a9fb8abec4e58f8cb.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16fdfa9ebc1a2a379a3e78c4da9b4a7e19e34b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
