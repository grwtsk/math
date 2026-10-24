# cycleType_ofSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1944d46a5f536278d05602c104bfb54197c05d59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74f6af59-1308-d6db-757e-83184d9fcffa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c985336b-ba35-df57-0884-99f51d9e07de",
  "kind": "theorem",
  "lexical_name": "cycleType_ofSubtype",
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
  "slug": "cycletype-ofsubtype--b442f7e3a18908c9551a9a92",
  "source": {
    "blob": "1944d46a5f536278d05602c104bfb54197c05d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 284,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b442f7e3a18908c9551a9a92d9e146b0360bd7a1aa0e818152821d3bc8400810",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c985336b-ba35-df57-0884-99f51d9e07de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleType_ofSubtype {p : α → Prop} [DecidablePred p] {g : Perm (Subtype p)} :
    cycleType (ofSubtype g) = cycleType g :=
  cycleType_extendDomain (Equiv.refl (Subtype p))
#align equiv.perm.cycle_type_of_subtype Equiv.Perm.cycleType_ofSubtype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1944d46a5f536278d05602c104bfb54197c05d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
