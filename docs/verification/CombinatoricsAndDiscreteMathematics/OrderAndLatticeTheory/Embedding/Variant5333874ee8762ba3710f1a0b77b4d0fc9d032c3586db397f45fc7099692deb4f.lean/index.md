# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Embedding.Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77030ba2c21af1370bf8ffa1688f5b2ad83700b2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77030ba2c21af1370bf8ffa1688f5b2ad83700b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/tail--298259eb9a32379653e14a09.md) | 42 | `declaration-track:298259eb9a32379653e14a090f3824bfb98a46f59741eb7188600ec3bb5d9071` |
| 2 | `theorem` | [coe_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/coe-tail--28e09cdde54b7a091db7b800.md) | 46 | `result-track:28e09cdde54b7a091db7b80088b37896da76cadd4ac6234cc848461f78a6a436` |
| 3 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/cons--95f81de394e5670d3b1266d4.md) | 49 | `declaration-track:95f81de394e5670d3b1266d4f436338edc89a8d1d5325259b2b297fde9f10838` |
| 4 | `theorem` | [coe_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/coe-cons--6145fac8600609ae30fb4212.md) | 53 | `result-track:6145fac8600609ae30fb4212cc466686c818b0ec0467e18790eafcee317151e5` |
| 5 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/tail-cons--aa2d90b7c87afe36e7272a2d.md) | 56 | `result-track:aa2d90b7c87afe36e7272a2d345781b92b61bd640f6598b33eb890dd89638994` |
| 6 | `def` | [init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/init--df430b32fbd7f2306ad25d41.md) | 60 | `declaration-track:df430b32fbd7f2306ad25d4169bfa592bab6616beaa7e5b0387e90a884f5a9be` |
| 7 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/snoc--8384171f6b0f004f79514b96.md) | 64 | `declaration-track:8384171f6b0f004f79514b96f448e03013941dd8aabe1e87d54700e548b328be` |
| 8 | `theorem` | [coe_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/coe-snoc--c18cf06a4d04c89e11f27aaa.md) | 69 | `result-track:c18cf06a4d04c89e11f27aaa1cb19eebdfd4ba06c360f90c90cdb8b91035f14f` |
| 9 | `theorem` | [init_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/init-snoc--d08276e14245dc500fc00678.md) | 72 | `result-track:d08276e14245dc500fc00678069049147632c58fe1864e6de8dc8ef7539ca738` |
| 10 | `theorem` | [snoc_castSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/snoc-castsucc--c1871f251e6470149b7360f6.md) | 77 | `result-track:c1871f251e6470149b7360f6e45c5c0c76bf8e9663a88f60a8d3d558fb74a99b` |
| 11 | `theorem` | [snoc_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/snoc-last--bae7057400a4211b01e277c7.md) | 81 | `result-track:bae7057400a4211b01e277c79e47dbc8c2cf07a90ca51548986d16b2e98d0543` |
| 12 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/append--9b6906d0055bb29a2c4f525e.md) | 86 | `declaration-track:9b6906d0055bb29a2c4f525e236c832ee75a33d49ad31581d5ab74b2ac8e8f0e` |
| 13 | `theorem` | [coe_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/coe-append--a42e224c36771275802414b2.md) | 92 | `result-track:a42e224c36771275802414b2caf58fecd49c776c94aac80d207fea755c97e75a` |
| 14 | `def` | [twoEmbeddingEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/twoembeddingequiv--b9441aa978d3aa3f7cdbe859.md) | 102 | `declaration-track:b9441aa978d3aa3f7cdbe859f5ab82a594b6ec3c3b13b6030c5dddcd88ef8440` |
| 15 | `def` | [embFinTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/embfintwo--03df6a8fe5b25317fe4e06de.md) | 127 | `declaration-track:03df6a8fe5b25317fe4e06de8c9a37770d77cd720e19e592a703755a9a9cfb9a` |
| 16 | `theorem` | [embFinTwo_apply_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/embfintwo-apply-zero--d03febbfdac009e88a783008.md) | 130 | `result-track:d03febbfdac009e88a7830083daf98ff57fa4cae65ac45452087de577572d363` |
| 17 | `theorem` | [embFinTwo_apply_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f.lean/declarations/embfintwo-apply-one--8ac7bdbec708ad6416107d23.md) | 133 | `result-track:8ac7bdbec708ad6416107d23f98d6fc0659708c02af3ce56082d8ffaa12b8592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
