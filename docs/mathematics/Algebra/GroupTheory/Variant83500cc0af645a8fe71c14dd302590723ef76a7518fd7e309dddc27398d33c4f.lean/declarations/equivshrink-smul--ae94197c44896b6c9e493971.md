# equivShrink_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21e3d79e399829c0d14615cc0ef25dcad1a1666a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2b9b56e-b64d-7b3f-2036-405ec9108e8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92d3d1fd-a304-1600-e8be-1513b4a28278",
  "kind": "lemma",
  "lexical_name": "equivShrink_smul",
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
  "slug": "equivshrink-smul--ae94197c44896b6c9e493971",
  "source": {
    "blob": "21e3d79e399829c0d14615cc0ef25dcad1a1666a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Algebra/Group/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae94197c44896b6c9e4939715b72bd4c77d71abcc87490fd804216895bd03431",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d3d1fd-a304-1600-e8be-1513b4a28278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivShrink_smul {R : Type*} [SMul R α] [Small α] (r : R) (x : α) :
    equivShrink α (r • x) = r • equivShrink α x := by
  rw [Equiv.smul_def]
  simp

-- TODO: noncomputable has to be specified explicitly. https://github.com/leanprover-community/mathlib4/issues/1074 (item 8)
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupTheory/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Group/Variant83500cc0af645a8fe71c14dd302590723ef76a7518fd7e309dddc27398d33c4f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e3d79e399829c0d14615cc0ef25dcad1a1666a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
