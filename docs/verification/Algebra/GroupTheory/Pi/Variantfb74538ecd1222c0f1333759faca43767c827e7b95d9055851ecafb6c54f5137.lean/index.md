# Verification target: GRWTSK.Algebra.GroupTheory.Pi.Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf3fecd91ecb8ed987d69ca9367048c84259c67b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf3fecd91ecb8ed987d69ca9367048c84259c67b`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/mulzeroclass--9da9fcecf2475ac876e675b1.md) | 35 | `declaration-track:9da9fcecf2475ac876e675b1ff854f888e9246a02421ceb147baae89e10ccac8` |
| 2 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.RootMulHomSingle.Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.MulHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/root-grwtsk-algebra-grouptheory-rootmulhomsingle-variantde359493f3e9d636--44e0856b9448e80e1e90e77f.md) | 44 | `declaration-track:44e0856b9448e80e1e90e77f310df713fd6501ffaba9434d0ff4f9c456631125` |
| 3 | `lemma` | [single_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/single-mul--af3bf35ea482983af595330d.md) | 48 | `result-track:af3bf35ea482983af595330dd09709047331a7de9ba3e768cd0aa9338e1834b0` |
| 4 | `lemma` | [single_mul_left_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/single-mul-left-apply--a77b492d39d7258d66d3cf65.md) | 51 | `result-track:a77b492d39d7258d66d3cf655632cf231a822c07e9940afe2e38322319a64e94` |
| 5 | `lemma` | [single_mul_right_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/single-mul-right-apply--c9d8c330280d271094b3b83c.md) | 55 | `result-track:c9d8c330280d271094b3b83cd6376da3b2a78a7057f0d2948b1392ad32de2673` |
| 6 | `lemma` | [single_mul_left](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/single-mul-left--463393ce10688f1f9329f466.md) | 59 | `result-track:463393ce10688f1f9329f4669b5f308743baec4345cdc6100c87ef803d312191` |
| 7 | `lemma` | [single_mul_right](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/single-mul-right--64934958d737aacb5490caa7.md) | 62 | `result-track:64934958d737aacb5490caa75e2fa05839478d3ba5881aae1e76a9f09a929fe8` |
| 8 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/mulzerooneclass--b386031aa283491aa3a2d090.md) | 67 | `declaration-track:b386031aa283491aa3a2d090881af3ffe98f6ac80758d1c8771f74191b0dabdd` |
| 9 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/monoidwithzero--46af67ba1963d5f942c14885.md) | 71 | `declaration-track:46af67ba1963d5f942c14885031e16b838ca69eb9385fb4ca33db35a4c2aca0c` |
| 10 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/commmonoidwithzero--d6cd11311f9a6198d1f244c9.md) | 75 | `declaration-track:d6cd11311f9a6198d1f244c977d4d05b70b1d229d1ac9958ea1f5df2a8462824` |
| 11 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137.lean/declarations/semigroupwithzero--7c647deea278ca81a20d109e.md) | 79 | `declaration-track:7c647deea278ca81a20d109ee8fa558736bff447634fe52842711c6c3cae2b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
