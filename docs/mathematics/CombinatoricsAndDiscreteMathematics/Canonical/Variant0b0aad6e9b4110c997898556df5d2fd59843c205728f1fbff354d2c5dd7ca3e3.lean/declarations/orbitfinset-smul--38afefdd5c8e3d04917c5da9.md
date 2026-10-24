# orbitFinset_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c59965d204bc8a633c06bc489194416d598b6189",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9643521b-680b-322f-dc5c-4f6eb2c9b468",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:044ed1a7-126d-9244-8b02-8f6333c7765a",
  "kind": "theorem",
  "lexical_name": "orbitFinset_smul",
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
  "slug": "orbitfinset-smul--38afefdd5c8e3d04917c5da9",
  "source": {
    "blob": "c59965d204bc8a633c06bc489194416d598b6189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38afefdd5c8e3d04917c5da9577e9f17d78c62d8f2835d79e7deb1b27e64dc26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:044ed1a7-126d-9244-8b02-8f6333c7765a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitFinset_smul
    (automorphism : GroupCarrier)
    (value : Carrier) :
    orbitFinset GroupCarrier Carrier
        (automorphism • value) =
      orbitFinset GroupCarrier Carrier value := by
  ext candidate
  simp only
    [orbitFinset, Finset.mem_image,
      Finset.mem_univ, true_and]
  constructor
  · rintro ⟨transport, rfl⟩
    refine ⟨transport * automorphism, ?_⟩
    simp [mul_smul]
  · rintro ⟨transport, rfl⟩
    refine
      ⟨transport * automorphism⁻¹, ?_⟩
    simp [mul_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Canonical/Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c59965d204bc8a633c06bc489194416d598b6189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
