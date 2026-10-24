# Verification target: GRWTSK.Algebra.LinearAlgebra.Isocrystal.Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce5f6f64cc13fc4505ab3389e5d29798d3cebf68",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce5f6f64cc13fc4505ab3389e5d29798d3cebf68`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.FrobeniusFractionField` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FractionRing.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/fractionring-frobenius--53b61e0ca9502b4cfda24415.md) | 80 | `declaration-track:53b61e0ca9502b4cfda244151f3eb0b2d0a2b1b255af02248096d382e4198c9e` |
| 2 | `def` | [FractionRing.frobeniusRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/fractionring-frobeniusringhom--c60310fa96c52b3ae57ad5e3.md) | 85 | `declaration-track:c60310fa96c52b3ae57ad5e337d2b7080448ea7938a59dad49c98ea4695d1e5a` |
| 3 | `instance` | [inv_pair₁](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/inv-pair--fb7709a0eff4dca7c3114091.md) | 91 | `declaration-track:fb7709a0eff4dca7c311409105fbb8f74dc6c44740e85de5a63c18a1849ef5a1` |
| 4 | `instance` | [inv_pair₂](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/inv-pair--6b98d1638ec9fd5e4c9039cc.md) | 95 | `declaration-track:6b98d1638ec9fd5e4c9039cc739fb112e24a7e8a7eaa03fe9309db637756ee18` |
| 5 | `class` | [Isocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/isocrystal--a9b8df3acf1806e63ad80207.md) | 114 | `declaration-track:a9b8df3acf1806e63ad80207daea6df74eacb32caf7a4b97d716f8fdb0803369` |
| 6 | `def` | [Isocrystal.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/isocrystal-frobenius--3c3f3695b4a97eed9825bbe1.md) | 129 | `declaration-track:3c3f3695b4a97eed9825bbe1518fcfa936313f606285f0b1cdc1baedb5c15eb4` |
| 7 | `structure` | [IsocrystalHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/isocrystalhom--e9326a79ebdfa8065d3a25c1.md) | 140 | `declaration-track:e9326a79ebdfa8065d3a25c1bde782d362be17d98cfc2ab2016eb35026b5362c` |
| 8 | `structure` | [IsocrystalEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/isocrystalequiv--4279c4467a6bf41e1f54c9ed.md) | 147 | `declaration-track:4279c4467a6bf41e1f54c9ede2c968c2a3fbf524892c611ad6c58f5e082e47d4` |
| 9 | `def` | [FractionRing.module](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/fractionring-module--18cd37b26cf556e9112dd029.md) | 164 | `declaration-track:18cd37b26cf556e9112dd02992e3feae55a514bc61fa0cd08708a38d440ed2cb` |
| 10 | `def` | [StandardOneDimIsocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/standardonedimisocrystal--8f37f1f6c39741bf62e40d3c.md) | 174 | `declaration-track:8f37f1f6c39741bf62e40d3c5135887ec582cc828d87038631c4cfc4069c24dd` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/instance--2c1f1ac6e96b4dcc8c300e9c.md) | 181 | `declaration-track:2c1f1ac6e96b4dcc8c300e9c9fcadd93c7177e2fc7049c915c82c50d2a828680` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/instance--9ddad6ad1d4afae667350012.md) | 183 | `declaration-track:9ddad6ad1d4afae667350012ab0c27651041cab34567c63fba5031285d6a3d0f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/instance--b53dd16527474a0fe4b40f86.md) | 193 | `declaration-track:b53dd16527474a0fe4b40f8695742ee30a4dce3e50f26f88f71d429552bd52a5` |
| 14 | `theorem` | [StandardOneDimIsocrystal.frobenius_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/standardonedimisocrystal-frobenius-apply--edb97aa63a0eebb54b70dd8f.md) | 199 | `result-track:edb97aa63a0eebb54b70dd8f7b05a3b3432f8005b9214f21b54c90dbd739fa3f` |
| 15 | `theorem` | [isocrystal_classification](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variantbbdf642a83d96fb8fba208bf1124b7db5b1334ca729652758c3d05323dd2795c.lean/declarations/isocrystal-classification--3d6448c3b1e7c39484d0e2b7.md) | 211 | `result-track:3d6448c3b1e7c39484d0e2b7b469f73cc440b24f17a87cdd0babab894a94ea6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
