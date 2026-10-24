# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Quotient.Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43fd101382dcf65ec91760bd75e076fb391c3dfa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43fd101382dcf65ec91760bd75e076fb391c3dfa`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanXSubCAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientspanxsubcalgequiv--92145995614603c279022628.md) | 40 | `declaration-track:92145995614603c279022628450714cf3033926c15879ccf42c41ee294311921` |
| 2 | `theorem` | [quotientSpanXSubCAlgEquiv_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientspanxsubcalgequiv-mk--65cf824abd198f4cb4416be2.md) | 48 | `result-track:65cf824abd198f4cb4416be2bf039f88e00f1feca04e4b8fef2594c2a8d62431` |
| 3 | `theorem` | [quotientSpanXSubCAlgEquiv_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientspanxsubcalgequiv-symm-apply--74eb500b2dea41afa9120464.md) | 53 | `result-track:74eb500b2dea41afa91204644329228d5d55b9041f97ec64978d462af9380ecb` |
| 4 | `def` | [quotientSpanCXSubCAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientspancxsubcalgequiv--05fb8fbf3c8d8b616165acc5.md) | 59 | `declaration-track:05fb8fbf3c8d8b616165acc58149d2e937a30365ebee0a40af676d1fde342cc0` |
| 5 | `def` | [quotientSpanCXSubCXSubCAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientspancxsubcxsubcalgequiv--8eb8a4d9d48fe3dea9866b1a.md) | 70 | `declaration-track:8eb8a4d9d48fe3dea9866b1a96bb9e3a0d8be44d7eba8101be86b0d974b20a6c` |
| 6 | `lemma` | [modByMonic_eq_zero_iff_quotient_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/modbymonic-eq-zero-iff-quotient-eq-zero--056919d85add8279c1bad869.md) | 75 | `result-track:056919d85add8279c1bad869e96dd78673ec469f58566068c7e8b5de948f9ff3` |
| 7 | `theorem` | [quotient_map_C_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotient-map-c-eq-zero--2979fbb25938b1eb1e64f9c5.md) | 89 | `result-track:2979fbb25938b1eb1e64f9c562134fc25677f63993135309841012186fe959c4` |
| 8 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/eval-c-mk-eq-zero--4656d60cbd3dd38537bd4934.md) | 95 | `result-track:4656d60cbd3dd38537bd493452493e294573658e805daec828c1885f2a59989a` |
| 9 | `def` | [polynomialQuotientEquivQuotientPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/polynomialquotientequivquotientpolynomial--33ac1a8739b0fc058636056d.md) | 113 | `declaration-track:33ac1a8739b0fc058636056dc67324a56726c03a1f3e04a090e3a4d10f682d9f` |
| 10 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_symm_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/polynomialquotientequivquotientpolynomial-symm-mk--0f64889b1d85563bc9f7c88c.md) | 149 | `result-track:0f64889b1d85563bc9f7c88c1f385e9505ebc65a5d6747dddc242d8dd8dbebef` |
| 11 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_map_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/polynomialquotientequivquotientpolynomial-map-mk--0e6e269c0823af58285373da.md) | 156 | `result-track:0e6e269c0823af58285373da2a40b45ecd7113c5626aa41d460d08a8afbc0b25` |
| 12 | `theorem` | [isDomain_map_C_quotient](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/isdomain-map-c-quotient--28b2df085426778eac22abfc.md) | 163 | `result-track:28b2df085426778eac22abfcb9a2733d1dbc57f69443fd88b893ba6b4a0b363a` |
| 13 | `theorem` | [eq_zero_of_polynomial_mem_map_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/eq-zero-of-polynomial-mem-map-range--f0b27bb56fbe4c43aacd1148.md) | 171 | `result-track:f0b27bb56fbe4c43aacd1148a57539f4c2946ef4c3bfd568804ef99c24dc4eaf` |
| 14 | `lemma` | [IsField.of_isPrincipalIdealRing_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/isfield-of-isprincipalidealring-polynomial--641024dbc4a343d38e3b0230.md) | 193 | `result-track:641024dbc4a343d38e3b0230172a6bdbbd34f3a60e1c1607de3d1ef12edc0544` |
| 15 | `theorem` | [quotient_map_C_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotient-map-c-eq-zero--4774b32bfe065b2488e146ee.md) | 207 | `result-track:4774b32bfe065b2488e146ee3d991c5bceeffff89c87ec447e62325073e03099` |
| 16 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/eval-c-mk-eq-zero--9839b5c5c4eb6267c28daf49.md) | 213 | `result-track:9839b5c5c4eb6267c28daf49f8724348b9ecda4aa59b1c4c24ecd070bf0bd50a` |
| 17 | `lemma` | [quotientEquivQuotientMvPolynomial_rightInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientequivquotientmvpolynomial-rightinverse--ced90472732db9facd910366.md) | 227 | `result-track:ced90472732db9facd9103666639e9f231ebbcc7b5639974185c7a86e3dfde0d` |
| 18 | `lemma` | [quotientEquivQuotientMvPolynomial_leftInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientequivquotientmvpolynomial-leftinverse--40550ed492472f603aab851e.md) | 248 | `result-track:40550ed492472f603aab851ed7109deb4489dc40b7053946d0f515049c61cfa3` |
| 19 | `def` | [quotientEquivQuotientMvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variant7af4a891b2337bb37e61cc81e5f486a9db3c4d026234b3ed261f9e6207a35e3e.lean/declarations/quotientequivquotientmvpolynomial--4ba529a310ffa679567fd974.md) | 273 | `declaration-track:4ba529a310ffa679567fd974a7e8ed393103455c9dfd955618315773a6573b1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
