# tmul_tensorComm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57cba881-3a7a-7149-c7f5-8faf825db78e",
  "kind": "theorem",
  "lexical_name": "tmul_tensorComm_apply",
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
  "slug": "tmul-tensorcomm-apply--c9a338508e34d57731b79eeb",
  "source": {
    "blob": "56e303222edcd1f7dabf0e779c8fb878b6c1a5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9a338508e34d57731b79eebc7d97ad5cb484b0d42c80535599cd6e5902fc871",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57cba881-3a7a-7149-c7f5-8faf825db78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_tensorComm_apply
    (Q₁ : QuadraticForm R M₁) (Q₂ : QuadraticForm R M₂) (x : M₁ ⊗[R] M₂) :
    Q₂.tmul Q₁ (TensorProduct.comm R M₁ M₂ x) = Q₁.tmul Q₂ x :=
  DFunLike.congr_fun (tmul_comp_tensorComm Q₁ Q₂) x

/-- `TensorProduct.comm` preserves tensor products of quadratic forms. -/
@[simps toLinearEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e303222edcd1f7dabf0e779c8fb878b6c1a5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
