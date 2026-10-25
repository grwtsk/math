# hasIntScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:754a576d91177f2b897829da89b6d7a11502d5157c7369ffbe40aea96d060592",
  "kind": "instance",
  "lexical_name": "hasIntScalar",
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
  "slug": "hasintscalar--2c990d9abb6122d4c3118a1a",
  "source": {
    "blob": "373c5b752b9aa65aaf13874e084127eb2aa7c28e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant6bc9dfdd3a57cb55bbc718f1d508892ab59a7a159718f002c95aa195036aff1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c990d9abb6122d4c3118a1af4aeceed2ceaf6483f4c9f3ab71a497dbb0b77be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant6bc9dfdd3a57cb55bbc718f1d508892ab59a7a159718f002c95aa195036aff1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:754a576d91177f2b897829da89b6d7a11502d5157c7369ffbe40aea96d060592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasIntScalar : SMul ℤ (LeftInvariantDerivation I G) where
  smul r X := ⟨r • X.1, fun g => by simp_rw [LinearMap.map_smul_of_tower _ r, left_invariant']⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant6bc9dfdd3a57cb55bbc718f1d508892ab59a7a159718f002c95aa195036aff1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/LeftInvariantDerivation/Variant6bc9dfdd3a57cb55bbc718f1d508892ab59a7a159718f002c95aa195036aff1a.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c5b752b9aa65aaf13874e084127eb2aa7c28e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
