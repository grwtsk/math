# Verification target: GRWTSK.Algebra.GroupTheory.Interface.Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3aa1f8c9279fc9532eebabe0e095b01b29e36db",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3aa1f8c9279fc9532eebabe0e095b01b29e36db`.

Source path: `GRWTSK/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Assembly.Interface` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Coefficients` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoefficientObject](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/coefficientobject--29285b09af4d6b88515cdf7b.md) | 35 | `declaration-track:29285b09af4d6b88515cdf7b670deb01dfb7552af4770deb4ed436338d03bebc` |
| 2 | `structure` | [RepresentationDatum](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/representationdatum--07c3a391f1c0b0f0e22a385c.md) | 45 | `declaration-track:07c3a391f1c0b0f0e22a385c8535fb17df2adf73b57da1771f6bc9d65cd91903` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/instance--fc33ef21da14e7e0386eada9.md) | 59 | `declaration-track:fc33ef21da14e7e0386eada91b0737e8fe841a8a7ed91479e6fdd89aa09bdcf6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/instance--9db62e1ce043d3548e61c42a.md) | 62 | `declaration-track:9db62e1ce043d3548e61c42a5e7fe3bf7adfda7c5dc4a72611ab350b659c4c53` |
| 5 | `theorem` | [groupRingMap_of](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/groupringmap-of--68a46189ed48841de4cea0ed.md) | 67 | `result-track:68a46189ed48841de4cea0ed699884533df6a3a498d1637d583bf9a6276866ce` |
| 6 | `structure` | [KTheoryFunctoriality](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/ktheoryfunctoriality--ecd826d0ffe001dade42c1fa.md) | 84 | `declaration-track:ecd826d0ffe001dade42c1fac5d61611b6c258c4b1cfd5ca0df3fa1549bb4028` |
| 7 | `structure` | [EtaleComparisonDatum](../../../../../mathematics/Algebra/GroupTheory/Interface/Variantec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2.lean/declarations/etalecomparisondatum--b292be4e5170df479a792a5e.md) | 104 | `declaration-track:b292be4e5170df479a792a5e228d2af90f8b2366cfb2be7b474cfc5eeade0cb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
