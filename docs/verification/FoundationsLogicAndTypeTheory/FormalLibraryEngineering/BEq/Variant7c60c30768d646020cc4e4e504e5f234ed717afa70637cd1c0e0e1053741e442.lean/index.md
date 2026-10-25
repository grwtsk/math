# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BEq.Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23d3a4a74f488149dc0ff88c4a4e14942d4bf8d2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23d3a4a74f488149dc0ff88c4a4e14942d4bf8d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PartialEquivBEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/partialequivbeq--49679377211329c9a84d4c4a.md) | 21 | `declaration-track:49679377211329c9a84d4c4a3de9d0148ac9d75c179953a90d8528a87cbf20eb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/instance--293ddff51ffb44423d2c691d.md) | 27 | `declaration-track:293ddff51ffb44423d2c691d562ac45d0d45f6f451dd19b640d4984dbe2225cd` |
| 3 | `class` | [EquivBEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/equivbeq--1914835368b0df90ca4b2890.md) | 31 | `declaration-track:1914835368b0df90ca4b28901e0d607895e443dc6a53727f85bf639ba397b7ac` |
| 4 | `theorem` | [BEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-symm--3b88f2ec30a2a08c70ec44e3.md) | 33 | `result-track:3b88f2ec30a2a08c70ec44e3ea165d7106609063dd774e5290e6b5284dbdbf0b` |
| 5 | `theorem` | [BEq.comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-comm--dff9d5cd20a3fb6232a784ee.md) | 36 | `result-track:dff9d5cd20a3fb6232a784ee0eaeb0900bee4e9adc684ab4a258f6d91c7f79a8` |
| 6 | `theorem` | [bne_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/bne-eq--b0205e2339ff257f0a59a970.md) | 39 | `result-track:b0205e2339ff257f0a59a9705da8c1d73631146929a5bda4b1abb57bc9ca52a0` |
| 7 | `theorem` | [bne_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/bne-comm--7126346867abc73d2ba79d4e.md) | 41 | `result-track:7126346867abc73d2ba79d4e06f6fd21dc04eedf8ed898e16e5306947be899db` |
| 8 | `theorem` | [BEq.symm_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-symm-false--5fb82fc42e3e92acbd07d22d.md) | 44 | `result-track:5fb82fc42e3e92acbd07d22d6cc7a7be4f75b95a0b86b33fb65884fa025e70f8` |
| 9 | `theorem` | [BEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-trans--ed4bc0971badb12c98f379ce.md) | 47 | `result-track:ed4bc0971badb12c98f379ce59abee84f47179d705139a135fa364508812a08e` |
| 10 | `theorem` | [BEq.congr_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-congr-left--608cf6022dec67dd6f463915.md) | 50 | `result-track:608cf6022dec67dd6f46391558b3b466d3a23d2f22aadf93164c22f6a0193abd` |
| 11 | `theorem` | [BEq.congr_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-congr-right--a003bd74176976822037569c.md) | 54 | `result-track:a003bd74176976822037569c4dbbd79fde3131d543a0412355f91a1dc7978d35` |
| 12 | `theorem` | [BEq.neq_of_neq_of_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-neq-of-neq-of-beq--6898340dda71fa482f4512e0.md) | 58 | `result-track:6898340dda71fa482f4512e01e4b4f4af6d9eaba933bd186766a56b469bd15d7` |
| 13 | `theorem` | [BEq.neq_of_beq_of_neq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/beq-neq-of-beq-of-neq--6964789a5c21db6bd1373e91.md) | 62 | `result-track:6964789a5c21db6bd1373e9102e8c170b68e97240abd88f16c37f7d2afe31e26` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/instance--ec49e8ee06ccf4cd6f38f702.md) | 66 | `declaration-track:ec49e8ee06ccf4cd6f38f7029d1728a188f2718b362493455a32eaa632e48b15` |
| 15 | `theorem` | [equivBEq_of_iff_apply_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442.lean/declarations/equivbeq-of-iff-apply-eq--9b486266db7312e47cc25527.md) | 70 | `result-track:9b486266db7312e47cc25527a2ff013daaa9e69096691a2a99bb34b536bdef60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
