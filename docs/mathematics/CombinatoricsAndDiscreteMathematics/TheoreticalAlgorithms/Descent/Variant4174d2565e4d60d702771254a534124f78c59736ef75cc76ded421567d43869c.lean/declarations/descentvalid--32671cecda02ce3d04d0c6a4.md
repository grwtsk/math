# DescentValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db422ee1486f46deda4796c4437fbebe20e977271a2f59330d835b153267a147",
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
  "slug": "descentvalid--32671cecda02ce3d04d0c6a4",
  "source": {
    "blob": "e2a755b73bdc67b0b50e4a1f29e6b7f560756cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32671cecda02ce3d04d0c6a468eabfe3cc25a5291b2308fea9b81e9a2e94d00c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db422ee1486f46deda4796c4437fbebe20e977271a2f59330d835b153267a147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–53.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a755b73bdc67b0b50e4a1f29e6b7f560756cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
