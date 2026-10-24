# Verification target: GRWTSK.Algebra.GroupTheory.End.Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8934b180c4eb5184209332a7ebae11afa12d495a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8934b180c4eb5184209332a7ebae11afa12d495a`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applymulaction--7f9d587daa92796c02281a14.md) | 52 | `declaration-track:7f9d587daa92796c02281a1414d5225d5f2ce91c30e1143c66be3227d993e6bc` |
| 2 | `instance` | [applyAddAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applyaddaction--40638cdc32180677d86827b1.md) | 58 | `declaration-track:40638cdc32180677d86827b1b84f3e986e58a1fcebeb3f683d57dc48b97eb4ac` |
| 3 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/smul-def--566adb4dcafe3d1673d09011.md) | 60 | `result-track:566adb4dcafe3d1673d09011a122b0eab578f25283a3fde652f069f41c84b1b6` |
| 4 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/mul-def--6d3bee7175f078ab2ff65876.md) | 63 | `result-track:6d3bee7175f078ab2ff658764fab5ad185900fef7a8fc02353142780966982c7` |
| 5 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/one-def--00323532511a4f9f772633c3.md) | 66 | `result-track:00323532511a4f9f772633c36f1e647b260b4e1b916c17ae8d8c720e4ca948a0` |
| 6 | `instance` | [apply_FaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/apply-faithfulsmul--ac699c9085c80f21b896c511.md) | 69 | `declaration-track:ac699c9085c80f21b896c5116dd9a92268f9ee30f85317d55f44eb7c1c6b6a4b` |
| 7 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applymulaction--e3204b5009c211d59c32e167.md) | 80 | `declaration-track:e3204b5009c211d59c32e1676412cd4b1bb1d35524a59880de00dcd97ed4144b` |
| 8 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/smul-def--03e4dbfde5dafd3554284fb9.md) | 86 | `result-track:03e4dbfde5dafd3554284fb9ca3d92ab6d6ba58c363a997d5aef5be92578b73d` |
| 9 | `instance` | [applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applyfaithfulsmul--82a4a97b78d6405c20b66ce7.md) | 89 | `declaration-track:82a4a97b78d6405c20b66ce70d08b23368a51237282a661918a24b249c2b02dc` |
| 10 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applymulaction--caa13bd9d9b68b0213af808b.md) | 99 | `declaration-track:caa13bd9d9b68b0213af808be808216a8dffc033762ec759a90a26250a53b62e` |
| 11 | `instance` | [applyMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applymuldistribmulaction--74b695c331da7e3c13863be6.md) | 107 | `declaration-track:74b695c331da7e3c13863be6f0eeebb4d215a5d811067a3bce63e42d234218de` |
| 12 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/smul-def--9b4280b0e5d719559501bbcb.md) | 114 | `result-track:9b4280b0e5d719559501bbcbd85b6f40bfa896cddda9040bcca280ca992baa7b` |
| 13 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/apply-faithfulsmul--985a42d5cd9547e19b477fa7.md) | 117 | `declaration-track:985a42d5cd9547e19b477fa7046f69a3700beec505ea9f66b900c1d1a4a46ed6` |
| 14 | `instance` | [applyMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/applymulaction--cacb4c007c7f267bcdbdc986.md) | 127 | `declaration-track:cacb4c007c7f267bcdbdc986202db20f115ac3e1aa6c0f81746b397eaebfca32` |
| 15 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/smul-def--a825ebb5d325bba0f536931c.md) | 132 | `result-track:a825ebb5d325bba0f536931c76b5ad3191fa2808df5f6629a24990535126a057` |
| 16 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/apply-faithfulsmul--adf76eb4569a9a03f34b7f30.md) | 135 | `declaration-track:adf76eb4569a9a03f34b7f3061142c4188277ab6a0a81d4dd69cbda96161aafd` |
| 17 | `def` | [MulAction.toEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/mulaction-toendhom--eba5c00a3cecf116254a0254.md) | 147 | `declaration-track:eba5c00a3cecf116254a02544dcabfeb520a17f6e034f8d365b298f94b42c17f` |
| 18 | `abbrev` | [MulAction.ofEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/mulaction-ofendhom--34c8d823cb9707b7a8f5e671.md) | 155 | `declaration-track:34c8d823cb9707b7a8f5e671b40bd64359a1ef1e2fcc080199ffa003990a3149` |
| 19 | `def` | [AddAction.toEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/addaction-toendhom--bac1aaeb2d6bf8daf844e276.md) | 165 | `declaration-track:bac1aaeb2d6bf8daf844e276ebfe03f156661537c2f00b927ef1991cc4610897` |
| 20 | `abbrev` | [AddAction.ofEndHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/addaction-ofendhom--d50d0ace4d4a13896ae43308.md) | 171 | `declaration-track:d50d0ace4d4a13896ae43308b3f557bff6110bcfc5f62f86befc0f97e4e5bc34` |
| 21 | `def` | [MulAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/mulaction-topermhom--c6d53319930a9340265085ec.md) | 180 | `declaration-track:c6d53319930a9340265085eca097bb13686338fdcf539166f31928b16691e521` |
| 22 | `def` | [AddAction.toPermHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/addaction-topermhom--63c6732e9d4af55b8a83c115.md) | 193 | `declaration-track:63c6732e9d4af55b8a83c11558328b5118f0372158e164ddd9b410acc36f20d1` |
| 23 | `def` | [MulDistribMulAction.toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/muldistribmulaction-tomulequiv--10b7c1caca90b0a687710ec9.md) | 205 | `declaration-track:10b7c1caca90b0a687710ec93b34cfad6f68d896b72ad23eb4b61ddaab9d91ef` |
| 24 | `def` | [MulDistribMulAction.toMulAut](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/muldistribmulaction-tomulaut--2afb83a335e207a778f7dfb9.md) | 213 | `declaration-track:2afb83a335e207a778f7dfb9ec70c43759868a9c9f3521db750b6d255c2625c4` |
| 25 | `def` | [mulAutArrow](../../../../../mathematics/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/declarations/mulautarrow--dca58a4d6a63aa52825cb44e.md) | 227 | `declaration-track:dca58a4d6a63aa52825cb44e398a8eaa1db3b35c8f173b1de44c1dca9e7237a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
