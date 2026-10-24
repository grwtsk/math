# Verification target: GRWTSK.Algebra.GroupTheory.Pi.Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ad580df63c3f6106026425c4efaa1d46c8ae0f9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ad580df63c3f6106026425c4efaa1d46c8ae0f9`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/mulzeroclass--c8d8af40e5ee09241338739c.md) | 27 | `declaration-track:c8d8af40e5ee09241338739ce7d7bc236659e361e1d788c33891af5052b83a6b` |
| 2 | `def` | [_root_.MulHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/root-mulhom-single--4791ecc7f190427c34000ec9.md) | 36 | `declaration-track:4791ecc7f190427c34000ec93b8ecb955eb2844c71a795725a2c1de33605d9ad` |
| 3 | `lemma` | [single_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/single-mul--2ec363a6a7fc564d5c47e64b.md) | 40 | `result-track:2ec363a6a7fc564d5c47e64bc691e67ca6c3f7df3e0b35305c938f8418d1e5fe` |
| 4 | `lemma` | [single_mul_left_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/single-mul-left-apply--aebf26396e6c1ef819dadcbc.md) | 43 | `result-track:aebf26396e6c1ef819dadcbc5dfd6e6cc437e7d5023c4503a977aa95d42c5828` |
| 5 | `lemma` | [single_mul_right_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/single-mul-right-apply--af14b78fa275aa7f54ea159c.md) | 47 | `result-track:af14b78fa275aa7f54ea159cc2bdfdb2f1a516709f72a7e407e2ec226dab912f` |
| 6 | `lemma` | [single_mul_left](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/single-mul-left--b2364a744234f79cdd7b0d53.md) | 51 | `result-track:b2364a744234f79cdd7b0d53553e3284fd6efcc3bed827f28ec3bf4db25cc023` |
| 7 | `lemma` | [single_mul_right](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/single-mul-right--9e9958be3e6d06482f4f26c8.md) | 54 | `result-track:9e9958be3e6d06482f4f26c8db7751ba9eb59467dc3d3732843411c11e2b0eb7` |
| 8 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/mulzerooneclass--e56dad1717489b94480a86c8.md) | 59 | `declaration-track:e56dad1717489b94480a86c8ceceadb11c9508d6e945873e936e7e421789f977` |
| 9 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/monoidwithzero--b65f041a9fa59c8c30096713.md) | 63 | `declaration-track:b65f041a9fa59c8c30096713cc43402e3fea73f72628967fb72a7bfdc06bb391` |
| 10 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/commmonoidwithzero--aaa4418f71d675b3a38c3555.md) | 67 | `declaration-track:aaa4418f71d675b3a38c3555cae9d9e54972ebaf89acea46ab6cf7c9a4dd2811` |
| 11 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.lean/declarations/semigroupwithzero--76396ce1ea78f620a446d974.md) | 71 | `declaration-track:76396ce1ea78f620a446d97477977a1549fab53f0a755ef1809ffd24174d5094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
