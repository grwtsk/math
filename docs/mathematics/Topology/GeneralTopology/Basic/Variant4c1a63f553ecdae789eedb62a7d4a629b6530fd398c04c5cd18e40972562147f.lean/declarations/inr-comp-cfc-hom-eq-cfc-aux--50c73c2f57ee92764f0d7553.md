# inr_comp_cfcₙHom_eq_cfcₙAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ea2edeb-f773-3fa5-b07c-287b0aea1895",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12843426-704d-3b5e-13ca-f9168b299907",
  "kind": "lemma",
  "lexical_name": "inr_comp_cfcₙHom_eq_cfcₙAux",
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
  "slug": "inr-comp-cfc-hom-eq-cfc-aux--50c73c2f57ee92764f0d7553",
  "source": {
    "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c73c2f57ee92764f0d75534c2d17559553b975fe43ee2a0267a5aa2eed5be8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12843426-704d-3b5e-13ca-f9168b299907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inr_comp_cfcₙHom_eq_cfcₙAux (a : A) [ha : IsStarNormal a] :
    (inrNonUnitalStarAlgHom ℂ A).comp (cfcₙHom ha) = cfcₙAux (isStarNormal_inr (R := ℂ)) a ha :=
  inrNonUnitalStarAlgHom_comp_cfcₙHom_eq_cfcₙAux isStarNormal_inr a ha

open ContinuousMapZero in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3536311b45a48c088fd7823ccada2dca075665e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
