# cardinal_eq_one_or_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23fe5426-05bf-230d-9eec-e9aacbfaa01b",
  "kind": "theorem",
  "lexical_name": "cardinal_eq_one_or_two",
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
  "slug": "cardinal-eq-one-or-two--3203805a16e799c28b9ab770",
  "source": {
    "blob": "9c31a8c0c34dc690bd64c0b0c55b0ab3bd9be8b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3203805a16e799c28b9ab770d0bce0870534ca2a36a188014cbb119236bd8353",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23fe5426-05bf-230d-9eec-e9aacbfaa01b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_eq_one_or_two (orbit : CharacterOrbit) :
    orbit.cardinal = 1 ∨ orbit.cardinal = 2 := by
  classical
  simp only [cardinal]
  split <;> simp_all

end CharacterOrbit

end PrimitiveDirichletCharacter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/DirichletCharacterProfile/Variant224b8b2da05422d3e59ec55b0702a0d8152548e3f8e8c32b43a0ed3a355ca6e0.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c31a8c0c34dc690bd64c0b0c55b0ab3bd9be8b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
