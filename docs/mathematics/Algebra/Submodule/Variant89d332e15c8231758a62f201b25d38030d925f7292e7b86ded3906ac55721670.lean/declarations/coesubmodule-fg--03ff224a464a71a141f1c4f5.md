# coeSubmodule_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9de2ccae0e2855f9682752ac37f4546edbd61acc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dab3bde-25dd-49bb-da5a-caa475334ba4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:983a1b1f-61b1-d962-9ae0-8944ef8bc787",
  "kind": "theorem",
  "lexical_name": "coeSubmodule_fg",
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
  "slug": "coesubmodule-fg--03ff224a464a71a141f1c4f5",
  "source": {
    "blob": "9de2ccae0e2855f9682752ac37f4546edbd61acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ff224a464a71a141f1c4f5575268f9aaa740f2680b6d6004ee48baff2063f8",
  "verification": {
    "reference": "docs/verification/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:983a1b1f-61b1-d962-9ae0-8944ef8bc787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeSubmodule_fg (hS : Function.Injective (algebraMap R S)) (I : Ideal R) :
    Submodule.FG (coeSubmodule S I) ↔ Submodule.FG I :=
  ⟨Submodule.fg_of_fg_map_injective _ hS, Submodule.FG.map _⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9de2ccae0e2855f9682752ac37f4546edbd61acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
