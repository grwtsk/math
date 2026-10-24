# baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0964f7fca1af25530bb2bcd4c952ec89c186887e8497fc22c630201bae4a2c6c",
  "kind": "def",
  "lexical_name": "baseChange",
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
  "slug": "basechange--58071e83ae6a8d20f253bffd",
  "source": {
    "blob": "711aa46e29855f20d8682bc875f0db74d0e5d122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58071e83ae6a8d20f253bffdde59043ec1c010f474f1ff6b44147da76dfc4ddf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0964f7fca1af25530bb2bcd4c952ec89c186887e8497fc22c630201bae4a2c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def baseChange (Q : QuadraticForm R M₂) : QuadraticForm A (A ⊗[R] M₂) :=
  QuadraticForm.tmul (R := R) (A := A) (M₁ := A) (M₂ := M₂) (QuadraticMap.sq (R := A)) Q

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711aa46e29855f20d8682bc875f0db74d0e5d122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
