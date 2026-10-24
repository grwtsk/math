# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Liouville.Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72f70aaee6aade95868b72e6d4b2408f6bcad694",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72f70aaee6aade95868b72e6d4b2408f6bcad694`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouville](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/declarations/liouville--fc041d8d1a47031ed3536c44.md) | 27 | `declaration-track:fc041d8d1a47031ed3536c448ce4389219cc6aa6233090d0785c082690a9cbe3` |
| 2 | `theorem` | [liouville_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/declarations/liouville-apply--541233569e91bf664af65b0b.md) | 31 | `result-track:541233569e91bf664af65b0b402f5e09f9aa457db863e300bbd7eab14b49c81f` |
| 3 | `theorem` | [liouville_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/declarations/liouville-ne-zero--7d41a5bb70b89de394364384.md) | 34 | `result-track:7d41a5bb70b89de394364384749eaa79aaf22784feef40b49bc4dbde548cbecc` |
| 4 | `theorem` | [liouville_apply_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/declarations/liouville-apply-one--e210d4aa4643d1d08f9a146b.md) | 37 | `result-track:e210d4aa4643d1d08f9a146b1d1a262dd0e05b25840359e5da52470b0109f51a` |
| 5 | `theorem` | [liouville_apply_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/declarations/liouville-apply-mul--e83ac853acbdb6ec55b467b2.md) | 40 | `result-track:e83ac853acbdb6ec55b467b254bba678771eeb902a27a092c42ce268f69ec19d` |
| 6 | `theorem` | [isMultiplicative_liouville](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Liouville/Variant152a814252ae33579928994cfd38f6af98df89b3dd334c2304b78bf4f173734c.lean/declarations/ismultiplicative-liouville--24b582e40ef79de6c253f776.md) | 47 | `result-track:24b582e40ef79de6c253f77611466b84cef8e6294dd4520ec4fb3d43014ec989` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
