# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ffd2291dd3a2e0dc2dc2b746c86e8e0a43daeeb",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ffd2291dd3a2e0dc2dc2b746c86e8e0a43daeeb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.BitVec.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.Fin.OfBits` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Data.Int` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toNat_ofFnLEAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/tonat-offnleaux--b2c1c55fb7c318c8e906638f.md) | 14 | `result-track:b2c1c55fb7c318c8e906638f31a0cae7544301cc0bd02687678ddd50be016725` |
| 2 | `theorem` | [toFin_ofFnLEAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/tofin-offnleaux--cce479c34872a9375c9ca42c.md) | 25 | `result-track:cce479c34872a9375c9ca42c14cf37c1b970cf2a9ebe882db7e8977c9bbcfe3d` |
| 3 | `theorem` | [toNat_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/tonat-offnle--8027f8a70aeee5c146fc7333.md) | 29 | `result-track:8027f8a70aeee5c146fc7333ff78c8f24a45e55cc5062a7cd2ce1b0835553bc2` |
| 4 | `theorem` | [toFin_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/tofin-offnle--229524978dea5516a09ef807.md) | 32 | `result-track:229524978dea5516a09ef80729fbc35abadc48d5ebcfce4bb89b415cdfadf2fa` |
| 5 | `theorem` | [toInt_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/toint-offnle--b731131c3a26f22c4b381bb1.md) | 35 | `result-track:b731131c3a26f22c4b381bb1cfad1e7c93ebffcf9b3108370c671c6bc5dc0e8d` |
| 6 | `theorem` | [getElem_ofFnLEAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getelem-offnleaux--0f92ab17c230b76702e4faed.md) | 38 | `result-track:0f92ab17c230b76702e4faed6d42c865ab39d8437879c3743d1acc028a5f00f1` |
| 7 | `theorem` | [getElem_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getelem-offnle--8d0b22db7af9b9e7b3e98354.md) | 52 | `result-track:8d0b22db7af9b9e7b3e983543766c9fbfa95adbfa98cf46b4b5ccbea7bea27b4` |
| 8 | `theorem` | [getLsb'_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getlsb-offnle--76479772f91f0d00b2b9354d.md) | 55 | `result-track:76479772f91f0d00b2b9354d0716c0bef46e944da356a0cfbd8de998fb5a9c6d` |
| 9 | `theorem` | [getLsbD_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getlsbd-offnle--b3436218ee31916854f88ce3.md) | 57 | `result-track:b3436218ee31916854f88ce3a84b2119826fbae57ee491a4a7572c55ce288080` |
| 10 | `theorem` | [getMsb'_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getmsb-offnle--ba74f15dde9a4367a639fe5b.md) | 63 | `result-track:ba74f15dde9a4367a639fe5b88182a4c34801d09d2e31063e39cf6887e13f5c7` |
| 11 | `theorem` | [getMsbD_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getmsbd-offnle--38ebde35b27d2559e0e9e182.md) | 66 | `result-track:38ebde35b27d2559e0e9e18293587b05f2361f6577b1dd36076d9a4f18008ddb` |
| 12 | `theorem` | [msb_ofFnLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/msb-offnle--3a0af50a047250c2c83b1340.md) | 75 | `result-track:3a0af50a047250c2c83b1340807682be4c534a3d820c2ce184d80aff2d95e902` |
| 13 | `theorem` | [toNat_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/tonat-offnbe--2872d25968efe77004f66b14.md) | 79 | `result-track:2872d25968efe77004f66b149371d455e59e3e90382fe0b641017d8741e5b89f` |
| 14 | `theorem` | [toFin_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/tofin-offnbe--aa45145ba097959de95556f4.md) | 82 | `result-track:aa45145ba097959de95556f4421fc76a8c02c06f52520e2b8893bbedd649a21d` |
| 15 | `theorem` | [toInt_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/toint-offnbe--4ab2e2d3c7c873e8b1d2088a.md) | 85 | `result-track:4ab2e2d3c7c873e8b1d2088afb2d68858f587194cbed0be1b0d422831824948c` |
| 16 | `theorem` | [getElem_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getelem-offnbe--891086cfa1d3ce0798a8a062.md) | 88 | `result-track:891086cfa1d3ce0798a8a062cec0d46f0ff8cce78cef97a47b3e5c094d263c11` |
| 17 | `theorem` | [getLsb'_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getlsb-offnbe--781a09fa6a1fdd3dd9ef88c3.md) | 91 | `result-track:781a09fa6a1fdd3dd9ef88c3c6608ed8caec8a8ae082b74e3a664a1bebab62fc` |
| 18 | `theorem` | [getLsbD_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getlsbd-offnbe--b1eb2fa8c085c86255174b35.md) | 94 | `result-track:b1eb2fa8c085c86255174b351207aa43efcde45269394b44d60b6b1e1f4a6d57` |
| 19 | `theorem` | [getMsb'_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getmsb-offnbe--d681afb1aae6310f1d6cf30d.md) | 98 | `result-track:d681afb1aae6310f1d6cf30db020099f2d79c89be20ce524a358b52ff9f6fc05` |
| 20 | `theorem` | [getMsbD_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/getmsbd-offnbe--cfda0841e7f75b891694a418.md) | 101 | `result-track:cfda0841e7f75b891694a4184a9126ff77e0e941cd3ff26a8159067612c99fac` |
| 21 | `theorem` | [msb_ofFnBE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0ea38b535fca84349509ab1c36e803dd95e8a7b91dcc23081c3ea60872a84e6c.lean/declarations/msb-offnbe--a66f60578afaa90400fc1bb8.md) | 105 | `result-track:a66f60578afaa90400fc1bb8a0887b93eb6410f35bedb65b1df774e3ea0028bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
