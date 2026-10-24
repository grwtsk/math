# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Percolation.Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba7ee95db0cf524150a19b481168f71602b8fb8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba7ee95db0cf524150a19b481168f71602b8fb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PercolationProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/percolationprofile--8d7e19127442854c41db2e61.md) | 23 | `declaration-track:8d7e19127442854c41db2e616069694e23e0d8d1021b78fbb23e77a0ac3aed6e` |
| 2 | `def` | [percolate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/percolate--55009b4babc5255edbaf22a5.md) | 38 | `declaration-track:55009b4babc5255edbaf22a5acb8ed9075712f28cfdd492f2190cebd3009c3dd` |
| 3 | `theorem` | [percolate_inflationary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/percolate-inflationary--7b984eb8fc11452f4d1cf5b5.md) | 45 | `result-track:7b984eb8fc11452f4d1cf5b5dffb1488638adae8f382dd49256544bbc95b740f` |
| 4 | `inductive` | [EffectiveStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/effectivestep--1f6f2b49167d796e081671cf.md) | 54 | `declaration-track:1f6f2b49167d796e081671cf51d9b70c17c55224255f342abbd3b35d6edbb296` |
| 5 | `structure` | [StabilizationCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/stabilizationcertificate--77442f4990fc8359f01c6d4b.md) | 59 | `declaration-track:77442f4990fc8359f01c6d4b1e22343e8dbadb4bd3e306a6858468fbd11e8969` |
| 6 | `def` | [terminalIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/terminalideal--08426f7919564bc063be748b.md) | 75 | `declaration-track:08426f7919564bc063be748b4bf3ac84413935d12ef2b9d68fa5cb4a286a9c01` |
| 7 | `theorem` | [terminalIdeal_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/terminalideal-closed--49240269c6e86cc6367f870f.md) | 82 | `result-track:49240269c6e86cc6367f870fc8b21781aaa2da7163fadf7ed2e921767e62641d` |
| 8 | `theorem` | [terminalIdeal_least](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/declarations/terminalideal-least--326ff9b787b8230ba381a135.md) | 91 | `result-track:326ff9b787b8230ba381a135a416346debae3b54f755cb154027123c33aea76b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
