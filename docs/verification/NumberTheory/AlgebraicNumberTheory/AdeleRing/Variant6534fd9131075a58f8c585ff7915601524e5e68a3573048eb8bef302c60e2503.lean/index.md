# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.AdeleRing.Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bfa8321dd9d3c21056b56cc088346ba19a5d2d8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bfa8321dd9d3c21056b56cc088346ba19a5d2d8`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Completion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InfiniteAdeleRing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/infiniteadelering--71c35dc54733a07c480ae35f.md) | 51 | `declaration-track:71c35dc54733a07c480ae35febf07ada2d4fa6f3e322c76571e6f58cbe7a36b5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--16272db75fc474d9d525f5a3.md) | 57 | `declaration-track:16272db75fc474d9d525f5a340444be8f4cb5060b13a4da574b7c686d671f3d1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--c1755ec3ebf13ef6779e740b.md) | 59 | `declaration-track:c1755ec3ebf13ef6779e740b19135401927c57e4fd9b346c366607641bc2939e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--99d2afa4eab773aa71124809.md) | 61 | `declaration-track:99d2afa4eab773aa711248098d12870a389791559917f3cd70c2de14dc464195` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--f0f65d9331e12c714d821fb8.md) | 64 | `declaration-track:f0f65d9331e12c714d821fb85b1796732fe09b6c70c883b6aa90546eeaf03a00` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--b089df8959e6bf1386b4ea63.md) | 66 | `declaration-track:b089df8959e6bf1386b4ea63c4caae791533b209fbdbaf876634109f1d5c735f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--6a18523d2a5ff69c72a6e3e8.md) | 68 | `declaration-track:6a18523d2a5ff69c72a6e3e8a7e591e040f88e366832748f504f12eaea3ca077` |
| 8 | `theorem` | [algebraMap_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/algebramap-apply--0bfcc1b40410f7d70db5e820.md) | 71 | `result-track:0bfcc1b40410f7d70db5e8209ad481db52280966a70cccaa36f00449ba0b9a98` |
| 9 | `instance` | [locallyCompactSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/locallycompactspace--eb6c71e94c6e13d8ae6bb682.md) | 75 | `declaration-track:eb6c71e94c6e13d8ae6bb68209cf56d2f7e97a7b027b699c2a080b2402a27997` |
| 10 | `abbrev` | [ringEquiv_mixedSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/ringequiv-mixedspace--7db1497a8332b4655bcff1c2.md) | 81 | `declaration-track:7db1497a8332b4655bcff1c2fcf83fd1ce4279818086ac0cd936c16fd2a7ca82` |
| 11 | `theorem` | [ringEquiv_mixedSpace_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/ringequiv-mixedspace-apply--25537f37718dcf58606d7002.md) | 95 | `result-track:25537f37718dcf58606d70024eebc6a8eb05c7b922b94be4193c60bf936f3d56` |
| 12 | `theorem` | [mixedEmbedding_eq_algebraMap_comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/mixedembedding-eq-algebramap-comp--c39ef368e93aabf05edf6075.md) | 103 | `result-track:c39ef368e93aabf05edf6075a9c05a88853e30b8e6f743abaaab9db57c908cfe` |
| 13 | `def` | [AdeleRing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/adelering--fc09b93476f3b99d53258f66.md) | 128 | `declaration-track:fc09b93476f3b99d53258f66d1323cf01b172ef353a93f55ee618d46676f51fb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--d26c82737bd35bcec11b6c72.md) | 136 | `declaration-track:d26c82737bd35bcec11b6c72b6703e00f5e684968d70b771d12f64a75a793d44` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--b6de95b31417c049b6b044c9.md) | 138 | `declaration-track:b6de95b31417c049b6b044c98616d0f21396fe970fa852138d33c868dfe1a093` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--371b6d11447ad5b1987f9c35.md) | 140 | `declaration-track:371b6d11447ad5b1987f9c35edbaf7c57210ba57f93e4fc49dfdc39a5942a118` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--e2747f7446074e7980105c9d.md) | 142 | `declaration-track:e2747f7446074e7980105c9d07459b8f0de6195e7f82d23d88d8463139ff8001` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/instance--346d4bff7a5b6203deb69e99.md) | 144 | `declaration-track:346d4bff7a5b6203deb69e998a5b621800d2d419d7f730d952445d3d1c21bf7a` |
| 19 | `theorem` | [algebraMap_fst_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/algebramap-fst-apply--9658a8d90ba5517ec9962ecd.md) | 147 | `result-track:9658a8d90ba5517ec9962ecdb85fca23e58e125ef07e763ac22261546deba19f` |
| 20 | `theorem` | [algebraMap_snd_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/algebramap-snd-apply--c6e32f835846673bebae9b9c.md) | 151 | `result-track:c6e32f835846673bebae9b9cb354e156adab30801e31a9add7609cda7600dc7d` |
| 21 | `theorem` | [algebraMap_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/algebramap-injective--17294fa086ef483317949c41.md) | 154 | `result-track:17294fa086ef483317949c4142e9b235514c4c972406654b5b16db1cfb481be5` |
| 22 | `abbrev` | [principalSubgroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant6534fd9131075a58f8c585ff7915601524e5e68a3573048eb8bef302c60e2503.lean/declarations/principalsubgroup--9add0d706279a982ded5f1db.md) | 158 | `declaration-track:9add0d706279a982ded5f1db598dcd7d91fb5ddb41e55621fd45fb9e81bf68fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
