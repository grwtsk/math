# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7bf666ed5a600347601c0678735730810b45d4f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7bf666ed5a600347601c0678735730810b45d4f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/int-iscoprime-iff-gcd-eq-one--7566b18b078b0dad9edd3fd7.md) | 41 | `result-track:7566b18b078b0dad9edd3fd7c3d7e6d4eda1ee5121788b2ef625294f2b7e0303` |
| 2 | `theorem` | [Nat.isCoprime_iff_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/nat-iscoprime-iff-coprime--96075b3ab6e974cbb3343f41.md) | 50 | `result-track:96075b3ab6e974cbb3343f41d85124bdac081e7d1b5eead7f56f4e0f4ffb4e5e` |
| 3 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/ne-zero-or-ne-zero-of-nat-coprime--d02e39d70901f22658cd17af.md) | 58 | `result-track:d02e39d70901f22658cd17af730776ca3d41fbecca2dd3e5a77098d3b1a96021` |
| 4 | `theorem` | [IsCoprime.prod_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-prod-left--f7e1a6e297a14bd28cb555cb.md) | 63 | `result-track:f7e1a6e297a14bd28cb555cb1e9ad677a559c60b3efba3bb079b6c362930a191` |
| 5 | `theorem` | [IsCoprime.prod_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-prod-right--e594181e3cf391f84babe7bb.md) | 70 | `result-track:e594181e3cf391f84babe7bbc739bb0504630fcac8b9335f20f3493c81e45cd2` |
| 6 | `theorem` | [IsCoprime.prod_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-prod-left-iff--4200e36c6d282000e30ca607.md) | 74 | `result-track:4200e36c6d282000e30ca60726362e740e8172a14cb10acfae0a677e9876a6bf` |
| 7 | `theorem` | [IsCoprime.prod_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-prod-right-iff--d045940df65cb549e432eae1.md) | 79 | `result-track:d045940df65cb549e432eae1581cbe32f7932ca5a1b84b223b5fb532f6cab46e` |
| 8 | `theorem` | [IsCoprime.of_prod_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-of-prod-left--150982f24cf93e8504dd3943.md) | 83 | `result-track:150982f24cf93e8504dd3943f6b51b215bb124f877182cf0afda2425388f8730` |
| 9 | `theorem` | [IsCoprime.of_prod_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-of-prod-right--80e4f40b1e8a7faf96cddea9.md) | 88 | `result-track:80e4f40b1e8a7faf96cddea901666fe7f482c2af05a5b8c0b21bf10eb3af195f` |
| 10 | `theorem` | [Finset.prod_dvd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/finset-prod-dvd-of-coprime--03b2b00d7fc477f5f97a0b6c.md) | 94 | `result-track:03b2b00d7fc477f5f97a0b6cb3287ebfb76f3547cfbb7cc4bea8b4e54eddc853` |
| 11 | `theorem` | [Fintype.prod_dvd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/fintype-prod-dvd-of-coprime--71006ac079ae789cf193a08a.md) | 110 | `result-track:71006ac079ae789cf193a08a8aa7e59c459a26fd85736f9a9cdba3c56cbeb31a` |
| 12 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--8b5ae73c78c6ae5e776ae12b.md) | 119 | `result-track:8b5ae73c78c6ae5e776ae12b7d74f12a49a2d63655863413872d32de2f0f687e` |
| 13 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--dfca8d59e44deaa0a6d2ead3.md) | 180 | `result-track:dfca8d59e44deaa0a6d2ead36ef029ef52bfcd71993065d8a12c46e3200e2a2b` |
| 14 | `theorem` | [pairwise_coprime_iff_coprime_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/pairwise-coprime-iff-coprime-prod--0f4d7eb78bbf753c3c4e01fa.md) | 187 | `result-track:0f4d7eb78bbf753c3c4e01fa31ecf4f7be24fec16868c35b248299ef375719ac` |
| 15 | `theorem` | [IsCoprime.pow_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-pow-left--26956604ed636ec46422de64.md) | 201 | `result-track:26956604ed636ec46422de64033d4420f177539027de1ec93ede6d94f8ec2aa4` |
| 16 | `theorem` | [IsCoprime.pow_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-pow-right--a747c4418d95796e1dbbaeff.md) | 206 | `result-track:a747c4418d95796e1dbbaeff4b49ce0ea19af9f8a97ab80cccd06b2ef09783c8` |
| 17 | `theorem` | [IsCoprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-pow--acc857993fe9be1564967e5d.md) | 211 | `result-track:acc857993fe9be1564967e5d62479649c4a84b06efff85fe5a94b92c169ddeb3` |
| 18 | `theorem` | [IsCoprime.pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-pow-left-iff--6249a23d89a2480596074325.md) | 215 | `result-track:6249a23d89a2480596074325c21fe91e15d1e709fef93ef315be8f9fda8e5082` |
| 19 | `theorem` | [IsCoprime.pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-pow-right-iff--2cb39d47a5dffd6ef3e9c8b9.md) | 223 | `result-track:2cb39d47a5dffd6ef3e9c8b93c06d59c955a41d1a0b438bd397bcd01dba2159b` |
| 20 | `theorem` | [IsCoprime.pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant87b6d071d3885059c13e234565ba540e75cc9b5eba0c5196905754cbbe8ddc6b.lean/declarations/iscoprime-pow-iff--30a4d81bd545868a41a22977.md) | 227 | `result-track:30a4d81bd545868a41a229775411dca9394d1ec492db9fd1210f7264f9ccc05e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
