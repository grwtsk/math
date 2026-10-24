# Verification target: GRWTSK.Algebra.WedderburnArtin.Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0243a75c05e43368fab2f075932bc76f4afb9942",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/index.md) · [Full source](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0243a75c05e43368fab2f075932bc76f4afb9942`.

Source path: `GRWTSK/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteLength` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Isotypic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Congr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSimpleRing.tfae](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/issimplering-tfae--14ad0b11993ca054121d8669.md) | 26 | `result-track:14ad0b11993ca054121d8669736b0886ad394584231b6efec48dfa40123ac5ac` |
| 2 | `theorem` | [IsSimpleRing.isSemisimpleRing_iff_isArtinianRing](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/issimplering-issemisimplering-iff-isartinianring--c1a6fd8c958f5d9ebeb2d0b4.md) | 39 | `result-track:c1a6fd8c958f5d9ebeb2d0b4405039bc48b53f351ef5f852e7d04abd9558d2ee` |
| 3 | `theorem` | [isSimpleRing_isArtinianRing_iff](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/issimplering-isartinianring-iff--cfe424314aacf7d6cae07025.md) | 42 | `result-track:cfe424314aacf7d6cae07025ffb0e5a9ff2ccc589edadf467f5273d412005f9e` |
| 4 | `theorem` | [isIsotypic](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/isisotypic--743ee1714a68da561681a87a.md) | 55 | `result-track:743ee1714a68da561681a87a0f885100df41c851ebad07422401783ea953565d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/instance--8e7bfab7d81104946ab73091.md) | 58 | `declaration-track:8e7bfab7d81104946ab730913e2e43afabd1965301c2f5051cf9ae1874885efa` |
| 6 | `theorem` | [exists_ringEquiv_matrix_end_mulOpposite](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/exists-ringequiv-matrix-end-mulopposite--a9395d83dd04e922be88c357.md) | 63 | `result-track:a9395d83dd04e922be88c357a47455e0411e618b14f80ce3da714b585742da46` |
| 7 | `theorem` | [exists_ringEquiv_matrix_divisionRing](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/exists-ringequiv-matrix-divisionring--bcb36e9acf51204e8ef00f7a.md) | 72 | `result-track:bcb36e9acf51204e8ef00f7a67e7b052c750d3dfe097b10f40b4a51ebe2a60d5` |
| 8 | `theorem` | [exists_algEquiv_matrix_end_mulOpposite](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/exists-algequiv-matrix-end-mulopposite--d51969da12d193358f2dcdb1.md) | 80 | `result-track:d51969da12d193358f2dcdb152fc96f3b77e21085fd5f00d48b0d9b70627b6f9` |
| 9 | `theorem` | [exists_algEquiv_matrix_divisionRing](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/exists-algequiv-matrix-divisionring--db67ef68e3a2e9682f32fb6e.md) | 89 | `result-track:db67ef68e3a2e9682f32fb6ed9306ab426f64e54804b4ba46180355da70c84aa` |
| 10 | `theorem` | [exists_algEquiv_matrix_divisionRing_finite](../../../../mathematics/Algebra/WedderburnArtin/Variant69abc8fddfa88f32b1d8c4f02b8ac4ce65aaaa178e8f450a3e1b086ee22bfa1a.lean/declarations/exists-algequiv-matrix-divisionring-finite--5a8ff57edfbbc4b0926afdfc.md) | 97 | `result-track:5a8ff57edfbbc4b0926afdfcbdccf85191035e74e55c16a0bbce2d51a84440eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
