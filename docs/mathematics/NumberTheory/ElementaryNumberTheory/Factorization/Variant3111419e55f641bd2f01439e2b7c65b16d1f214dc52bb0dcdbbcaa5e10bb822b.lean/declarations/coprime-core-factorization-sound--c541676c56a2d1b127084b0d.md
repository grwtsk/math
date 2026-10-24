# coprime_core_factorization_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eb797e8-7139-9658-e24d-c6906dd7181c",
  "kind": "theorem",
  "lexical_name": "coprime_core_factorization_sound",
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
  "slug": "coprime-core-factorization-sound--c541676c56a2d1b127084b0d",
  "source": {
    "blob": "fe9f62330a0b58bd03f92f1227ccf569d1d8bef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 88,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c541676c56a2d1b127084b0deac1177f8aeb3cab10536ab53622648782ede37b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eb797e8-7139-9658-e24d-c6906dd7181c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_core_factorization_sound
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {leftCore rightCore :
      PrimitiveCore
        semantics registry partial}
    {Coordinate : Type uCoordinate}
    [DecidableEq Coordinate]
    (certificate :
      CoprimeObstructionCertificate
        leftCore rightCore Coordinate)
    (completion : Full) :
    semantics.SatisfiesAll completion
        (leftCore.constraints ∪
          rightCore.constraints) ↔
      certificate.completion_factors.leftSatisfaction
          (certificate.completion_factors.split
            completion).1 ∧
        certificate.completion_factors.rightSatisfaction
          (certificate.completion_factors.split
            completion).2 :=
  certificate.completion_factors.factors
    completion

end Mathematics.BinaryFrontier.Obstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9f62330a0b58bd03f92f1227ccf569d1d8bef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
