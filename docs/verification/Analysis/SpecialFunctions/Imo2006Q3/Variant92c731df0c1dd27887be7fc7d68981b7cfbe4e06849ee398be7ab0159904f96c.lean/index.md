# Verification target: GRWTSK.Analysis.SpecialFunctions.Imo2006Q3.Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742ed778b8a11b8f9950084271c8a09eec2298fc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742ed778b8a11b8f9950084271c8a09eec2298fc`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean.json)

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
| 1 | `theorem` | [lhs_ineq](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/lhs-ineq--ed1721c4b8a8e2a3511fe7a1.md) | 38 | `result-track:ed1721c4b8a8e2a3511fe7a1e238daa821ad49f1d564e28f02824789ee9a71df` |
| 2 | `theorem` | [four_pow_four_pos](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/four-pow-four-pos--a964288eefa0aa78c7811e5a.md) | 44 | `result-track:a964288eefa0aa78c7811e5a1fe92b1777fc90c387da1a2fe131839578416689` |
| 3 | `theorem` | [mid_ineq](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/mid-ineq--60d00faba32003057ab13c87.md) | 46 | `result-track:60d00faba32003057ab13c87bab6e2a77d0e0b8f1f64b7d4dc0518414800704e` |
| 4 | `theorem` | [rhs_ineq](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/rhs-ineq--c59a32bd5fc62d1a70d9a65d.md) | 52 | `result-track:c59a32bd5fc62d1a70d9a65dd1933f669fba991fc9d8b9047c352bcfc3596d70` |
| 5 | `theorem` | [zero_lt_32](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/zero-lt-32--9794f7dbe75dffca6094b6c5.md) | 56 | `result-track:9794f7dbe75dffca6094b6c51949eb98d2188b9238f6fad46787df96b801424c` |
| 6 | `theorem` | [subst_wlog](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/subst-wlog--f6b8ad06f95c053ca451e97a.md) | 58 | `result-track:f6b8ad06f95c053ca451e97a9fb2002e60547d3348cf754341d354fb27704b53` |
| 7 | `theorem` | [subst_proof₁](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/subst-proof--32f23290479c1b80e6101006.md) | 79 | `result-track:32f23290479c1b80e61010060eb7d1fd702eecef997e734bc8406bdd6a1cc685` |
| 8 | `theorem` | [proof₁](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/proof--aa24932c22a1e7caa98e137c.md) | 88 | `result-track:aa24932c22a1e7caa98e137cbce760bc414d8d11de7ffe0e3476e5e1cbb50ecc` |
| 9 | `theorem` | [proof₂](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/proof--5562d4be1af416241dcdf1e6.md) | 96 | `result-track:5562d4be1af416241dcdf1e6ad4d909e0a14b40d509114ccc8eac46436b63c27` |
| 10 | `theorem` | [imo2006_q3](../../../../../mathematics/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean/declarations/imo2006-q3--a98024a15a5363a7798890b7.md) | 119 | `result-track:a98024a15a5363a7798890b740e54e56d911f4ca940d90cc65c49b0cd19ad093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
