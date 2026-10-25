# ExactProjectionEvaluator.decode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50d2f34fabdd5d33d59e830c001c60ddd3f61b015831c457a0fdd7797abeb091",
  "kind": "def",
  "lexical_name": "ExactProjectionEvaluator.decode",
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
  "slug": "exactprojectionevaluator-decode--f20d0eb9a2c9a329253b409e",
  "source": {
    "blob": "881449e6a4dfafee884ef2699044938ae617d428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d81e99a483310f4/Variantfcb473694e470fc50cd781c17f38530699341fc943057a01412d14b54996ed3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f20d0eb9a2c9a329253b409e5ff5e264bd809aa975a642d7f5c5fb5834baed98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d81e99a483310f4/Variantfcb473694e470fc50cd781c17f38530699341fc943057a01412d14b54996ed3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50d2f34fabdd5d33d59e830c001c60ddd3f61b015831c457a0fdd7797abeb091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExactProjectionEvaluator.decode
    {Projection : Type u}
    (evaluator : ExactProjectionEvaluator Projection)
    (scalar : Nat) : Projection :=
  match evaluator.encoding.decode scalar with
  | some input => evaluator.project input
  | none => evaluator.fallback

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d81e99a483310f4/Variantfcb473694e470fc50cd781c17f38530699341fc943057a01412d14b54996ed3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A9d81e99a483310f4/Variantfcb473694e470fc50cd781c17f38530699341fc943057a01412d14b54996ed3b.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881449e6a4dfafee884ef2699044938ae617d428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
