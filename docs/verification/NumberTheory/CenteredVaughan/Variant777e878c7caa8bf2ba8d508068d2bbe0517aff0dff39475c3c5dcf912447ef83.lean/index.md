# Verification target: GRWTSK.NumberTheory.CenteredVaughan.Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae8c48dccb17d24599ded8b8b530a78c12400cbe",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae8c48dccb17d24599ded8b8b530a78c12400cbe`.

Source path: `GRWTSK/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredMangoldt](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/centeredmangoldt--131bd9def479706c7f49cac1.md) | 30 | `declaration-track:131bd9def479706c7f49cac1e3d0cd0760cc836c7fec6bcfc826171926ba090f` |
| 2 | `theorem` | [centeredMangoldt_one](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/centeredmangoldt-one--35e9570474c652af3438b3e3.md) | 32 | `result-track:35e9570474c652af3438b3e372a1d322f0a509a4cd01425842db8d1bedbd50b4` |
| 3 | `theorem` | [centeredMangoldt_apply](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/centeredmangoldt-apply--d798b09c4169884be8e98eb5.md) | 37 | `result-track:d798b09c4169884be8e98eb5a95d76833b08b6e4aa98d571a46b22ec43beae09` |
| 4 | `def` | [lowPart](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/lowpart--06222baa15933fb14cc67eab.md) | 47 | `declaration-track:06222baa15933fb14cc67eab43302bfc241ba79f690b587cbbed995471ff765a` |
| 5 | `def` | [highPart](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/highpart--32f4929cbf9a444a93a6291b.md) | 54 | `declaration-track:32f4929cbf9a444a93a6291b627771357bc14cd8fc1decbb9739e158abbe2b50` |
| 6 | `theorem` | [low_add_high](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/low-add-high--79e4680abcce3d844f875048.md) | 56 | `result-track:79e4680abcce3d844f8750482e6b340f35c2dd8550a95b8dacb10fcc2ac7f833` |
| 7 | `theorem` | [four_port_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/four-port-identity--7e2d2a72acabfa200a631a02.md) | 60 | `result-track:7e2d2a72acabfa200a631a02953de789bb027e25ad25cb785375d1fd6de219f3` |
| 8 | `theorem` | [actual_vaughan_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/actual-vaughan-identity--26716eb1110f79e192d820a6.md) | 68 | `result-track:26716eb1110f79e192d820a6ec8a956730510f18eb666d5af6d0a4ef321b33b9` |
| 9 | `theorem` | [balanced_vaughan_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/balanced-vaughan-identity--db4e31ef2cb25024f09ea6dc.md) | 77 | `result-track:db4e31ef2cb25024f09ea6dc033eab1389e7cb6d588b308e4cb6ce64eff907c1` |
| 10 | `theorem` | [centered_divisor_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/centered-divisor-identity--23fb1fd1cc8867ab7616d1db.md) | 87 | `result-track:23fb1fd1cc8867ab7616d1db63e4c9584c6bcd58476b4a81e9541ef487775440` |
| 11 | `theorem` | [gauge_transfer](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/gauge-transfer--7b3c0e3234b88a01d54818f0.md) | 99 | `result-track:7b3c0e3234b88a01d54818f078083363335f3c084f3623c9558e7cf97c257dea` |
| 12 | `theorem` | [raw_residue_sum](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/raw-residue-sum--9b804d66ba747617342b0716.md) | 103 | `result-track:9b804d66ba747617342b071655798205da1a634d5dfc6d36f22c02fa133a1cc2` |
| 13 | `theorem` | [unit_jet_allocation](../../../../mathematics/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/declarations/unit-jet-allocation--fa761746693a658d4517b7eb.md) | 107 | `result-track:fa761746693a658d4517b7eb5aee8733ce75817d24eb3a4c2876b0ec53e13d0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
