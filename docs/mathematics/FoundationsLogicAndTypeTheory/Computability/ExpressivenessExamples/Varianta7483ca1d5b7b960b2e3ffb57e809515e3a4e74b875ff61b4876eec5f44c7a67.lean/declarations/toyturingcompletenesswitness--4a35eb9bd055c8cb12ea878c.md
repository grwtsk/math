# toyTuringCompletenessWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8afe6963de1fce243e3ea83ac71ecfd29ba07bbf5baad553d24f20da3e8d6da",
  "kind": "def",
  "lexical_name": "toyTuringCompletenessWitness",
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
  "slug": "toyturingcompletenesswitness--4a35eb9bd055c8cb12ea878c",
  "source": {
    "blob": "ace205f213b8bc36e6ab69fea25421dbd3d533ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a35eb9bd055c8cb12ea878cfbea78ddb6da237efee21e49e3ec3fa0efcea025",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8afe6963de1fce243e3ea83ac71ecfd29ba07bbf5baad553d24f20da3e8d6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyTuringCompletenessWitness : TuringCompletenessWitness where
  machineModelLabel := "toy-nat-adder-realization"
  encodingHash := 101
  simulationSound := toyAccepts toyProgram 5 12
  simulationSoundProof := rfl

/-- The toy acceptance fact is recovered through the witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressivenessExamples/Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace205f213b8bc36e6ab69fea25421dbd3d533ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
