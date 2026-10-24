# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FinalMult.Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b55723b0b130f5138e7c367b4781f055baf103ab",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b55723b0b130f5138e7c367b4781f055baf103ab`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Final` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.SeamMult` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.Certificate` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly.CertificateC3` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.ZeroSide.Final` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Limit` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/kfun--cd694a754f7b13a2a4214a63.md) | 42 | `declaration-track:cd694a754f7b13a2a4214a639f3778d172186850450626716143479deeb5156e` |
| 2 | `def` | [Gfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/gfun--3fc229d93ee8c62cd0551ed5.md) | 45 | `declaration-track:3fc229d93ee8c62cd0551ed5ff46a27460e9149572270c7b6d2b666e2d4b9697` |
| 3 | `lemma` | [Hfun_eq_two_sub_kfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/hfun-eq-two-sub-kfun--96edb03d4a16d70bcd2ca388.md) | 47 | `result-track:96edb03d4a16d70bcd2ca3880e17bad23a266f314d08ef61ddbc35af94c34901` |
| 4 | `lemma` | [Gfun_ge_near_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/gfun-ge-near-one--18e0c61a0f92d88ceee5f36d.md) | 51 | `result-track:18e0c61a0f92d88ceee5f36dd0131316d37d4feedd4d02ab1a9c2d8c1a876f92` |
| 5 | `theorem` | [eps_form_fiveSixths](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/eps-form-fivesixths--ea91a442e615785244f6e14d.md) | 64 | `result-track:ea91a442e615785244f6e14dd04398b1644dae6391bfc1773c69a80aac79b364` |
| 6 | `theorem` | [moments_of_traces](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/moments-of-traces--df863a1bf2f73480f0e6ee29.md) | 84 | `result-track:df863a1bf2f73480f0e6ee2944e44f99add7fe68c9717d59f76091e9cfd0de5e` |
| 7 | `theorem` | [thmBmult_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmbmult-abstract--5813e935b8539f5721671559.md) | 207 | `result-track:5813e935b8539f5721671559696d4a340359e0917a880f08b1246b788809ebac` |
| 8 | `theorem` | [thmCmult_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmcmult-abstract--2e0d19130824c07910352d4f.md) | 271 | `result-track:2e0d19130824c07910352d4f770d46c359b963c6362c4b4c50860d68dbdbd362` |
| 9 | `theorem` | [thmB_mult_lam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmb-mult-lam--0e6fa2a160fc31fc7c0f8606.md) | 339 | `result-track:0e6fa2a160fc31fc7c0f8606bb50afbbbf04143dc201f4b8fbc16de12ed34603` |
| 10 | `theorem` | [thmC_mult_lam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmc-mult-lam--e638c114eaac4bfd5f6bad62.md) | 348 | `result-track:e638c114eaac4bfd5f6bad6297ac6c418733d79df3203620857e9fbb2b0c89c5` |
| 11 | `theorem` | [thmB₀_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmb-mult--d30c834f9517a872f6fd2e42.md) | 358 | `result-track:d30c834f9517a872f6fd2e42833c0162bbe111059812bc95540c152fbae75326` |
| 12 | `theorem` | [thmC₀_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmc-mult--523b3fb7e177fd63a35035ae.md) | 366 | `result-track:523b3fb7e177fd63a35035ae60a285aefe038263bae194ae7d4b5e07866db172` |
| 13 | `theorem` | [thmB₀_mult_cumulative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmb-mult-cumulative--f6e9d90e519ea356bd8212c0.md) | 373 | `result-track:f6e9d90e519ea356bd8212c04a63880a898083322233dbb6fabe3ded431c7ee4` |
| 14 | `theorem` | [thmC₀_mult_cumulative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinalMult/Variant804829ce4f922cfcb3f2c214b24e24de6885bfd423e3b023f8390be82b6916c9.lean/declarations/thmc-mult-cumulative--eb29eeb5dcb3faa23223d123.md) | 378 | `result-track:eb29eeb5dcb3faa23223d1232b943abb36ee990ee43be50ce35772b9f6bf54ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
