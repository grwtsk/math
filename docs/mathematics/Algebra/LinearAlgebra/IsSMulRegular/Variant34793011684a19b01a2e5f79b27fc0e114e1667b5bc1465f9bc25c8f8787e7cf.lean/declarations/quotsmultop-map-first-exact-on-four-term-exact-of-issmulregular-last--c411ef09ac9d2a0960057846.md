# QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9be4c611-1c04-bfba-30c4-52dbde572ceb",
  "kind": "lemma",
  "lexical_name": "QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last",
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
  "slug": "quotsmultop-map-first-exact-on-four-term-exact-of-issmulregular-last--c411ef09ac9d2a0960057846",
  "source": {
    "blob": "bcbd439b44ceca0025401486d8b285095c426c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c411ef09ac9d2a0960057846def8cb767592e4d96399e2e9cf794ec282764e5a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9be4c611-1c04-bfba-30c4-52dbde572ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last
    {M'''} [AddCommGroup M'''] [Module R M''']
    {r : R} {f₁ : M →ₗ[R] M'} {f₂ : M' →ₗ[R] M''} {f₃ : M'' →ₗ[R] M'''}
    (h₁₂ : Exact f₁ f₂) (h₂₃ : Exact f₂ f₃) (h : IsSMulRegular M''' r) :
    Exact (map r f₁) (map r f₂) :=
  suffices IsSMulRegular (M'' ⧸ LinearMap.range f₂) r by
    dsimp [map, mapQLinear]
    rw [Exact.exact_mapQ_iff h₁₂, map_pointwise_smul, Submodule.map_top, inf_comm]
    exact smul_top_inf_eq_smul_of_isSMulRegular_on_quot this
  h.of_injective _ <| LinearMap.ker_eq_bot.mp <|
    ker_liftQ_eq_bot' _ _ h₂₃.linearMap_ker_eq.symm

end CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant34793011684a19b01a2e5f79b27fc0e114e1667b5bc1465f9bc25c8f8787e7cf.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbd439b44ceca0025401486d8b285095c426c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
