# inv_lt_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c71ac6-11a5-f719-1cfc-c9d8c056681d",
  "kind": "theorem",
  "lexical_name": "inv_lt_self_iff",
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
  "slug": "inv-lt-self-iff--5ecd755e7018fbf46a9b9d63",
  "source": {
    "blob": "5de01b0bd3d2b681e04dc8170b1656be6d9ca4b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 150,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ecd755e7018fbf46a9b9d63969cacf6f522097d0cde031df3d2874f5b1eba97",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c71ac6-11a5-f719-1cfc-c9d8c056681d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_lt_self_iff : a⁻¹ < a ↔ 1 < a := by simp [inv_lt_iff_one_lt_mul]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de01b0bd3d2b681e04dc8170b1656be6d9ca4b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
