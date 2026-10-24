# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Basic.Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22dbbacde8046d5b20475335eb6e0c73e44dafaf",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22dbbacde8046d5b20475335eb6e0c73e44dafaf`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NumberField](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/numberfield--1155e9326f40840d5ec22ad0.md) | 37 | `declaration-track:1155e9326f40840d5ec22ad040144f5069656fe333dc0cc4819a83c8b70426e3` |
| 2 | `theorem` | [Int.not_isField](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/int-not-isfield--6888f05e5f4321109df74df0.md) | 47 | `result-track:6888f05e5f4321109df74df028c57a539bd5ed4d151adaa64e66ba8d49e643f9` |
| 3 | `theorem` | [isAlgebraic](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/isalgebraic--2cabd92a35118663ae8f9bca.md) | 59 | `result-track:2cabd92a35118663ae8f9bca884dec5402f4b9a093f4c35a794e63edd4cba479` |
| 4 | `def` | [ringOfIntegers](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/ringofintegers--50594f442cae8c7d8281d0d9.md) | 65 | `declaration-track:50594f442cae8c7d8281d0d96bde8aa0c56541a16d4fbf10f3d8d63d49862bc4` |
| 5 | `theorem` | [mem_ringOfIntegers](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/mem-ringofintegers--f20e02f4b659dbcaf9f5a9ba.md) | 71 | `result-track:f20e02f4b659dbcaf9f5a9ba0b0fa467bb04f04b84f5abbb385da78fc2452b26` |
| 6 | `theorem` | [isIntegral_of_mem_ringOfIntegers](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/isintegral-of-mem-ringofintegers--654fe64a8318870f15fc9dab.md) | 75 | `result-track:654fe64a8318870f15fc9dab5d0c9bef3c99622d107404a28d1ec6e44124a803` |
| 7 | `instance` | [inst_ringOfIntegersAlgebra](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/inst-ringofintegersalgebra--551edd5cb3c3361dcec0967a.md) | 84 | `declaration-track:551edd5cb3c3361dcec0967a58449e0d3acc7ae393002e977b1c0887b0134893` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/example--858c85852333355a4e124177.md) | 96 | `declaration-track:858c85852333355a4e1241778869cbfc927dc93d2a788d58ff10eacbed775f7c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--7ef3019f2c6a6ac4209e5f64.md) | 102 | `declaration-track:7ef3019f2c6a6ac4209e5f64353802e351fc7e2ec35f84c56a66d01437eafe3b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--6876ff458dde3353cac9573d.md) | 105 | `declaration-track:6876ff458dde3353cac9573de278b64a5f8cc5ecb5dff8a269bdcbef8f17cb44` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--51433d51dfe194c52faff6ca.md) | 108 | `declaration-track:51433d51dfe194c52faff6cabf6c619a96605bb0f40a758b2328bce7f8307082` |
| 12 | `theorem` | [isIntegral_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/isintegral-coe--b0ebd83048b4ccbd09e44908.md) | 111 | `result-track:b0ebd83048b4ccbd09e449081abd33205d3333e4bb0708c70daeedef38c02a04` |
| 13 | `theorem` | [map_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/map-mem--77a5d0094bfb589dc0f72235.md) | 115 | `result-track:77a5d0094bfb589dc0f7223545b5b66309ffe39e3c88c4aee43e629bb0a9eed6` |
| 14 | `def` | [equiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/equiv--9947e2d6ab0b27b87e7a9843.md) | 121 | `declaration-track:9947e2d6ab0b27b87e7a984351a56978256c6193ed5b508e9b04827e406b77d5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--a56ca152a66be0d91383f20f.md) | 128 | `declaration-track:a56ca152a66be0d91383f20f0d71b0ae50280b8e73f85e04c796e8a6f1691afa` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--17878bb82314bac02ed756d0.md) | 131 | `declaration-track:17878bb82314bac02ed756d0871ac9179988c8d0db0cec820ebf8ff8775cc65f` |
| 17 | `theorem` | [not_isField](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/not-isfield--20c472a96c9b3f68653cba3b.md) | 135 | `result-track:20c472a96c9b3f68653cba3b3416fe2c969d123ae0099bd61803299e47eeef52` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--a8586133cc8c3177ddfce23f.md) | 142 | `declaration-track:a8586133cc8c3177ddfce23f62331e75cec31ffadd426939f54033ba928437a9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--1406e57d429f54159887a992.md) | 145 | `declaration-track:1406e57d429f54159887a9929eafe562d772400e1949c2ad3be758b683e7bb6e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--2363f5100eec7a239670dd98.md) | 148 | `declaration-track:2363f5100eec7a239670dd9860cc191322978a9de2dd83df7cc5395beb492623` |
| 21 | `def` | [basis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/basis--c1bc5c28a9c5e36d6833d9d1.md) | 152 | `declaration-track:c1bc5c28a9c5e36d6833d9d11fb8cc9e6c0fda32ae67ec630175319625bc5a02` |
| 22 | `def` | [integralBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/integralbasis--e253d12ee1dbdf3fc193fd27.md) | 159 | `declaration-track:e253d12ee1dbdf3fc193fd276bba32ceca39636adce8130634d0a8a342904c17` |
| 23 | `theorem` | [integralBasis_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/integralbasis-apply--0c74bac50be1f4420e87ede3.md) | 164 | `result-track:0c74bac50be1f4420e87ede345a41a70cae4dbdbf5c325c8b14237499bfafd13` |
| 24 | `theorem` | [mem_span_integralBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/mem-span-integralbasis--5913ce32437bd53492bc82bc.md) | 169 | `result-track:5913ce32437bd53492bc82bc63e5177635489d32865d37a2f003459ef9fd52ae` |
| 25 | `theorem` | [RingOfIntegers.rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/ringofintegers-rank--8ce789d11756fa67fddbff95.md) | 174 | `result-track:8ce789d11756fa67fddbff956293f840c86f01e729b655f990669217d3182d92` |
| 26 | `instance` | [numberField](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/numberfield--04d601d69769d101fb39e004.md) | 184 | `declaration-track:04d601d69769d101fb39e004e9abc7bf79adb90f1d0e73a52ebbe75915b2f012` |
| 27 | `def` | [ringOfIntegersEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/ringofintegersequiv--2f2829bdcdde8d0a8ff3d950.md) | 195 | `declaration-track:2f2829bdcdde8d0a8ff3d950c8e3d270ac77dff37608751a433bd57b592e2c21` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante463c0c99210d7c667b6940c8ea6ba6e5132ef20d0bcff9fb2b08a433489c23f.lean/declarations/instance--bfa6cb95719362c5cb6cf6c1.md) | 211 | `declaration-track:bfa6cb95719362c5cb6cf6c19c39a194e9d01ce161624e64721379c0f3e6f689` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
