# prototype_model_identities_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086f17e77921c6fe367bd90320669c52e8bee0b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8daa95e-40f9-6094-5ed7-6f41bb7dbe0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02ace26a-e61b-dee6-b3e0-ae07c5f58612",
  "kind": "theorem",
  "lexical_name": "prototype_model_identities_injective",
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
  "slug": "prototype-model-identities-injective--009a86df210ebd260b97361e",
  "source": {
    "blob": "086f17e77921c6fe367bd90320669c52e8bee0b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 318,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009a86df210ebd260b97361e9e86e6f1e0277bda6a079ea2893e6dace0c6257e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ace26a-e61b-dee6-b3e0-ae07c5f58612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prototype_model_identities_injective :
    Function.Injective fun model : PrototypeModel =>
      (prototypeWorldModel model).identity := by
  intro left right equal
  cases left <;> cases right <;>
    simp [prototypeWorldModel, prototypeModelIdentity,
      prototypeModelId] at equal ⊢

/-- Complete finite world-model registry for the five wrappers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variantd9b7c26aa09e969362ae0161f1782f96e2bf0d9ebde26a667475fa3bd521432b.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086f17e77921c6fe367bd90320669c52e8bee0b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
