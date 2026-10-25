# finalResidues_targets_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e3f6d507f6b8617ffa50a80cb54609975c3f192",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dce0e996e6b3d8cec1a87acd970fa0449ec9e190a42cf6d7e02ede5d7ffddc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:101d7421-94be-b96d-800e-b801b045f019",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20282997-1a49-30b5-4b43-122943b1da34",
  "kind": "theorem",
  "lexical_name": "finalResidues_targets_correct",
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
  "slug": "finalresidues-targets-correct--29105a666d1a1b5522c8c4fd",
  "source": {
    "blob": "5e3f6d507f6b8617ffa50a80cb54609975c3f192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M546172676574732f4d6f64756c61726974792e6c65616e/Variant9dce0e996e6b3d8cec1a87acd970fa0449ec9e190a42cf6d7e02ede5d7ffddc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29105a666d1a1b5522c8c4fda423a0acf1b9f4708b716f88a161b18433a3d215",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M546172676574732f4d6f64756c61726974792e6c65616e/Variant9dce0e996e6b3d8cec1a87acd970fa0449ec9e190a42cf6d7e02ede5d7ffddc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20282997-1a49-30b5-4b43-122943b1da34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finalResidues_targets_correct (ctx : Context) :
    ∀ r ∈ finalResidues ctx, r.target = Target.Modularity := by
  intro r hr
  rw [finalResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  exact atomResidue_target ctx a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M546172676574732f4d6f64756c61726974792e6c65616e/Variant9dce0e996e6b3d8cec1a87acd970fa0449ec9e190a42cf6d7e02ede5d7ffddc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M546172676574732f4d6f64756c61726974792e6c65616e/Variant9dce0e996e6b3d8cec1a87acd970fa0449ec9e190a42cf6d7e02ede5d7ffddc6.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e3f6d507f6b8617ffa50a80cb54609975c3f192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
