# Verification target: GRWTSK.Algebra.Parity.Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7bb345b7dc6b904d9020f8265b2d38be1398e60",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7bb345b7dc6b904d9020f8265b2d38be1398e60`.

Source path: `GRWTSK/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [even_succAbove_add_predAbove](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-succabove-add-predabove--441f43aaf50dd34d4565b7c3.md) | 34 | `result-track:441f43aaf50dd34d4565b7c3fb5cd0c61cdcec13ac11097bdb844b393b95eba8` |
| 2 | `lemma` | [even_of_val](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-of-val--231aed5bbcc24cef7d75e827.md) | 43 | `result-track:231aed5bbcc24cef7d75e827be67fbc0e39f616825bec26356feb0cd6f208fe2` |
| 3 | `lemma` | [odd_of_val](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-of-val--d040a999595afa3a11b973a6.md) | 48 | `result-track:d040a999595afa3a11b973a6d0c4e4e5a0c50a8e417fc233e0dbb000505982e3` |
| 4 | `lemma` | [even_of_odd](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-of-odd--492c059a7efec14e9ea00121.md) | 52 | `result-track:492c059a7efec14e9ea0012196f5e4986ab8d6facc3ce1f6b83edf63c65f6dbf` |
| 5 | `lemma` | [odd_of_odd](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-of-odd--ce8fdd9a4c4790f34b0246fc.md) | 59 | `result-track:ce8fdd9a4c4790f34b0246fc4d85bb460e39ed22ceca085275f9b8f1dc561eb4` |
| 6 | `lemma` | [even_iff_of_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-iff-of-even--2c654c58f41397d4b1b7e96e.md) | 64 | `result-track:2c654c58f41397d4b1b7e96eac2c8aaa4650da8f30b13994e5d59782bf831188` |
| 7 | `lemma` | [odd_iff_of_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-iff-of-even--91d5a2b47bb5a83c08654ef3.md) | 71 | `result-track:91d5a2b47bb5a83c08654ef3452d07c4f58161be512d45ccf557bf8c07557374` |
| 8 | `lemma` | [even_iff](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-iff--1154bbf2275bbe754081cdeb.md) | 83 | `result-track:1154bbf2275bbe754081cdebb0a0a65acfd6241bd85afb539dec08a5ca911a7b` |
| 9 | `lemma` | [even_iff_imp](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-iff-imp--ec94a5bf229e0bf72970bba8.md) | 88 | `result-track:ec94a5bf229e0bf72970bba81c7a3011dcd50a1796772d213420cc832d38e993` |
| 10 | `lemma` | [odd_iff](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-iff--30b968cd15541ed17fc3c7cb.md) | 94 | `result-track:30b968cd15541ed17fc3c7cb65a860d792308eeb044fbb6e1ec616364cb6fd29` |
| 11 | `lemma` | [odd_iff_imp](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-iff-imp--8ed06b15a7e2d89a93c06a91.md) | 99 | `result-track:8ed06b15a7e2d89a93c06a91a9a10a99b3f78c1acf006444793b0f2f40a4b794` |
| 12 | `lemma` | [even_iff_mod_of_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-iff-mod-of-even--4ddfd46a3ef50b9320f8b8a3.md) | 103 | `result-track:4ddfd46a3ef50b9320f8b8a3332aa9de03781d0a13b154bde4b393961f29c8ff` |
| 13 | `lemma` | [odd_iff_mod_of_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-iff-mod-of-even--4c6f6598643442cd378dfb81.md) | 107 | `result-track:4c6f6598643442cd378dfb8156a2c719b48f08c3942a4d80f7c46cd9079ee8ec` |
| 14 | `lemma` | [not_odd_iff_even_of_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/not-odd-iff-even-of-even--9d5e9743eca00b657b6cb636.md) | 111 | `result-track:9d5e9743eca00b657b6cb6362a56b46718b015b7e1435f9fe0bf4468f3fff13e` |
| 15 | `lemma` | [not_even_iff_odd_of_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/not-even-iff-odd-of-even--7bbbc7b9a1ec52b6ea5d731a.md) | 115 | `result-track:7bbbc7b9a1ec52b6ea5d731acbddf7b4764d584a2fc6d028dd6dba7642ffa991` |
| 16 | `lemma` | [odd_add_one_iff_even](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/odd-add-one-iff-even--eb27f63922aac3d45f57555c.md) | 119 | `result-track:eb27f63922aac3d45f57555cca8aff7eeeb34135f7f03c56a70c05c0a428ecac` |
| 17 | `lemma` | [even_add_one_iff_odd](../../../../mathematics/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/declarations/even-add-one-iff-odd--dff8f9af30d1af94c9e59e0e.md) | 122 | `result-track:dff8f9af30d1af94c9e59e0edabe572ad1e276fe68f7d51be907442519ee29e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
