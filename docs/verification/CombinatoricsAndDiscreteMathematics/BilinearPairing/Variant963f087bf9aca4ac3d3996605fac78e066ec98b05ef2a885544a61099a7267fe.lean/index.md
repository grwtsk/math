# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BilinearPairing.Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7c557ab06a0b1907ee3858c065c56e20fa142dd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7c557ab06a0b1907ee3858c065c56e20fa142dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bilinearMatrixPairing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing--8a2f068622dba6c91c00fa19.md) | 35 | `declaration-track:8a2f068622dba6c91c00fa19a79f0d734912d5eaad1b948f7887b64eed223704` |
| 2 | `theorem` | [bilinearMatrixPairing_zero_matrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing-zero-matrix--6fe2e85444666681036efa8c.md) | 43 | `result-track:6fe2e85444666681036efa8cbfef5fd3632a9efebc2adadd383418baf886ceba` |
| 3 | `theorem` | [bilinearMatrixPairing_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing-add--6aa87f740fff254c9f9984d3.md) | 50 | `result-track:6aa87f740fff254c9f9984d3214fd533f65d4577782b067b2700e8057bb7dd15` |
| 4 | `theorem` | [bilinearMatrixPairing_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing-sub--c2449be4076960e94693d87c.md) | 61 | `result-track:c2449be4076960e94693d87c3ac6d2739d791ab0a9c1be247ecebe22b21a615e` |
| 5 | `theorem` | [bilinearMatrixPairing_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing-sum--57d4c8312aa55779420cdb2b.md) | 72 | `result-track:57d4c8312aa55779420cdb2baa2daf86611c4b482a8a51c955ae1a601c867e3d` |
| 6 | `theorem` | [bilinearMatrixPairing_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing-finset-sum--499929481b4ed5efbc528708.md) | 96 | `result-track:499929481b4ed5efbc528708a5cd6982741fc0d64bb84b115e4b30c60468bbbc` |
| 7 | `def` | [conjugatedLeftEuclideanVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/conjugatedlefteuclideanvector--a9039c42649d51cd10928c65.md) | 113 | `declaration-track:a9039c42649d51cd10928c651060dba90155bcd4efdc6bc89ae320b2b94d013a` |
| 8 | `def` | [matrixActionEuclideanVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/matrixactioneuclideanvector--f2b714f8d7090c1000be6f8b.md) | 120 | `declaration-track:f2b714f8d7090c1000be6f8b5d0e8a6764b29f5859e9f2414696ae1af7e9c558` |
| 9 | `theorem` | [bilinearMatrixPairing_eq_inner_conjugatedLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/declarations/bilinearmatrixpairing-eq-inner-conjugatedleft--ba3a34074a6b2ae931a115c1.md) | 132 | `result-track:ba3a34074a6b2ae931a115c1e627021339940f2b4c2ff86e933608c93055233a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
