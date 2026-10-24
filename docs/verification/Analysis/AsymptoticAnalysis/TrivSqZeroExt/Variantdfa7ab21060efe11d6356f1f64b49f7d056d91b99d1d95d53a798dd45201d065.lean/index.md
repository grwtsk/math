# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2850b28be829e8cc59b5dd2a634415e8f6e91752",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2850b28be829e8cc59b5dd2a634415e8f6e91752`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Exponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.TrivSqZeroExt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_fst_expSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/hassum-fst-expseries--e2e30ebebe010ba392ed38bc.md) | 48 | `result-track:e2e30ebebe010ba392ed38bcfb00fb7437c8ba460b12ed030a9519776615049d` |
| 2 | `theorem` | [hasSum_snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/hassum-snd-expseries-of-smul-comm--88fb564581cde1e7df522cfc.md) | 58 | `result-track:88fb564581cde1e7df522cfc0162c0f098b4c829455261d9eb96d884a4c4872a` |
| 3 | `theorem` | [hasSum_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/hassum-expseries-of-smul-comm--9a0838714aea98655bac6122.md) | 82 | `result-track:9a0838714aea98655bac6122cb85df81901dd764557ee0cd171f163f06f216c1` |
| 4 | `theorem` | [exp_def_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/exp-def-of-smul-comm--9e5ede80e157abc053cf3ac4.md) | 109 | `result-track:9e5ede80e157abc053cf3ac408b83d12697280ac16160d3101b74a7076ff7793` |
| 5 | `theorem` | [exp_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/exp-inl--838e6107cc2e2d56bc697e40.md) | 117 | `result-track:838e6107cc2e2d56bc697e40403c25ad19a5b740a3e730aa1e54d2d121435ecd` |
| 6 | `theorem` | [exp_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/exp-inr--1a2f090fce99052e829fc627.md) | 123 | `result-track:1a2f090fce99052e829fc627432307dbe52af8b8815e39087743d43962b79075` |
| 7 | `theorem` | [exp_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/exp-def--987d03914829d64189305e2e.md) | 144 | `result-track:987d03914829d64189305e2e1fef0b5359b99c6fabfa86f9aa638d0d93e04e31` |
| 8 | `theorem` | [fst_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/fst-exp--db768f31f4d1acd5ebac8ec6.md) | 149 | `result-track:db768f31f4d1acd5ebac8ec634cea39d4ad9b36d483ad6c8dc3450718633fd75` |
| 9 | `theorem` | [snd_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/snd-exp--0ea0e0bb589aa1ad99ac9440.md) | 154 | `result-track:0ea0e0bb589aa1ad99ac944037ddbc29c802b6074dadb9bb7fd2fa78113500a4` |
| 10 | `theorem` | [eq_smul_exp_of_invertible](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/eq-smul-exp-of-invertible--554eb456663ba3987a48d78e.md) | 159 | `result-track:554eb456663ba3987a48d78e7f03757d1b4e1260206e38c29d9e819e272dc80d` |
| 11 | `theorem` | [eq_smul_exp_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/declarations/eq-smul-exp-of-ne-zero--d61fec85cf24709841199ef9.md) | 183 | `result-track:d61fec85cf24709841199ef9845fdf870fa384ad56c7e08ea52d75fc8439c96c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
