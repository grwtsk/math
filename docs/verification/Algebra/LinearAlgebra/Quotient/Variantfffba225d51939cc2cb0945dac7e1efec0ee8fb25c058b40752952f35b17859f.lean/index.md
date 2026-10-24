# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2cd96c91beb3227d77705641221675b5e16d9a6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2cd96c91beb3227d77705641221675b5e16d9a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/instance--6690b0d1f81e2a54e73e9f87.md) | 42 | `declaration-track:6690b0d1f81e2a54e73e9f87f89fdda23d73d90e58f5b4283b0610821d91d558` |
| 2 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/addcommgroup--d238918941214e02a4d77437.md) | 49 | `declaration-track:d238918941214e02a4d7743782629213557fb7b83dc4d7e6764fd17901663c00` |
| 3 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/module--6af0db801d07c07fdb4b14ef.md) | 52 | `declaration-track:6af0db801d07c07fdb4b14ef924f54ec0a548d80961907e16e8f4c543416842d` |
| 4 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/module--0fa348acc2efe323b4b7f5d1.md) | 56 | `declaration-track:0fa348acc2efe323b4b7f5d1f8f6bb14641d21d19db6f95470b52958d282c7e4` |
| 5 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/iscentralscalar--326b1c4322bfadea462dc848.md) | 59 | `declaration-track:326b1c4322bfadea462dc84880ac17315cb52f51f4fe5d2fe26426614c01e3c8` |
| 6 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/inhabited--ca8ead2c1b56fb2e5ef042e1.md) | 64 | `declaration-track:ca8ead2c1b56fb2e5ef042e1d0ac0f23d5a81d2f4e90046e87d440daa28c9264` |
| 7 | `abbrev` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/mk--f40bf75752d4b1656684c9b9.md) | 69 | `declaration-track:f40bf75752d4b1656684c9b9cf34a3a11f6158f1f5aaa89a79700f124380317c` |
| 8 | `theorem` | [mk_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/mk-eq-zero--29402e34db59870f7003e12f.md) | 73 | `result-track:29402e34db59870f7003e12faef262d030e99c2e1c880555dea91cf0be4f831d` |
| 9 | `theorem` | [is_quotient_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/is-quotient-mk--20ddb0918d442d58d27845b8.md) | 76 | `result-track:20ddb0918d442d58d27845b88a4937be30e2170845e7651a1d4e363b3b11b3e9` |
| 10 | `def` | [lieSubmoduleInvariant](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liesubmoduleinvariant--3aac626fda74f3ded59efe4d.md) | 83 | `declaration-track:3aac626fda74f3ded59efe4d174b84e92f13360ca43135abeccfd2117d4af47d` |
| 11 | `def` | [actionAsEndoMap](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/actionasendomap--07d9ea6831af0be02dd225f4.md) | 90 | `declaration-track:07d9ea6831af0be02dd225f4aac7fe32bac0adf22d185c51cd2d9a011774e4de` |
| 12 | `instance` | [actionAsEndoMapBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/actionasendomapbracket--6d546185f54c0622536ab12a.md) | 98 | `declaration-track:6d546185f54c0622536ab12a4aedaa53a8420ac3b07310f1b395ac90ad76c815` |
| 13 | `instance` | [lieQuotientLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liequotientlieringmodule--8a0aba8c45e3180ed9865666.md) | 101 | `declaration-track:8a0aba8c45e3180ed9865666c4b7915a5bdfe3494e3f4341051772dc12e8c540` |
| 14 | `instance` | [lieQuotientLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liequotientliemodule--6d73aab37f8e96bf53329a28.md) | 105 | `declaration-track:6d73aab37f8e96bf53329a28927c95e8ea409fd377472234a54e176a1c2802ba` |
| 15 | `instance` | [lieQuotientHasBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liequotienthasbracket--7d6f5f348a59b278470d99c0.md) | 108 | `declaration-track:7d6f5f348a59b278470d99c0083fe5ddba4b461fc4975269ec35faed32b5337a` |
| 16 | `theorem` | [mk_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/mk-bracket--72f4c95845adf7bff59a3a97.md) | 123 | `result-track:72f4c95845adf7bff59a3a97135850fd936324dafd49a350be087180a4ac98fd` |
| 17 | `instance` | [lieQuotientLieRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liequotientliering--80438954ff84678f21aa4a8e.md) | 126 | `declaration-track:80438954ff84678f21aa4a8e760a1141523cc9d88602ddf94b7a2e992b2ce2f5` |
| 18 | `instance` | [lieQuotientLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liequotientliealgebra--02d432d3c59d2f25d30e27ef.md) | 156 | `declaration-track:02d432d3c59d2f25d30e27efb25aa3aa0f58c2484def1d9b93e956f257868fd2` |
| 19 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/mk--830fae26093b08d53151c4f7.md) | 168 | `declaration-track:830fae26093b08d53151c4f782699fd592f67af8ddc5d8d07aab82b9f823ec4f` |
| 20 | `theorem` | [surjective_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/surjective-mk--a58989be9ea9a1bd65ec2503.md) | 174 | `result-track:a58989be9ea9a1bd65ec2503266395e8bad64fbda8411870313647aba1b7144f` |
| 21 | `theorem` | [range_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/range-mk--43885be1c35ecba8578f9f2f.md) | 177 | `result-track:43885be1c35ecba8578f9f2fd2a04f8555b2f30e16ec88469274b941045c2953` |
| 22 | `instance` | [isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/isnoetherian--6de3fdde7b9d14bc3485ecfe.md) | 180 | `declaration-track:6de3fdde7b9d14bc3485ecfe891d54a39021f2a35392780f78f9c8a040c7a702` |
| 23 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/mk-eq-zero--f197faa7d8e4c5e7d494651c.md) | 183 | `result-track:f197faa7d8e4c5e7d494651c8267ef42061e4c9dedebfbd3203d809ec53454b6` |
| 24 | `theorem` | [mk'_ker](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/mk-ker--e3c0dbcbdcc4a18ed99bf7fb.md) | 187 | `result-track:e3c0dbcbdcc4a18ed99bf7fbec097b97314514ef9f3c72b52c6e0f4b4d72c3bd` |
| 25 | `theorem` | [map_mk'_eq_bot_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/map-mk-eq-bot-le--29e20438b62f854879827dfc.md) | 190 | `result-track:29e20438b62f854879827dfc453861428f27000d3360e952ca95f2fbd890b0b9` |
| 26 | `theorem` | [lieModuleHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/liemodulehom-ext--5534f10ebe4cfaec15e228c9.md) | 198 | `result-track:5534f10ebe4cfaec15e228c97f8b7ba1c0a26fa252fc705df297769388a51082` |
| 27 | `lemma` | [toEnd_comp_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/toend-comp-mk--b470f776e51de00831e60853.md) | 201 | `result-track:b470f776e51de00831e60853354ca1ea68b37f7852dcd4392029b51840e7a6b5` |
| 28 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantfffba225d51939cc2cb0945dac7e1efec0ee8fb25c058b40752952f35b17859f.lean/declarations/quotkerequivrange--b8ca2042223502dc78ae5f3b.md) | 217 | `declaration-track:b8ca2042223502dc78ae5f3b702dbd5910ee97d048b7a96741dfe66bcf3b47fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
