# _root_.GRWTSK.Algebra.CommutativeAlgebra.IsAdjoinRoot.Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.finrank_quotient_span_eq_natDegree'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e867eda2-f59a-718b-54eb-13166a41f82d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.IsAdjoinRoot.Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.finrank_quotient_span_eq_natDegree'",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-isadjoinroot-variant6e65b2fdfd84d--4790153678bea5383cea2a59",
  "source": {
    "blob": "5b961a7f37997a20e62dea3879a7650d9c02e570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 496,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant4d0074eb748d720fb467f4afba21bfe44b2868d902bf93242d5ea843b6b5628d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4790153678bea5383cea2a5963fb0689f2ee21f2c40360aae7388e04f5d08bbf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant4d0074eb748d720fb467f4afba21bfe44b2868d902bf93242d5ea843b6b5628d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e867eda2-f59a-718b-54eb-13166a41f82d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.IsAdjoinRoot.Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.finrank_quotient_span_eq_natDegree' [StrongRankCondition R] (hf : f.Monic) :
    Module.finrank R (R[X] ⧸ Ideal.span {f}) = f.natDegree :=
  (AdjoinRoot.isAdjoinRootMonic _ hf).finrank

/-- `IsAdjoinRootMonic.liftPolyₗ` lifts a linear map on polynomials to a linear map on `S`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant4d0074eb748d720fb467f4afba21bfe44b2868d902bf93242d5ea843b6b5628d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant4d0074eb748d720fb467f4afba21bfe44b2868d902bf93242d5ea843b6b5628d.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b961a7f37997a20e62dea3879a7650d9c02e570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
