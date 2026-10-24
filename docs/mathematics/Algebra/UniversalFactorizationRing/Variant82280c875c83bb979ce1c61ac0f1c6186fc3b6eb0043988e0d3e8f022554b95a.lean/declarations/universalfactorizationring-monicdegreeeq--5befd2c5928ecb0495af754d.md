# UniversalFactorizationRing.monicDegreeEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e435ee20bfc55a712c00e4434468946d0550ad2a5c90fd1fd41e390dddcff538",
  "kind": "def",
  "lexical_name": "UniversalFactorizationRing.monicDegreeEq",
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
  "slug": "universalfactorizationring-monicdegreeeq--5befd2c5928ecb0495af754d",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 419,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5befd2c5928ecb0495af754d7a0f8c06111c0fa89040da1bc83de4730a4ac17b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e435ee20bfc55a712c00e4434468946d0550ad2a5c90fd1fd41e390dddcff538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def UniversalFactorizationRing.monicDegreeEq :
    MonicDegreeEq 𝓡 n :=
  ⟨p.1.map (algebraMap _ _), by simp +contextual only [Polynomial.coeff_map, p.2,
    map_one, map_zero, gt_iff_lt, implies_true, and_self]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
