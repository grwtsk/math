# invertibleAddMulMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81fd9f88ef8d542db2843b0aaf87dbb81807463675d9f2cb4130ebf70e92c5bb",
  "kind": "def",
  "lexical_name": "invertibleAddMulMul",
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
  "slug": "invertibleaddmulmul--0592faabcbf494156a3b3054",
  "source": {
    "blob": "eb92735d60b7f721e739089fdd61e8b5d82db1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 162,
    "path": "GRWTSK/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0592faabcbf494156a3b305413f80d261fe9d39691a780f379d19065bbfb5719",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81fd9f88ef8d542db2843b0aaf87dbb81807463675d9f2cb4130ebf70e92c5bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleAddMulMul : Invertible (A + U * C * V) where
  invOf := ⅟A - ⅟A * U * ⅟(⅟C + V * ⅟A * U) * V * ⅟A
  invOf_mul_self := add_mul_mul_invOf_mul_eq_one' _ _ _ _
  mul_invOf_self := add_mul_mul_invOf_mul_eq_one _ _ _ _

/-- The **Woodbury Identity** (`⅟` version). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb92735d60b7f721e739089fdd61e8b5d82db1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
