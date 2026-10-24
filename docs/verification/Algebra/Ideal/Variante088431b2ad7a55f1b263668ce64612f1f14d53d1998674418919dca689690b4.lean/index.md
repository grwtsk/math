# Verification target: GRWTSK.Algebra.Ideal.Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4040d9ab018926cf870a33a5f0fb78bfea948443",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4040d9ab018926cf870a33a5f0fb78bfea948443`.

Source path: `GRWTSK/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Away` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk'_mem_iff](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/mk-mem-iff--ab1fffc100992e0e27944ea5.md) | 37 | `result-track:ab1fffc100992e0e27944ea545c79f244fd655404c57e0c435abe51d10ec6460` |
| 2 | `def` | [map_ideal](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/map-ideal--a0283dca2a89b1cab30ac758.md) | 51 | `declaration-track:a0283dca2a89b1cab30ac758435a457e1c042f3ee935043c6dc5d0b8ab7788ed` |
| 3 | `theorem` | [mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/mem-map-algebramap-iff--3605fa28c90934530c3d2f26.md) | 71 | `result-track:3605fa28c90934530c3d2f26ad6100ecd18bf7c6993c14793d56afdf6abbc06a` |
| 4 | `lemma` | [mk'_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/mk-mem-map-algebramap-iff--70623fe2f59f98079fcd88b1.md) | 84 | `result-track:70623fe2f59f98079fcd88b13064df27e4dcda9026e3eccec910d45cb301f3b2` |
| 5 | `lemma` | [algebraMap_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/algebramap-mem-map-algebramap-iff--6e256d94927fc31217109b5d.md) | 92 | `result-track:6e256d94927fc31217109b5dbc290ad9ff1012154194fbc993edfc42d967e0cc` |
| 6 | `lemma` | [map_algebraMap_ne_top_iff_disjoint](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/map-algebramap-ne-top-iff-disjoint--da66a49f2adb50c0fb05cde4.md) | 97 | `result-track:da66a49f2adb50c0fb05cde4623ba1401adc8f8b22e56c165c879ff1096f9c40` |
| 7 | `theorem` | [map_comap](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/map-comap--c27b867fa4905ed6d3c193d3.md) | 104 | `result-track:c27b867fa4905ed6d3c193d3bd1112be1e9b0770917a925505ec810158b6b331` |
| 8 | `theorem` | [comap_map_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/comap-map-of-isprime-disjoint--8c80a256d856ebec76fd73cf.md) | 115 | `result-track:8c80a256d856ebec76fd73cff0712e364283e194458454069e70da13a4ff3e39` |
| 9 | `def` | [orderEmbedding](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/orderembedding--5e4cafffaf4f2513078f9f73.md) | 130 | `declaration-track:5e4cafffaf4f2513078f9f73a2f8a5835290d39d4d735354f17ee33fc9bc1cb8` |
| 10 | `theorem` | [isPrime_iff_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/isprime-iff-isprime-disjoint--a3d610a2b01d4555716e49bf.md) | 143 | `result-track:a3d610a2b01d4555716e49bf7aa17267189d1b2925da279160a06a927fe0f12e` |
| 11 | `theorem` | [isPrime_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/isprime-of-isprime-disjoint--6fd202c7d50f656c4332adda.md) | 173 | `result-track:6fd202c7d50f656c4332adda72d403bce5805b66bacae99b27fe1793ee59c8ef` |
| 12 | `theorem` | [disjoint_comap_iff](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/disjoint-comap-iff--58a93941733a7de9b1419717.md) | 178 | `result-track:58a93941733a7de9b1419717b505f21caf497de56b43f9790a8a2af0c38dab9c` |
| 13 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/orderisoofprime--770f83455e0ed73ce13dbe06.md) | 189 | `declaration-track:770f83455e0ed73ce13dbe063768dc9bda0714e8511d139536e9e02db4f501d9` |
| 14 | `lemma` | [map_radical](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/map-radical--787e5a58089e7bfeee637e83.md) | 202 | `result-track:787e5a58089e7bfeee637e833c5f9cc369f783770c4bacc2274a78d1a06c7dd2` |
| 15 | `theorem` | [ideal_eq_iInf_comap_map_away](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/ideal-eq-iinf-comap-map-away--6dae2a4bae6e7a6dcf5375f7.md) | 212 | `result-track:6dae2a4bae6e7a6dcf5375f7cc7dd27e4f9a02258c927bef55ccd640fe1d51dc` |
| 16 | `theorem` | [surjective_quotientMap_of_maximal_of_localization](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/surjective-quotientmap-of-maximal-of-localization--4d4267835a530b3113d11c01.md) | 242 | `result-track:4d4267835a530b3113d11c01aed7512ccabe17d913618e472e8d0c2a3a4c3730` |
| 17 | `theorem` | [bot_lt_comap_prime](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/bot-lt-comap-prime--c329d01f46b473264dd6edf4.md) | 277 | `result-track:c329d01f46b473264dd6edf4ab24d4f2854f616ff0ed8d8416205bcca23c2856` |
| 18 | `lemma` | [_root_.GRWTSK.Algebra.MkPrimeMemIff.Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.NoZeroSMulDivisors_of_isLocalization](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/root-grwtsk-algebra-mkprimememiff-variant55520d64b84958f91cef774bf862ca8--eb84804706ba7e5724746497.md) | 285 | `result-track:eb84804706ba7e5724746497e40f61bf34f365888e24684514eead82ff5ac092` |
| 19 | `lemma` | [of_surjective](../../../../mathematics/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/declarations/of-surjective--379abee0b9f8e034e071c3e0.md) | 310 | `result-track:379abee0b9f8e034e071c3e056a2ad989c4504f84c5415d8cba526db8f30e633` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
