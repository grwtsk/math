# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FactorisationProperties.Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7327429d5459c0d4f89915e510f471859ff158bd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7327429d5459c0d4f89915e510f471859ff158bd`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/abundant--582dd741e67655891b5a1e3c.md) | 63 | `declaration-track:582dd741e67655891b5a1e3c31d00e9eceb0d47df4883f9e40a4f4ef0b992077` |
| 2 | `def` | [Deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/deficient--0a0bce06b6b71440bf1a5986.md) | 66 | `declaration-track:0a0bce06b6b71440bf1a59869b9f6712688c914be2e76ad65fcfb0f5a21a2818` |
| 3 | `def` | [Pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/pseudoperfect--61521a87acd674c8ce938565.md) | 70 | `declaration-track:61521a87acd674c8ce9385654ba821948a44478312496845660687c2e7761746` |
| 4 | `def` | [Weird](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/weird--d44b7f032250a230acdc669e.md) | 74 | `declaration-track:d44b7f032250a230acdc669ea7cc27f14366e5e5bccdaed77b699ea2ecd7e1ec` |
| 5 | `theorem` | [not_pseudoperfect_iff_forall](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/not-pseudoperfect-iff-forall--b19556afbdaf297545c46be6.md) | 76 | `result-track:b19556afbdaf297545c46be624e70f92f91a7db9c21f31e7e52cc862c4e154a5` |
| 6 | `theorem` | [deficient_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/deficient-one--36f50cefadcade0b72d21b53.md) | 81 | `result-track:36f50cefadcade0b72d21b53d7f1bae7d32919a6e4385064cd49338bc09deafc` |
| 7 | `theorem` | [deficient_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/deficient-two--da3a0c23d04b128a8d27f467.md) | 82 | `result-track:da3a0c23d04b128a8d27f467e805a9ebce64fc34915770a9cbe42a05a0fe97e7` |
| 8 | `theorem` | [deficient_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/deficient-three--3d3da3ee05fbe7aeca652d9e.md) | 83 | `result-track:3d3da3ee05fbe7aeca652d9eb9249cb39d0821b8d2bb870049b1f8c0eae14703` |
| 9 | `theorem` | [abundant_twelve](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/abundant-twelve--e40a1a7ab1428bca91e771fb.md) | 85 | `result-track:e40a1a7ab1428bca91e771fb1f4fcff82472d4f4d4283247a7022ce0c82f873a` |
| 10 | `theorem` | [weird_seventy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/weird-seventy--d0d555e55afa486970ebe27b.md) | 89 | `result-track:d0d555e55afa486970ebe27b915d067afe037709965dce41ebb6d0d80d5323fb` |
| 11 | `lemma` | [deficient_iff_not_abundant_and_not_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/deficient-iff-not-abundant-and-not-perfect--58435d3989a54b45f8a795f9.md) | 101 | `result-track:58435d3989a54b45f8a795f99aa8f01c135747cd624764f885255fa9ee4e8a1e` |
| 12 | `lemma` | [perfect_iff_not_abundant_and_not_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/perfect-iff-not-abundant-and-not-deficient--514b4a4e586cf533d36c115c.md) | 106 | `result-track:514b4a4e586cf533d36c115c5ad0795d48d59bbd7bc0325b3d11eed99393c1b1` |
| 13 | `lemma` | [abundant_iff_not_perfect_and_not_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/abundant-iff-not-perfect-and-not-deficient--947913b04b01c6a1d913a570.md) | 111 | `result-track:947913b04b01c6a1d913a5701f1cd4215d3d9860455f55cb25d93fcb1df0979e` |
| 14 | `theorem` | [deficient_or_perfect_or_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/deficient-or-perfect-or-abundant--836cb0c7af9937c85b2938bf.md) | 117 | `result-track:836cb0c7af9937c85b2938bf8e7f9042cce88db24cd8cc40164b7a0fd416e26c` |
| 15 | `theorem` | [Perfect.pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/perfect-pseudoperfect--394e40fb3a73e93728c311b0.md) | 122 | `result-track:394e40fb3a73e93728c311b038da130be8623a78d7300571d6708f514b5e8e6b` |
| 16 | `theorem` | [Prime.not_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/prime-not-abundant--60f0132be430c506197a26d8.md) | 125 | `result-track:60f0132be430c506197a26d82cf2caa0e00507fa4bc7db11c1df3dcf5794ce79` |
| 17 | `theorem` | [Prime.not_weird](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/prime-not-weird--7d0c275b4e13da9180d0330e.md) | 128 | `result-track:7d0c275b4e13da9180d0330ee9c64da8bed4a3e7f4bd70da232a72383afa0008` |
| 18 | `theorem` | [Prime.not_pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/prime-not-pseudoperfect--f44e796e3edb6a1b35ad9014.md) | 133 | `result-track:f44e796e3edb6a1b35ad90147f674ae99b590cce0e9ea715eb044d9a0e377a78` |
| 19 | `theorem` | [Prime.not_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/prime-not-perfect--d5adaa49ae65604d066c2cc8.md) | 141 | `result-track:d5adaa49ae65604d066c2cc88e92bfd308c360611106c7cc4af05361e6f091cc` |
| 20 | `theorem` | [Prime.deficient_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/prime-deficient-pow--45a71dd414da5ca4ac5d3a57.md) | 147 | `result-track:45a71dd414da5ca4ac5d3a57130b9526a115e94f620ef6d13f05e68838d24774` |
| 21 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.Abundant.Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.IsPrimePow.deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-abundant-variant4dbd24ed--298604a06c2f58fa6517fb10.md) | 173 | `result-track:298604a06c2f58fa6517fb1085727ac20656bae4b3dff1c893bd8a586ec530ab` |
| 22 | `theorem` | [Prime.deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/prime-deficient--d45d63893138705dd050abcf.md) | 177 | `result-track:d45d63893138705dd050abcf7a24675ba9c5336cec62a7158b221cfe6eb6b48d` |
| 23 | `theorem` | [infinite_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/infinite-deficient--214f0d1d966592a32343b09a.md) | 182 | `result-track:214f0d1d966592a32343b09aaf7b31957523d02b27929872987b21bc8552378d` |
| 24 | `theorem` | [infinite_even_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/infinite-even-deficient--93692e55a9f8f340601f3b6b.md) | 188 | `result-track:93692e55a9f8f340601f3b6b07d20e2b9910baf21f9074d840f4b43af2edd2e9` |
| 25 | `theorem` | [infinite_odd_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variante5a216e4de73ae43fdc0dd0287a1066f943036a8889ddbb41e3eb9fe05025348.lean/declarations/infinite-odd-deficient--cb556db65a2152ddcbe372be.md) | 198 | `result-track:cb556db65a2152ddcbe372be0498ea6ee0973185f316e6573d3b2b059d59c8b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
