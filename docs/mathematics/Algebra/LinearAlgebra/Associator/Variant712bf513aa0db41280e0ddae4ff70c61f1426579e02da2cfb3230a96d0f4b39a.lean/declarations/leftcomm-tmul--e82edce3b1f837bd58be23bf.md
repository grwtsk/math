# leftComm_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a07dfb2-cb60-0dda-cd6a-bbc52d1ae15a",
  "kind": "theorem",
  "lexical_name": "leftComm_tmul",
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
  "slug": "leftcomm-tmul--e82edce3b1f837bd58be23bf",
  "source": {
    "blob": "e2b873da58159d51502f02dbc2570834277c99b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e82edce3b1f837bd58be23bf6c11c57a0fae5b88419aafdf9e3080ef8ddc2f2f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a07dfb2-cb60-0dda-cd6a-bbc52d1ae15a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftComm_tmul (m : M) (n : N) (p : P) : leftComm R M N P (m ⊗ₜ (n ⊗ₜ p)) = n ⊗ₜ (m ⊗ₜ p) :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2b873da58159d51502f02dbc2570834277c99b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
