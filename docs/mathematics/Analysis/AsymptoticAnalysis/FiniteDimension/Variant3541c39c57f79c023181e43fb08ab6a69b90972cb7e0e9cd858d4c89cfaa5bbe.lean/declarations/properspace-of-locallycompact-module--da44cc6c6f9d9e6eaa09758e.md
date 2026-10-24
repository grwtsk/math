# ProperSpace.of_locallyCompact_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b062d90de34c20f22dad20698201f7fd979ca193",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e611f71-a971-764f-51c3-a978b64d99ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00e26995-45fb-1513-dc07-db8f2cf3715c",
  "kind": "lemma",
  "lexical_name": "ProperSpace.of_locallyCompact_module",
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
  "slug": "properspace-of-locallycompact-module--da44cc6c6f9d9e6eaa09758e",
  "source": {
    "blob": "b062d90de34c20f22dad20698201f7fd979ca193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 492,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da44cc6c6f9d9e6eaa09758e66d765f6d1041578351489656e30c3bf7f6af36a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e26995-45fb-1513-dc07-db8f2cf3715c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProperSpace.of_locallyCompact_module [Nontrivial E] [LocallyCompactSpace E] :
    ProperSpace 𝕜 :=
  have : LocallyCompactSpace 𝕜 := by
    obtain ⟨v, hv⟩ : ∃ v : E, v ≠ 0 := exists_ne 0
    let L : 𝕜 → E := fun t ↦ t • v
    have : IsClosedEmbedding L := isClosedEmbedding_smul_left hv
    apply IsClosedEmbedding.locallyCompactSpace this
  .of_locallyCompactSpace 𝕜

end Riesz

open ContinuousLinearMap

/-- Continuous linear equivalence between continuous linear functions `𝕜ⁿ → E` and `Eⁿ`.
The spaces `𝕜ⁿ` and `Eⁿ` are represented as `ι → 𝕜` and `ι → E`, respectively,
where `ι` is a finite type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b062d90de34c20f22dad20698201f7fd979ca193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
