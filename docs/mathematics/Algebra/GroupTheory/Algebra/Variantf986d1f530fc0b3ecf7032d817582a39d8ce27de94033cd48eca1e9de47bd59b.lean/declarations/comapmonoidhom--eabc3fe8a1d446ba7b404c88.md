# comapMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:635621a7ccab39692bf2760bb741c6e85cc42be02a8248fe5a0fe722d4f48b8f",
  "kind": "def",
  "lexical_name": "comapMonoidHom",
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
  "slug": "comapmonoidhom--eabc3fe8a1d446ba7b404c88",
  "source": {
    "blob": "7c86fa2c9e8239dd99ddb9d25368c5e573aa70b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 365,
    "path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eabc3fe8a1d446ba7b404c884ea65b5d3c8b22688929fd6afde0a93064ab4aa6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:635621a7ccab39692bf2760bb741c6e85cc42be02a8248fe5a0fe722d4f48b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comapMonoidHom [MulOneClass Z] (f : X → Y) (hf : Continuous f) :
    LocallyConstant Y Z →* LocallyConstant X Z where
  toFun := comap f
  map_one' := by ext x; simp [hf]
  map_mul' := map_mul (comapMulHom f hf)

/-- `LocallyConstant.comap` as a linear map. -/
@[simps!]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c86fa2c9e8239dd99ddb9d25368c5e573aa70b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
