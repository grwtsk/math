# Verification target: GRWTSK.Algebra.GroupTheory.Squarefree.Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "301e7cfa89d2ddf767387719433257d197a9ea24",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `301e7cfa89d2ddf767387719433257d197a9ea24`.

Source path: `GRWTSK/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.UniqueFactorizationDomain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree--5b7191fdfdbd881443481d74.md) | 44 | `declaration-track:5b7191fdfdbd881443481d74289ba0de07e910f6f132da6de3f155fffd82916c` |
| 2 | `theorem` | [IsUnit.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/isunit-squarefree--5353af18817c2e10ffe5aaa9.md) | 49 | `result-track:5353af18817c2e10ffe5aaa9655b7c9851265fb2f22821625db5cc6ea41ac4fa` |
| 3 | `theorem` | [squarefree_one](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-one--f202f880397834cf80687af6.md) | 54 | `result-track:f202f880397834cf80687af635ed832750f21be8674b98d937aece2a625c98fa` |
| 4 | `theorem` | [not_squarefree_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/not-squarefree-zero--0c9132bff687d06cd01d66df.md) | 59 | `result-track:0c9132bff687d06cd01d66df99707c67820d7e42b357ccec3509e232229509a9` |
| 5 | `theorem` | [Squarefree.ne_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-ne-zero--d1b6dadc06a11888f446b21f.md) | 64 | `result-track:d1b6dadc06a11888f446b21fab50f2623eecd4732d794eab3e3b23568b37ebeb` |
| 6 | `theorem` | [Irreducible.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/irreducible-squarefree--cb3df121f9db63dbb66d128b.md) | 71 | `result-track:cb3df121f9db63dbb66d128b7061a7ee0c108badd5ded4c9a7bd545556d05508` |
| 7 | `theorem` | [Prime.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/prime-squarefree--afcb36a9185da491ecf5f228.md) | 80 | `result-track:afcb36a9185da491ecf5f2289e1eed005532d5490b6d63eadec4e7d563092686` |
| 8 | `theorem` | [Squarefree.of_mul_left](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-of-mul-left--5c8559976d0d20edd044a0a6.md) | 84 | `result-track:5c8559976d0d20edd044a0a6fcb47bae31e34a656336a168bbea49833fc4d713` |
| 9 | `theorem` | [Squarefree.of_mul_right](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-of-mul-right--9eca72e655decaf3fefb92f9.md) | 88 | `result-track:9eca72e655decaf3fefb92f96a1659130b23c79364755f1945ff694a57357ec2` |
| 10 | `theorem` | [Squarefree.squarefree_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-squarefree-of-dvd--30e9cee48c139f57734d1ccb.md) | 92 | `result-track:30e9cee48c139f57734d1ccbe1c3da1ba9ebda79ba27ce573d5c51acff776203` |
| 11 | `theorem` | [Squarefree.gcd_right](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-gcd-right--1bfe4d617083343b5f1fcbaf.md) | 100 | `result-track:1bfe4d617083343b5f1fcbafa731af755a1747a3d84ec8ed1da794b14ee76229` |
| 12 | `theorem` | [Squarefree.gcd_left](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-gcd-left--048402bd9db5c1d7ce7a2f8b.md) | 104 | `result-track:048402bd9db5c1d7ce7a2f8bc923cf0258771014700303ec25320e4d4c4a1287` |
| 13 | `theorem` | [squarefree_iff_multiplicity_le_one](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-iff-multiplicity-le-one--d38c5ad1bcd2ea4ccc131e98.md) | 116 | `result-track:d38c5ad1bcd2ea4ccc131e9850297cefb5e7c9873fd51a51b1fcd56f8ab3fc0c` |
| 14 | `theorem` | [finite_prime_left](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/finite-prime-left--9d4a4327c6c2b156f375f86c.md) | 130 | `result-track:9d4a4327c6c2b156f375f86cbfb613758500478a65fe272a0d111ab3fa41d6fc` |
| 15 | `theorem` | [irreducible_sq_not_dvd_iff_eq_zero_and_no_irreducibles_or_squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/irreducible-sq-not-dvd-iff-eq-zero-and-no-irreducibles-or-squarefree--1d39dcc978022a33d75d9f4a.md) | 157 | `result-track:1d39dcc978022a33d75d9f4ae36c180b7dd42763376239fed04ddf8d3303d240` |
| 16 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-ne-zero--932f57f433e04189cf3497a9.md) | 179 | `result-track:932f57f433e04189cf3497a91b03b2f972d6466843b69dcd030371433dd586aa` |
| 17 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_exists_irreducible](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-exists-irreducible--cbc4c9823b9c5d1b2f454356.md) | 184 | `result-track:cbc4c9823b9c5d1b2f454356e0a67a4c03767d0ccb9f4002bda1aee8a50e0be7` |
| 18 | `theorem` | [IsRadical.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/isradical-squarefree--3e3978c77e25031cf6c3c377.md) | 196 | `result-track:3e3978c77e25031cf6c3c377cbf5de704b0457a4519b1edcfb33d7f534df5912` |
| 19 | `theorem` | [Squarefree.isRadical](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-isradical--1b2c225faf476ead88c2490b.md) | 205 | `result-track:1b2c225faf476ead88c2490b56eb65303314c376588f868d8da136754778a3e2` |
| 20 | `theorem` | [isRadical_iff_squarefree_or_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/isradical-iff-squarefree-or-zero--e931c919be1cb9c775624543.md) | 221 | `result-track:e931c919be1cb9c7756245434de7b6e44ac5146b2e96e5615edac12272d0eba6` |
| 21 | `theorem` | [isRadical_iff_squarefree_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/isradical-iff-squarefree-of-ne-zero--fe4d6b35b798fce837f1f68c.md) | 229 | `result-track:fe4d6b35b798fce837f1f68c6c4491370d08991162d07659ad7bfa6d5cbc2200` |
| 22 | `theorem` | [squarefree_iff_nodup_normalizedFactors](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-iff-nodup-normalizedfactors--449b0788cfc4c76c5c9f201b.md) | 239 | `result-track:449b0788cfc4c76c5c9f201b6fa98512b336e04b4005478cda70a04ba820fb41` |
| 23 | `theorem` | [dvd_pow_iff_dvd_of_squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/dvd-pow-iff-dvd-of-squarefree--02465d75a6fec45ea4b278ae.md) | 265 | `result-track:02465d75a6fec45ea4b278ae710c82a386b5a962a42db3ed183a25c5bf1ec24c` |
| 24 | `theorem` | [squarefree_natAbs](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-natabs--05f6ee0a9b0170c7710f43e1.md) | 277 | `result-track:05f6ee0a9b0170c7710f43e1e55298f125d7f29f4d1efa78103e35603bf94f84` |
| 25 | `theorem` | [squarefree_coe_nat](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/declarations/squarefree-coe-nat--231c539b4703da8e7112e25f.md) | 283 | `result-track:231c539b4703da8e7112e25f464913e4b1947b8aa989db736126475033e5a06b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
