# ofFreeGroupHom_toGenerators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c466bd63950d6c287caee57204e1bb324e8cea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:feae0001-42df-a82c-cce8-09daf5174ea2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84dea481-76f8-e9b4-8bc9-66d38a96cb09",
  "kind": "lemma",
  "lexical_name": "ofFreeGroupHom_toGenerators",
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
  "slug": "offreegrouphom-togenerators--4c30ec5c1ed0ff2460ad1079",
  "source": {
    "blob": "4c466bd63950d6c287caee57204e1bb324e8cea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 70,
    "path": "GRWTSK/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c30ec5c1ed0ff2460ad1079ce0edd53c6a70c71f50c488fda3e0a92273bf2c8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84dea481-76f8-e9b4-8bc9-66d38a96cb09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofFreeGroupHom_toGenerators (φ : FreeGroup ι →* G) (hφ : Function.Surjective φ)
    (rel : Set (FreeGroup ι)) (hrel : φ.ker = Subgroup.normalClosure rel) :
    (Group.Presentation.ofFreeGroupHom φ hφ rel hrel).toGenerators =
      Group.Generators.ofFreeGroupHom φ hφ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c466bd63950d6c287caee57204e1bb324e8cea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
