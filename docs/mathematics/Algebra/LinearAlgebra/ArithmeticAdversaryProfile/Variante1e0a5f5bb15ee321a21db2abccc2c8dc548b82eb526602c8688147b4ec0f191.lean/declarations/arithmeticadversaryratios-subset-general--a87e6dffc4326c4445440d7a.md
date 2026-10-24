# arithmeticAdversaryRatios_subset_general

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a428e02ef1c35265bb71d20e6c7fca78e5242ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7cf2088-9ba2-48fc-26be-d0dad8a972b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b131296-e679-1abd-aa59-3f8a5ee835da",
  "kind": "theorem",
  "lexical_name": "arithmeticAdversaryRatios_subset_general",
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
  "slug": "arithmeticadversaryratios-subset-general--a87e6dffc4326c4445440d7a",
  "source": {
    "blob": "a428e02ef1c35265bb71d20e6c7fca78e5242ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87e6dffc4326c4445440d7a6991f4c4ad8de926adee6d6fd1322cf4a725e7f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b131296-e679-1abd-aa59-3f8a5ee835da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticAdversaryRatios_subset_general
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    (lift : ArithmeticKernelLift problem Kernel) :
    arithmeticAdversaryRatios lift ⊆
      generalAdversaryRatios problem := by
  rintro value ⟨witness, rfl⟩
  exact ⟨witness.generalWitness, rfl⟩

/-- Restricted arithmetic optimization cannot exceed the general adversary optimum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a428e02ef1c35265bb71d20e6c7fca78e5242ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
