# Verification target: GRWTSK.Algebra.Ideal.Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed8da48b3d831fd3f5f5dd0afde449a051fc7140",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed8da48b3d831fd3f5f5dd0afde449a051fc7140`.

Source path: `GRWTSK/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Away` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk'_mem_iff](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/mk-mem-iff--871d88f1b1e2801a62bafb38.md) | 29 | `result-track:871d88f1b1e2801a62bafb38640f757ca347a1cf5b69d55850e4c8930879fe94` |
| 2 | `def` | [map_ideal](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/map-ideal--0ef6324c6bc10a2788d0da2c.md) | 43 | `declaration-track:0ef6324c6bc10a2788d0da2c352e2d976e56af739435b7b7fce0b8cd4c59cf36` |
| 3 | `theorem` | [mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/mem-map-algebramap-iff--973328467eb22b3e7f3210b0.md) | 63 | `result-track:973328467eb22b3e7f3210b02ffec666fe1cbb47a8bb69af4bb08a5c5481184b` |
| 4 | `lemma` | [mk'_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/mk-mem-map-algebramap-iff--ebaf10eea8fdf077382d3cd7.md) | 76 | `result-track:ebaf10eea8fdf077382d3cd7b758245632ad797d0438d81f187525c085ba157a` |
| 5 | `lemma` | [algebraMap_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/algebramap-mem-map-algebramap-iff--01be5ff5e83c5b1f04006438.md) | 84 | `result-track:01be5ff5e83c5b1f04006438c05526f2454c1d84a90169784f25bb40fff36198` |
| 6 | `lemma` | [map_algebraMap_ne_top_iff_disjoint](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/map-algebramap-ne-top-iff-disjoint--ea83030d8c618cde2fe9ebf9.md) | 89 | `result-track:ea83030d8c618cde2fe9ebf93ade68db993401d82b22d6e1c8c7b832530a6abe` |
| 7 | `theorem` | [map_comap](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/map-comap--e82e974ab62a9bbf926ef207.md) | 96 | `result-track:e82e974ab62a9bbf926ef207c786084cb36b54fe4e3ba129744697777ababba9` |
| 8 | `theorem` | [comap_map_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/comap-map-of-isprime-disjoint--328723642e1346c1b012be47.md) | 107 | `result-track:328723642e1346c1b012be470f169ebed42c82694c758077ecaa735deffdd9b8` |
| 9 | `def` | [orderEmbedding](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/orderembedding--12a08340c272fdcf3c49ba2a.md) | 122 | `declaration-track:12a08340c272fdcf3c49ba2a4ecf352ac5daf9f3c63ab97fa069b2257ffed090` |
| 10 | `theorem` | [isPrime_iff_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/isprime-iff-isprime-disjoint--484ef964c362fc9c7762be1f.md) | 135 | `result-track:484ef964c362fc9c7762be1fd1a30df654870aeb4a39c7d0d5e8514b68948413` |
| 11 | `theorem` | [isPrime_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/isprime-of-isprime-disjoint--247768b6d5d0210f68460925.md) | 165 | `result-track:247768b6d5d0210f6846092590bc6c8fbb9a25b8364c8e8b7e09ccc20b1260db` |
| 12 | `theorem` | [disjoint_comap_iff](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/disjoint-comap-iff--cc2d7863cbca1d4223bcda69.md) | 170 | `result-track:cc2d7863cbca1d4223bcda69ad2ca45682f47d02df5a447fb2706d931dd927ba` |
| 13 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/orderisoofprime--04c51810bdfc718499f80f80.md) | 181 | `declaration-track:04c51810bdfc718499f80f80ca61a5b80f7b91d357682e7dc3aba46397f70a06` |
| 14 | `lemma` | [map_radical](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/map-radical--d2a1ac69439f96134e2f3112.md) | 194 | `result-track:d2a1ac69439f96134e2f3112fb9f822d86189688391ff88a905059ce85f9c725` |
| 15 | `theorem` | [ideal_eq_iInf_comap_map_away](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/ideal-eq-iinf-comap-map-away--eef2f20dcb6c1014e9a77a28.md) | 204 | `result-track:eef2f20dcb6c1014e9a77a287b4755901ec67d3a78ca1f5bf184b4187579d91d` |
| 16 | `theorem` | [surjective_quotientMap_of_maximal_of_localization](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/surjective-quotientmap-of-maximal-of-localization--18948e7bf12b0fcd6bc9dbd0.md) | 234 | `result-track:18948e7bf12b0fcd6bc9dbd0a6e10ca37a5ac0db19238a8b8d3598a74e9aa75c` |
| 17 | `theorem` | [bot_lt_comap_prime](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/bot-lt-comap-prime--3354a3996b26fa647fc5ecb6.md) | 269 | `result-track:3354a3996b26fa647fc5ecb68869e7a5a69c8e6daabdc1a461a2be3ce633b01e` |
| 18 | `lemma` | [_root_.NoZeroSMulDivisors_of_isLocalization](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/root-nozerosmuldivisors-of-islocalization--00e74761c2871c33a36a40d8.md) | 277 | `result-track:00e74761c2871c33a36a40d8f4c3b7723f58028f5bc191e8559a68a2ebd803f9` |
| 19 | `lemma` | [of_surjective](../../../../mathematics/Algebra/Ideal/Variant55520d64b84958f91cef774bf862ca81538dfb59c4fca9a67ca7342474e311a6.lean/declarations/of-surjective--cd3e8d003e8e92e97518a6f7.md) | 302 | `result-track:cd3e8d003e8e92e97518a6f727e6cc5491491316daac6b1379b3a82d29f8cec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
