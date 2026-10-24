# MulOpposite.instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06509678613dfebaa23f0e8f8897e4bc600261629868d32be0f3143d818abddd",
  "kind": "instance",
  "lexical_name": "MulOpposite.instAlgebra",
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
  "slug": "mulopposite-instalgebra--4682f862e60f3a332896173a",
  "source": {
    "blob": "fd68ab4454df07ff6791c66286bf8982609c209f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4682f862e60f3a332896173adeb24c53cca6b2477f738850c8a3a71c6c84ba83",
  "verification": {
    "reference": "docs/verification/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06509678613dfebaa23f0e8f8897e4bc600261629868d32be0f3143d818abddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MulOpposite.instAlgebra : Algebra R Aᵐᵒᵖ where
  toRingHom := (algebraMap R A).toOpposite fun x y => Algebra.commutes _ _
  smul_def' c x := unop_injective <| by
    simp only [unop_smul, RingHom.toOpposite_apply, Function.comp_apply, unop_mul, op_mul,
      Algebra.smul_def, Algebra.commutes, op_unop, unop_op]
  commutes' r := MulOpposite.rec' fun x => by
    simp only [RingHom.toOpposite_apply, Function.comp_apply, ← op_mul, Algebra.commutes]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Opposite/Variant9ad618ac7d9373b7acf7a28a43c438d332d127284685e2a7a0982e788ca17543.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd68ab4454df07ff6791c66286bf8982609c209f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
