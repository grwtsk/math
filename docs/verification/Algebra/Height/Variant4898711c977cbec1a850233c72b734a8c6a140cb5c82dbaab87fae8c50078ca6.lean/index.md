# Verification target: GRWTSK.Algebra.Height.Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5873b3760959bf00a6985da1f95a2c16cf798709",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5873b3760959bf00a6985da1f95a2c16cf798709`.

Source path: `GRWTSK/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.SpanRank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.MinimalPrime.Localization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.primeHeight](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight--d413eec529b82632030eb7b2.md) | 39 | `declaration-track:d413eec529b82632030eb7b26551cc5ebaab3640bad766416be496e6b137c455` |
| 2 | `def` | [Ideal.height](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height--4270abecb48fe9e6e9383614.md) | 43 | `declaration-track:4270abecb48fe9e6e9383614042075a3fc1380b005fb97ff5e2b8acad8e0aa11` |
| 3 | `lemma` | [Ideal.height_eq_primeHeight](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-eq-primeheight--7956b91e368632ca53574616.md) | 47 | `result-track:7956b91e368632ca53574616652f51485d950d9a2253afb0bde15e550ff15334` |
| 4 | `class` | [Ideal.FiniteHeight](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-finiteheight--401038036a845a17f0fc22eb.md) | 55 | `declaration-track:401038036a845a17f0fc22ebd130253c9c2eec66d100a0263bb185f9fa52f373` |
| 5 | `lemma` | [Ideal.finiteHeight_iff_lt](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-finiteheight-iff-lt--7e3f0664ee289ff3024f8daf.md) | 58 | `result-track:7e3f0664ee289ff3024f8dafa026056d263a0e571e16e3b5fea7569029bf397e` |
| 6 | `lemma` | [Ideal.height_ne_top](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-ne-top--0c0f40aeabaf401c72d704a2.md) | 62 | `result-track:0c0f40aeabaf401c72d704a2cc6a8c2ee19539d5a2f94115cd5f8ad762a0c497` |
| 7 | `lemma` | [Ideal.height_lt_top](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-lt-top--99610d4cbaf7d70d0562cef3.md) | 66 | `result-track:99610d4cbaf7d70d0562cef315e7f69f732378df4db30e585267cbda18a1ceca` |
| 8 | `lemma` | [Ideal.primeHeight_ne_top](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-ne-top--cfeb78c39df1ef5c401a7f34.md) | 70 | `result-track:cfeb78c39df1ef5c401a7f341af9e8c3657584efd90d43bbda413767f342a739` |
| 9 | `lemma` | [Ideal.primeHeight_lt_top](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-lt-top--78d2dc6c04d17a3dae4bd96b.md) | 75 | `result-track:78d2dc6c04d17a3dae4bd96bae6e31d8eb46400236c8bdcb818b386f4c3f9fd7` |
| 10 | `lemma` | [Ideal.primeHeight_mono](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-mono--89ec381d061734045ef3511d.md) | 81 | `result-track:89ec381d061734045ef3511d4ed0c330902d4c5943731eef484dcb61efd214a9` |
| 11 | `lemma` | [Ideal.primeHeight_add_one_le_of_lt](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-add-one-le-of-lt--8e2a0474040e9f4ba79d313a.md) | 87 | `result-track:8e2a0474040e9f4ba79d313aaf8adb6ad17505bd7fca41f26078abd2b2afbed7` |
| 12 | `theorem` | [Ideal.height_top](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-top--64f330ffa746e5e8618f335e.md) | 93 | `result-track:64f330ffa746e5e8618f335ebb58e9c9977aa1fcf82ae2ae0b046fb2ed82738c` |
| 13 | `lemma` | [Ideal.primeHeight_strict_mono](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-strict-mono--f220fa3af5d3d9a33895109e.md) | 97 | `result-track:f220fa3af5d3d9a33895109e53914a8c2ab3bd6d774724a2c16c6eb2127cf298` |
| 14 | `theorem` | [Ideal.height_mono](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-mono--5439396c1872782e6178ed3d.md) | 108 | `result-track:5439396c1872782e6178ed3da991b99656213695fe7f09d094b935e4f9976fb7` |
| 15 | `lemma` | [Ideal.height_strict_mono_of_is_prime](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-strict-mono-of-is-prime--9e610ff449e86b708986e61a.md) | 117 | `result-track:9e610ff449e86b708986e61affbefe0edb2c4892c3957608402da352c6939cda` |
| 16 | `lemma` | [Ideal.primeHeight_le_ringKrullDim](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-le-ringkrulldim--f36c3fee7798458ec912a198.md) | 129 | `result-track:f36c3fee7798458ec912a19804628991649d481c9a46bbef8234c4d859e8a29a` |
| 17 | `lemma` | [Ideal.height_le_ringKrullDim_of_ne_top](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-le-ringkrulldim-of-ne-top--35a35696abd98b12148bd071.md) | 132 | `result-track:35a35696abd98b12148bd071932d9fd837176f254cce9f3e72a89e339dad8e1d` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/instance--52c9c3646047e1cb1fd05a76.md) | 140 | `declaration-track:52c9c3646047e1cb1fd05a76fe0c97325f421e032f210772a1330bafc06b0466` |
| 19 | `lemma` | [Ideal.finiteHeight_of_le](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-finiteheight-of-le--5935c7a491bf09a295d096f8.md) | 149 | `result-track:5935c7a491bf09a295d096f8dbef27a45d4d1987588528c7302316fd09c9d220` |
| 20 | `lemma` | [Ideal.mem_minimalPrimes_of_height_eq](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-mem-minimalprimes-of-height-eq--caa9e27360caab653f361ecf.md) | 157 | `result-track:caa9e27360caab653f361ecfdf3379b3778dee3e85723bba63177284177b62c0` |
| 21 | `lemma` | [Ideal.primeHeight_eq_zero_iff](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-eq-zero-iff--4b6fb1dc08ffeecf069652cf.md) | 168 | `result-track:4b6fb1dc08ffeecf069652cfdd4909f3e6a5559d98e064f1ad34c7c508765038` |
| 22 | `theorem` | [Ideal.isMaximal_of_primeHeight_eq_ringKrullDim](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-ismaximal-of-primeheight-eq-ringkrulldim--fdeab5afa6691214902bc5bb.md) | 180 | `result-track:fdeab5afa6691214902bc5bb62c473bc031173784f51bb6e158379e3cf12e447` |
| 23 | `theorem` | [IsLocalRing.maximalIdeal_primeHeight_eq_ringKrullDim](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/islocalring-maximalideal-primeheight-eq-ringkrulldim--3d5cd148518e8d69cf4ecb9d.md) | 195 | `result-track:3d5cd148518e8d69cf4ecb9df84db5298e3fce3ac2c0ba47624f13c398732c58` |
| 24 | `theorem` | [IsLocalRing.maximalIdeal_height_eq_ringKrullDim](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/islocalring-maximalideal-height-eq-ringkrulldim--bab64ef17b8c98a90030538e.md) | 202 | `result-track:bab64ef17b8c98a90030538e56e8493cd89d3e1d45eee6157e311906e98c411d` |
| 25 | `theorem` | [Ideal.primeHeight_eq_ringKrullDim_iff](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-primeheight-eq-ringkrulldim-iff--65d4270d3f9cc0a1e48c1c39.md) | 208 | `result-track:65d4270d3f9cc0a1e48c1c398335517c874cae6a7344f5104d1c9ff7c82f154b` |
| 26 | `lemma` | [Ideal.height_le_iff](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-le-iff--417a3fa12630b56aca90d72f.md) | 216 | `result-track:417a3fa12630b56aca90d72f494bf12e262013091754fdad7738f415a6122768` |
| 27 | `lemma` | [Ideal.height_le_iff_covBy](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/ideal-height-le-iff-covby--db0db6d94c1635127140d9c7.md) | 224 | `result-track:db0db6d94c1635127140d9c7d0e4458ec0aa1a27ea61a7dcdea21bb9d4bfb9d7` |
| 28 | `theorem` | [IsLocalization.primeHeight_comap](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/islocalization-primeheight-comap--1e5fcb9dcc80235f503009e5.md) | 237 | `result-track:1e5fcb9dcc80235f503009e59bfe68f357651df6c5f6afc27d247c77b27ac32f` |
| 29 | `theorem` | [IsLocalization.height_comap](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/islocalization-height-comap--b54e5a52f5462697f7f7ddb7.md) | 254 | `result-track:b54e5a52f5462697f7f7ddb7d691c70323f2d4aa36a4e4ebaa821be204bfd0a6` |
| 30 | `theorem` | [IsLocalization.AtPrime.ringKrullDim_eq_height](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/islocalization-atprime-ringkrulldim-eq-height--fe7426ea936108a9a2fcdd91.md) | 260 | `result-track:fe7426ea936108a9a2fcdd91600a6ebefe4cdc771673c2ac1978bbc7ea676512` |
| 31 | `lemma` | [mem_minimalPrimes_of_primeHeight_eq_height](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/mem-minimalprimes-of-primeheight-eq-height--29399a5d7f1dc36778a481f9.md) | 269 | `result-track:29399a5d7f1dc36778a481f9aa1323deb86d891a07c524f6cd6885e6d4df1499` |
| 32 | `lemma` | [exists_spanRank_le_and_le_height_of_le_height](../../../../mathematics/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/declarations/exists-spanrank-le-and-le-height-of-le-height--c46f887d8f7492b6b9165591.md) | 274 | `result-track:c46f887d8f7492b6b91655915fc5648880a8cff37c98da15c722a744c22e9921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
