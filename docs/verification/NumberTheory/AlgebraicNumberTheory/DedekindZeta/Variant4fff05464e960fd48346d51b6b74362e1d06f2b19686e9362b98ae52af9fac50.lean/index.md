# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.DedekindZeta.Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7702f1c415075c86232ddcb417f2861b24a8ae8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7702f1c415075c86232ddcb417f2861b24a8ae8`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedekindZeta](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/declarations/dedekindzeta--1f57bdaf2bf75f722b2a3dbf.md) | 51 | `declaration-track:1f57bdaf2bf75f722b2a3dbfd752f76b27fb9f59c11ee277f661c002126fa041` |
| 2 | `def` | [dedekindZeta_residue](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/declarations/dedekindzeta-residue--8a95e83790914c9c9de6360f.md) | 58 | `declaration-track:8a95e83790914c9c9de6360ff5bc36a39091aee192e7036b445f753baf234235` |
| 3 | `theorem` | [dedekindZeta_residue_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/declarations/dedekindzeta-residue-def--41dbd014f3c2a7e690421da5.md) | 62 | `result-track:41dbd014f3c2a7e690421da5c013b22d0e2e0bb3bf5db63915ab8cfd95a4159a` |
| 4 | `theorem` | [dedekindZeta_residue_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/declarations/dedekindzeta-residue-pos--15e85d2bc78ef8c587b02651.md) | 67 | `result-track:15e85d2bc78ef8c587b02651c5223603d84508e8f07945c34890f383406dfbc1` |
| 5 | `theorem` | [dedekindZeta_residue_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/declarations/dedekindzeta-residue-ne-zero--0f89b8094e14c7fd6e717c10.md) | 73 | `result-track:0f89b8094e14c7fd6e717c104080188eee195b16fc5ca4c90291b8fad903e8f0` |
| 6 | `theorem` | [tendsto_sub_one_mul_dedekindZeta_nhdsGT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant4fff05464e960fd48346d51b6b74362e1d06f2b19686e9362b98ae52af9fac50.lean/declarations/tendsto-sub-one-mul-dedekindzeta-nhdsgt--f37590178b65ae3a8fec28fb.md) | 79 | `result-track:f37590178b65ae3a8fec28fbc79149f61f78d1728179dca0ced8bd79be61595a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
