# DescentValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc137dd262fe8d527dff0933ce76c7d03a0ece243fffe87ac9b7e374aa4a8ea7",
  "kind": "def",
  "lexical_name": "DescentValid",
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
  "slug": "descentvalid--af5afe4f9c6ffa8f616420ab",
  "source": {
    "blob": "56f78f5557c57261dac57147afa3ac64c09ffcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af5afe4f9c6ffa8f616420abbac949ee885e08a4e2ab7e7f62d0d1d24ac838d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc137dd262fe8d527dff0933ce76c7d03a0ece243fffe87ac9b7e374aa4a8ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DescentValid (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Prop :=
  full.value.interpreter.version = 1 ∧
  TableValid full.snapshot.value full.value.interpreter.table .total ∧
  (∀ generator ∈ full.value.generators,
    ∀ assignment ∈ finiteWords (List.range full.value.interpreter.table.cardinality)
      full.value.variableCount, GeneratorInterpreted full generator assignment) ∧
  (∀ index ∈ List.range full.value.catalog.length,
    ∃ value ∈ List.range full.value.interpreter.table.cardinality,
      evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value index) = some value) ∧
  (∀ pair ∈ relationPairs candidate,
    evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value pair.1) =
      evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value pair.2)) ∧
  (full.value.interpreter.table.cardinality + 1) ^ full.value.variableCount *
    (full.value.generators.length + full.value.catalog.length + candidate.entries.length + 1) *
    (full.snapshot.value.limits.maxNodes + 1) *
    (full.value.interpreter.table.rows.length + 1) ≤ full.snapshot.value.limits.maxWork

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant6583fca60f8698fbb43675c34c01710c1043033fa94ef9b946d5155b9e423cc3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f78f5557c57261dac57147afa3ac64c09ffcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
