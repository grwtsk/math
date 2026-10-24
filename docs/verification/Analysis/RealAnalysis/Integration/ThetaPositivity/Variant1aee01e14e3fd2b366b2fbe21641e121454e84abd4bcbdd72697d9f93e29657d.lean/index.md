# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositivity.Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8ea3e9de514bbfc0fd671212f299403d3462f9d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8ea3e9de514bbfc0fd671212f299403d3462f9d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [shellGrowth_evenKernel_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-evenkernel-one-le--5b30a0e9262e21aafbddf12b.md) | 13 | `result-track:5b30a0e9262e21aafbddf12bc36a4d17c4219f5867ab7932840ca46ce9799a0e` |
| 2 | `lemma` | [shellGrowth_fmodif_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-fmodif-im--dbf364ba8db85089a3dfce44.md) | 26 | `result-track:dbf364ba8db85089a3dfce44645b0284248a5e223ec5eacc26e3f82f9e6b9891` |
| 3 | `lemma` | [shellGrowth_fmodif_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-fmodif-nonneg--056d0bf7724e851e50387957.md) | 32 | `result-track:056d0bf7724e851e50387957388e6a6e92ed755b2429293c171f43787d816423` |
| 4 | `lemma` | [shellGrowth_fmodif_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-fmodif-real--0bff4818dd07fa848a73feeb.md) | 55 | `result-track:0bff4818dd07fa848a73feebf87631b263c258693a4f7a3fc44284dfd856daf5` |
| 5 | `lemma` | [shellGrowth_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-mellin-integrable--2819c8fbea3de30525fdaef8.md) | 59 | `result-track:2819c8fbea3de30525fdaef828af17ae5431f81a5706ecbfa6c34332a8efa7f8` |
| 6 | `lemma` | [shellGrowth_lambda_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-lambda-integral--100d963f46c79a8f1f909b05.md) | 64 | `result-track:100d963f46c79a8f1f909b05557fa6b5eb1b2b66b3d2402e0b31419cfa2dee25` |
| 7 | `lemma` | [shellGrowth_real_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-real-integrand--6685ae9bdbe0280b2aca72f9.md) | 69 | `result-track:6685ae9bdbe0280b2aca72f970c095d73b26cc06dfde04a8cdf403834cf022ba` |
| 8 | `lemma` | [shellGrowth_real_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-real-integrable--6060a6ea2107c98cdb013a2d.md) | 76 | `result-track:6060a6ea2107c98cdb013a2d6dc858eedd75540cb2ee1a05fab22f5a1dc95a81` |
| 9 | `lemma` | [shellGrowth_real_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-real-integral--d01b4c736662c5a5774f233a.md) | 85 | `result-track:d01b4c736662c5a5774f233a1b2651043ff6dd74fd5d0d18eec4e06de45f736a` |
| 10 | `lemma` | [shellGrowth_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-strip-bound--0e7ccc34213748c2424b860e.md) | 99 | `result-track:0e7ccc34213748c2424b860e2e8be33a502793114a5e490721c3cf4a9eacbee4` |
| 11 | `lemma` | [shellGrowth_integer_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-integer-endpoint-bound--ba45d3924f3ec4ca6ede3a97.md) | 126 | `result-track:ba45d3924f3ec4ca6ede3a97be461975cf74cd17b475ee122fdbc4b40d0f7e79` |
| 12 | `lemma` | [shellGrowth_sphere_of_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/declarations/shellgrowth-sphere-of-endpoint--90b1d5a8326d6f3a0a49714f.md) | 136 | `result-track:90b1d5a8326d6f3a0a49714fe302958f4590f4a66bbc43e19e4a2b99fb094a77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
