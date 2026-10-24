# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SchurZassenhaus.Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f8e031745a513efe9d5c316347342f086398920",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f8e031745a513efe9d5c316347342f086398920`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Transfer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuotientDiff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/quotientdiff--a8003772e7a025b535b3b490.md) | 34 | `declaration-track:a8003772e7a025b535b3b490e329b60fca38617210461edee4a3c06c09b80bff` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/instance--96fabf75cdfaee1306589938.md) | 40 | `declaration-track:96fabf75cdfaee130658993888056b7b00c6d4d8e0831c9f729b44a6885dbad0` |
| 3 | `theorem` | [smul_diff_smul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/smul-diff-smul--f23e1988920dd87b6ac35604.md) | 43 | `result-track:f23e1988920dd87b6ac3560481cd3ef3d4a330a7068cb48d13db5f63d3e4a70c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/instance--502c9978f1bff930a416bddf.md) | 62 | `declaration-track:502c9978f1bff930a416bddf54f2b99615e714ff399fdb65efdfb7f148cbacb9` |
| 5 | `theorem` | [smul_diff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/smul-diff--d3099ef58df10b97350115f8.md) | 76 | `result-track:d3099ef58df10b97350115f872e5e10d268ed86be0ed7960a3630fa954fc09e3` |
| 6 | `theorem` | [eq_one_of_smul_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/eq-one-of-smul-eq-one--3782bb3d2f111141de7e5260.md) | 87 | `result-track:3782bb3d2f111141de7e5260b1b85724faf56e52906dcbe06f17202369b4862c` |
| 7 | `theorem` | [exists_smul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/exists-smul-eq--920e93ff18b314706ac0c8f1.md) | 96 | `result-track:920e93ff18b314706ac0c8f16a9d61b28cb46ac9dee1242324d2e5a91bf9dde5` |
| 8 | `theorem` | [isComplement'_stabilizer_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/iscomplement-stabilizer-of-coprime--0278d4847a778ec31673eefc.md) | 107 | `result-track:0278d4847a778ec31673eefc8a4053adca033f2a14e7247a9a962789f506755e` |
| 9 | `theorem` | [exists_right_complement'_of_coprime_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/exists-right-complement-of-coprime-aux--6cf8704afc0935e17cf98dd6.md) | 112 | `result-track:6cf8704afc0935e17cf98dd6b3a073b02150282d36e942bd9ad2959c74cda7e5` |
| 10 | `theorem` | [step0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step0--d31777e1ca7fd6cc7c7e15ec.md) | 151 | `result-track:d31777e1ca7fd6cc7c7e15ec528d1637620bde1d6603e4b2b8ab1e72280238da` |
| 11 | `theorem` | [step1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step1--3de2079e8b9c6dc90db85da4.md) | 159 | `result-track:3de2079e8b9c6dc90db85da4d6c0fd8438e937119517c7076fb10310351f7dcb` |
| 12 | `theorem` | [step2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step2--4d96eed3abe06406a4fa3298.md) | 183 | `result-track:4d96eed3abe06406a4fa3298f91a4199d5fc2ce59e435665bc87231f7a795d39` |
| 13 | `theorem` | [step3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step3--5264f42db29e69b099a41408.md) | 214 | `result-track:5264f42db29e69b099a41408daf9ca02d01158a4a8ead708fef6d0038e0d1dd6` |
| 14 | `theorem` | [step4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step4--24660bb1e01f947cfca13a90.md) | 225 | `result-track:24660bb1e01f947cfca13a90cc32bb7be3c0351a5b58e5973429a6d39328f240` |
| 15 | `theorem` | [step5](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step5--90eb71d50601ffbbb857519a.md) | 229 | `result-track:90eb71d50601ffbbb857519af82db34e8d6bcf49486cfb3013cd3cb6dea09613` |
| 16 | `theorem` | [step6](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step6--78fb1e2f5f7abe3e3afdc108.md) | 236 | `result-track:78fb1e2f5f7abe3e3afdc1083e39cac0b6638414397853e1edf138885f7330d3` |
| 17 | `theorem` | [step7](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/step7--43f00231b1e077d0b36eb447.md) | 246 | `result-track:43f00231b1e077d0b36eb447f7f6d34680bde4f74f294b45d5e46e25a3478461` |
| 18 | `theorem` | [exists_right_complement'_of_coprime_aux'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/exists-right-complement-of-coprime-aux--c9bb06517a39c6ce2581ad4b.md) | 258 | `result-track:c9bb06517a39c6ce2581ad4b42a8aee1d5241565b8521d5264df883bfd1e4a9d` |
| 19 | `theorem` | [exists_right_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/exists-right-complement-of-coprime--3606c5b484fc1545ead1ce7c.md) | 271 | `result-track:3606c5b484fc1545ead1ce7c963de1ffa62cd1446043c6ea6c4d5c901c65f5e6` |
| 20 | `theorem` | [exists_left_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant78d014773d9b81b463945ed73436dd5ea8a0ecb709a72ced77ebda8befed4421.lean/declarations/exists-left-complement-of-coprime--804bbe71a4a347aa880abe1f.md) | 292 | `result-track:804bbe71a4a347aa880abe1f43f51e2fa6f020b169fb8b49cd2d21c4f5db0ddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
