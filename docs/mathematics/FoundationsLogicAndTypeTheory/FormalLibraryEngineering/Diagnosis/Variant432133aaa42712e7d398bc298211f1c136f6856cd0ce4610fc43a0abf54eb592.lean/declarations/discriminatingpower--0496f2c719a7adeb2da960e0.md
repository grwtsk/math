# discriminatingPower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f60b7b17d83d3f419bd6891178fc7814ceaff33deb709ade1ef2fdfdb0217867",
  "kind": "def",
  "lexical_name": "discriminatingPower",
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
  "slug": "discriminatingpower--0496f2c719a7adeb2da960e0",
  "source": {
    "blob": "dcaa7f8ee7237cc383cfd07c2ae5683e82a8dfb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0496f2c719a7adeb2da960e0ec2a495e39a49aafb2468d14fc3ad6deee1af803",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f60b7b17d83d3f419bd6891178fc7814ceaff33deb709ade1ef2fdfdb0217867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def discriminatingPower
    {Hypothesis Experiment Outcome : Type}
    [DecidableEq Hypothesis]
    [DecidableEq Outcome]
    (hypotheses : Finset Hypothesis)
    (predict : Experiment → Hypothesis → Outcome)
    (experiment : Experiment) :
    Nat :=
  ((hypotheses.product hypotheses).filter fun pair =>
      pair.1 ≠ pair.2 ∧
        predict experiment pair.1 ≠ predict experiment pair.2).card

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnosis/Variant432133aaa42712e7d398bc298211f1c136f6856cd0ce4610fc43a0abf54eb592.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcaa7f8ee7237cc383cfd07c2ae5683e82a8dfb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
