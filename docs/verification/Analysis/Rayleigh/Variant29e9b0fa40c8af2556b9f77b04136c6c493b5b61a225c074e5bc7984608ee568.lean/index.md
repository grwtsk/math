# Verification target: GRWTSK.Analysis.Rayleigh.Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f10aeac5a2f41092284d9c1886e426cdfd0677",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/index.md) · [Full source](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f10aeac5a2f41092284d9c1886e426cdfd0677`.

Source path: `GRWTSK/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LagrangeMultipliers` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/rayleighquotient--11e23ead9b5294ac3e3398c1.md) | 64 | `declaration-track:11e23ead9b5294ac3e3398c1a6ed815b1ecabfb2bf264724f21cf23e4af2f44c` |
| 2 | `theorem` | [rayleigh_smul](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/rayleigh-smul--1222f787bb467a9697b7b1fb.md) | 66 | `result-track:1222f787bb467a9697b7b1fb9fc70656fb8ea8fb566024948bb31c7922085949` |
| 3 | `theorem` | [image_rayleigh_eq_image_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/image-rayleigh-eq-image-rayleigh-sphere--0d8aa04b35768500382676d6.md) | 76 | `result-track:0d8aa04b35768500382676d61f287a7b693c96a8f6a6f3627f2ccea088d123aa` |
| 4 | `theorem` | [iSup_rayleigh_eq_iSup_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/isup-rayleigh-eq-isup-rayleigh-sphere--063a825d80ee545f47020165.md) | 92 | `result-track:063a825d80ee545f47020165d44a37761d022608c0b78cb606e0d364f6ca9c20` |
| 5 | `theorem` | [iInf_rayleigh_eq_iInf_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/iinf-rayleigh-eq-iinf-rayleigh-sphere--abcefd0ffd4abddcb05a1cef.md) | 100 | `result-track:abcefd0ffd4abddcb05a1cef74d5138dfaea764ed4b3a8af14aad2fb43bc5be7` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.RayleighQuotient.Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/root-grwtsk-analysis-rayleighquotient-variant3c119e775d26fe92fb8d50c19bb--db93ad8fbb151954efdd9e23.md) | 116 | `result-track:db93ad8fbb151954efdd9e234e5b6783999d162a280fac90a7f9df6b40fff02d` |
| 7 | `macro_rules` | [(anonymous)](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/macro-rules--18355106cb6d9f081b13fc39.md) | 128 | `declaration-track:18355106cb6d9f081b13fc3995166a1d1872e2d982880906f667b95bea7bb042` |
| 8 | `theorem` | [linearly_dependent_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/linearly-dependent-of-islocalextron--0143650655f5e42557bc900e.md) | 130 | `result-track:0143650655f5e42557bc900e4ae0301f6fd6fce9b46df161b900f03b80e895d7` |
| 9 | `theorem` | [eq_smul_self_of_isLocalExtrOn_real](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/eq-smul-self-of-islocalextron-real--18148b5b70f007ed7343022f.md) | 151 | `result-track:18148b5b70f007ed7343022febb74d52fc316287cae832ece9672bd18650187c` |
| 10 | `theorem` | [eq_smul_self_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/eq-smul-self-of-islocalextron--4de8d7a8f012ec7c92b9e333.md) | 180 | `result-track:4de8d7a8f012ec7c92b9e333896a86eb876f7d48a287537c40686c98ec773cb5` |
| 11 | `theorem` | [hasEigenvector_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/haseigenvector-of-islocalextron--5b6a62ce238ab56876ca961e.md) | 190 | `result-track:5b6a62ce238ab56876ca961e666d9afbfc11fbc5e97c4b110fcb9279016409a3` |
| 12 | `theorem` | [hasEigenvector_of_isMaxOn](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/haseigenvector-of-ismaxon--3507723be98e68411e5a08ce.md) | 201 | `result-track:3507723be98e68411e5a08ceee3cd4f878ee7045e198128101373490cbfc2f9c` |
| 13 | `theorem` | [hasEigenvector_of_isMinOn](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/haseigenvector-of-isminon--ac929fe77eb3252159fae4b3.md) | 221 | `result-track:ac929fe77eb3252159fae4b35ed271bbe5bac800fe28da8f9213e5641137b5df` |
| 14 | `theorem` | [hasEigenvalue_iSup_of_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/haseigenvalue-isup-of-finitedimensional--a6db359146ae9d45346d040b.md) | 252 | `result-track:a6db359146ae9d45346d040be96a38f0deeca04a1cee6836b9693484d0534387` |
| 15 | `theorem` | [hasEigenvalue_iInf_of_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/haseigenvalue-iinf-of-finitedimensional--e433b083a57f80bbc41dadac.md) | 272 | `result-track:e433b083a57f80bbc41dadacec5be222390f04814d19b5ea2b4a0825ca6a76a0` |
| 16 | `theorem` | [subsingleton_of_no_eigenvalue_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variant29e9b0fa40c8af2556b9f77b04136c6c493b5b61a225c074e5bc7984608ee568.lean/declarations/subsingleton-of-no-eigenvalue-finitedimensional--1ca56b39f00e169d18b214ea.md) | 290 | `result-track:1ca56b39f00e169d18b214ea80afd47d7b96ba7033adff783283dc7f83f03172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
