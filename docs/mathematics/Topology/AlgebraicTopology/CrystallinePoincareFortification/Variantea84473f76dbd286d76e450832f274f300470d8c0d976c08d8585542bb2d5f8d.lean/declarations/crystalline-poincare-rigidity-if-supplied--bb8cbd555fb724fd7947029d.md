# crystalline_poincare_rigidity_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afc6144f-1ac7-721b-9750-cc5660ce1255",
  "kind": "theorem",
  "lexical_name": "crystalline_poincare_rigidity_if_supplied",
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
  "slug": "crystalline-poincare-rigidity-if-supplied--bb8cbd555fb724fd7947029d",
  "source": {
    "blob": "9fda9ad5d8f19f4caf119e9b95ec28b635fc4c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb8cbd555fb724fd7947029d8d1177fd3c120a2bc3ae6046f1ae34cf725e2adb",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afc6144f-1ac7-721b-9750-cc5660ce1255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crystalline_poincare_rigidity_if_supplied
    {C : CrystallineHomotopyCarrier}
    (P : CrystallinePoincareRigidityContract C) :
    P.equivalentToCrystallineSphere :=
  P.equivalentToCrystallineSphere_certified

/--
Perelman/Ricci-flow transfer boundary.

All fields are supplied contract data. The Folder heat-flow setting is not
treated as Ricci flow by definition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fda9ad5d8f19f4caf119e9b95ec28b635fc4c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
