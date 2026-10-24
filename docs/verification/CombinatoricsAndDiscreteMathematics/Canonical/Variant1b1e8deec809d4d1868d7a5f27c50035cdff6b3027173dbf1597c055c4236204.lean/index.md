# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Canonical.Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b32f4fd207e6fa96a4caed724fc13c086789f18",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b32f4fd207e6fa96a4caed724fc13c086789f18`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbitFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/orbitfinset--e31d185b5df542494de3b28a.md) | 33 | `declaration-track:e31d185b5df542494de3b28aafa71cd7507f473b59617e79cf96faa6b85da17a` |
| 2 | `theorem` | [orbitFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/orbitfinset-nonempty--059c724ed3d7699747f4aebc.md) | 40 | `result-track:059c724ed3d7699747f4aebc709a21f758cf6ce56857d56328ea060d680be734` |
| 3 | `theorem` | [orbit_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/orbit-nonempty--35f34f8baf33c01c6a4cf84c.md) | 49 | `result-track:35f34f8baf33c01c6a4cf84c1494ab00d7e7e585edb992c4788c49518a9fbc79` |
| 4 | `def` | [canon](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/canon--80924d7e46f857110023ef85.md) | 56 | `declaration-track:80924d7e46f857110023ef854cc444a80e03b262ee7d1ec6946454fe27a1f997` |
| 5 | `theorem` | [canon_mem_orbit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/canon-mem-orbit--04455f61984c663494986c4d.md) | 63 | `result-track:04455f61984c663494986c4dd6122c6ea3c13123139105885c23db7c060117b7` |
| 6 | `theorem` | [orbitFinset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/orbitfinset-smul--d2d3d1f31ee29886afd5ff2e.md) | 73 | `result-track:d2d3d1f31ee29886afd5ff2e86847ed894d4587a17fe4002ceb84207400ce7bd` |
| 7 | `theorem` | [canon_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/canon-smul--0d2401e46effbdf2c960af84.md) | 92 | `result-track:0d2401e46effbdf2c960af84c6b15c6f12ed2554324ab8056803180c3788e47c` |
| 8 | `theorem` | [canon_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/canon-idempotent--810e3b159439481c59af3a54.md) | 103 | `result-track:810e3b159439481c59af3a5466509900c26f67b827e45eaae4f16beeb187d0ef` |
| 9 | `theorem` | [canon_eq_iff_same_orbit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/canon-eq-iff-same-orbit--f323bbec67587217122a3ec2.md) | 125 | `result-track:f323bbec67587217122a3ec21eb09d75fe5f4c0d68a57bbe1c6f59944ae3029c` |
| 10 | `structure` | [OrderedEncoding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Canonical/Variant1b1e8deec809d4d1868d7a5f27c50035cdff6b3027173dbf1597c055c4236204.lean/declarations/orderedencoding--682278c673f1d7d8d1b54207.md) | 177 | `declaration-track:682278c673f1d7d8d1b54207cf85977efa2eca3cba31ae6928affa293433121b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
