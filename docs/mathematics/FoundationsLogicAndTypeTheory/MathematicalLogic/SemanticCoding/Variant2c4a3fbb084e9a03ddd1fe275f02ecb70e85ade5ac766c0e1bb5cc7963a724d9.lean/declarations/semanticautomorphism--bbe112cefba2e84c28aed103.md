# SemanticAutomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a18293ff27638b376b2e5d3bc0bba399aaa457c16aa9335753996da962f2c792",
  "kind": "structure",
  "lexical_name": "SemanticAutomorphism",
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
  "slug": "semanticautomorphism--bbe112cefba2e84c28aed103",
  "source": {
    "blob": "bb1689bdd32d574cac441ed46320b1017d9445f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe112cefba2e84c28aed1031781e90b986c797cc0627b4314f07301e70a46fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a18293ff27638b376b2e5d3bc0bba399aaa457c16aa9335753996da962f2c792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemanticAutomorphism
    {State : Type u} {Coordinate : Type v} {PredicateKind : Type w}
    (typing : SemanticTyping State Coordinate PredicateKind) where
  state : Equiv.Perm State
  coordinate : Equiv.Perm Coordinate
  preservesKind :
    ∀ index, typing.kind (coordinate index) = typing.kind index
  preservesTruth :
    ∀ index value,
      typing.holds (coordinate index) (state value) ↔
        typing.holds index value

/-- Semantic automorphisms transport the encoded bitfield exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb1689bdd32d574cac441ed46320b1017d9445f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
