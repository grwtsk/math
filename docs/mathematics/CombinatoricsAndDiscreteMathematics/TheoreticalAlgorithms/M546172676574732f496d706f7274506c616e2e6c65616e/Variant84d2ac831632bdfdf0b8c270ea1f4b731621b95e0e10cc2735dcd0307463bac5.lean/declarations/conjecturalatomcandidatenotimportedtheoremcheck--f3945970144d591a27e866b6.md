# conjecturalAtomCandidateNotImportedTheoremCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efd01c87cda1ef91a2e5ede953f26d30f509cf919ee52777b5cc09646bd46f44",
  "kind": "def",
  "lexical_name": "conjecturalAtomCandidateNotImportedTheoremCheck",
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
  "slug": "conjecturalatomcandidatenotimportedtheoremcheck--f3945970144d591a27e866b6",
  "source": {
    "blob": "b4363f049fe9ab47f5467f1d333f536437456af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 286,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3945970144d591a27e866b68a74ae19385133ba6b79ed045beb71bd10262b90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efd01c87cda1ef91a2e5ede953f26d30f509cf919ee52777b5cc09646bd46f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conjecturalAtomCandidateNotImportedTheoremCheck
    (candidate : TargetImportCandidate) : Bool :=
  if candidate.residueKind = FWR.ResidueKind.conjecturalAtom then
    decide
      (candidate.plannedAuthority ≠
        Think.Imports.AuthorityLevel.importedTheorem)
  else
    true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f496d706f7274506c616e2e6c65616e/Variant84d2ac831632bdfdf0b8c270ea1f4b731621b95e0e10cc2735dcd0307463bac5.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4363f049fe9ab47f5467f1d333f536437456af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
