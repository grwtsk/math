# coe_inv_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1ee790e-3c9a-f10f-4a46-401ba44751aa",
  "kind": "theorem",
  "lexical_name": "coe_inv_interval",
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
  "slug": "coe-inv-interval--756f96e86cc45ee8df48f044",
  "source": {
    "blob": "6c38733f1704f549f4110ac336724ebc33791615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 461,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756f96e86cc45ee8df48f0449270c533361500e4361d3fbbcdfb8e19896c7256",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1ee790e-3c9a-f10f-4a46-401ba44751aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_inv_interval : (↑(s⁻¹) : Interval α) = (↑s)⁻¹ :=
  rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantea3cb8a046450dd5e765a8b9ce0c80b9cf505c4f1bdf6757cc8d80584e7a5fb3.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c38733f1704f549f4110ac336724ebc33791615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
