# mulActionLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a7e82769e51ad677a9889d82affa1f6ae34114610ecc2ac66287b805d3672ed",
  "kind": "instance",
  "lexical_name": "mulActionLeft",
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
  "slug": "mulactionleft--bf1f9b8199592c99cc022fab",
  "source": {
    "blob": "d9cc54b6af9d7453bedad270fd15b9cc8222d86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf1f9b8199592c99cc022fab119bf6353fe77fd823d01b459dc8feab2728a4c5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a7e82769e51ad677a9889d82affa1f6ae34114610ecc2ac66287b805d3672ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulActionLeft {α : Type*} [MulAction G α] : MulAction P α :=
  inferInstanceAs (MulAction (P : Subgroup G) α)
#align sylow.mul_action_left Sylow.mulActionLeft

variable {K : Type*} [Group K] (ϕ : K →* G) {N : Subgroup G}

/-- The preimage of a Sylow subgroup under a p-group-kernel homomorphism is a Sylow subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9cc54b6af9d7453bedad270fd15b9cc8222d86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
