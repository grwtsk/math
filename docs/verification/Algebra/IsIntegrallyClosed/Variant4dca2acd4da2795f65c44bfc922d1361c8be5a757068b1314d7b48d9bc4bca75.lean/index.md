# Verification target: GRWTSK.Algebra.IsIntegrallyClosed.Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17c954a5b79d2960dc9066cf0aa385bfca4295ce",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17c954a5b79d2960dc9066cf0aa385bfca4295ce`.

Source path: `GRWTSK/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.GaussLemma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegrallyClosed_eq_field_fractions](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/isintegrallyclosed-eq-field-fractions--17dc38a84c5fcb4720b28434.md) | 50 | `result-track:17dc38a84c5fcb4720b284349d8e5d4590c544fdb5582f67fc6f4bff097d0410` |
| 2 | `theorem` | [isIntegrallyClosed_eq_field_fractions'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/isintegrallyclosed-eq-field-fractions--24ac3e12bd8adfe1fecd3791.md) | 62 | `result-track:24ac3e12bd8adfe1fecd37915a1beb9c26af32d8285e68059ee3826be9f42318` |
| 3 | `theorem` | [isIntegrallyClosed_dvd](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/isintegrallyclosed-dvd--d9c73c3af84bc322ee8ef943.md) | 79 | `result-track:d9c73c3af84bc322ee8ef9436a93593bd6c3d81a5231eb1afbb4301d151af393` |
| 4 | `theorem` | [isIntegrallyClosed_dvd_iff](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/isintegrallyclosed-dvd-iff--28db5267accafcbd6ab7ea28.md) | 97 | `result-track:28db5267accafcbd6ab7ea284ea5308d7a5bb1f064ec85942a7c73f4bd251d88` |
| 5 | `theorem` | [ker_eval](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/ker-eval--7afeb36ce17ef29015139578.md) | 105 | `result-track:7afeb36ce17ef29015139578f4fa9a6ed0c0b30728e094685bed9b91ff96e4d2` |
| 6 | `theorem` | [IsIntegrallyClosed.degree_le_of_ne_zero](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/isintegrallyclosed-degree-le-of-ne-zero--bcd267872ba3e92892fd6a84.md) | 116 | `result-track:bcd267872ba3e92892fd6a842c399d4bed1cbb70dc9ef0770ad8ad0cffdce8e1` |
| 7 | `theorem` | [_root_.IsIntegrallyClosed.minpoly.unique](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-isintegrallyclosed-minpoly-unique--48bda5efa6cfb015da820f50.md) | 127 | `result-track:48bda5efa6cfb015da820f50daa5f9b1a0314bbfad93677aa07aec33d32409af` |
| 8 | `theorem` | [prime_of_isIntegrallyClosed](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/prime-of-isintegrallyclosed--0ac75251d01bd60e0bf4d697.md) | 141 | `result-track:0ac75251d01bd60e0bf4d69734f4514a7d1c1a2b05692a2468d6a30757a20185` |
| 9 | `theorem` | [ToAdjoin.injective](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/toadjoin-injective--5ff7d135b4f0c2a876792096.md) | 157 | `result-track:5ff7d135b4f0c2a876792096d088ac49ed8f89483f3e276336e20b3dcc5c9c5d` |
| 10 | `def` | [equivAdjoin](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/equivadjoin--7024a501a88ee06b9f62b1bf.md) | 170 | `declaration-track:7024a501a88ee06b9f62b1bf60ede1d335dd1211e039a9dfb124545ccb16638a` |
| 11 | `def` | [_root_.Algebra.adjoin.powerBasis'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-algebra-adjoin-powerbasis--c02ab78475f7c65b000a1d5d.md) | 177 | `declaration-track:c02ab78475f7c65b000a1d5db61b3619c08459c6ccb2dde60cd809f22f0149e1` |
| 12 | `theorem` | [_root_.Algebra.adjoin.powerBasis'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-algebra-adjoin-powerbasis-dim--d1f949ef8f336b89d1160f3b.md) | 183 | `result-track:d1f949ef8f336b89d1160f3bfed181d36c27ddaf880b278c6372ef69a85f5be2` |
| 13 | `theorem` | [_root_.Algebra.adjoin.powerBasis'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-algebra-adjoin-powerbasis-gen--ee5341a4ed433fbc24471b5c.md) | 188 | `result-track:ee5341a4ed433fbc24471b5c9d555f937333c96adf0bcc95b80027cc42a93b43` |
| 14 | `def` | [_root_.PowerBasis.ofGenMemAdjoin'](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-powerbasis-ofgenmemadjoin--66d2d8fac405bec2031c6a29.md) | 195 | `declaration-track:66d2d8fac405bec2031c6a29e119b9f641f10f7a687ae7a6d5ca3d204b52a0cb` |
| 15 | `theorem` | [_root_.PowerBasis.ofGenMemAdjoin'_dim](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-powerbasis-ofgenmemadjoin-dim--712a91269f0b39d30a9d8a80.md) | 203 | `result-track:712a91269f0b39d30a9d8a806278cecd0302809019c60b5f8fc2b1affceecb78` |
| 16 | `theorem` | [_root_.PowerBasis.ofGenMemAdjoin'_gen](../../../../mathematics/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/declarations/root-powerbasis-ofgenmemadjoin-gen--ab9ed0cabcc5f0c152252366.md) | 209 | `result-track:ab9ed0cabcc5f0c152252366708f0a5fd8d2f3016ce7fc58c34cd91c2c8b6a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
