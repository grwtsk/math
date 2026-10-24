# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SelfAdjoint.Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60b75703a2dcbccbeebb458a0bd667c01898a2ac",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60b75703a2dcbccbeebb458a0bd667c01898a2ac`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.Operator` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.SymmetricOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean/declarations/hilbert-symmetricoperator--df2b1c3e45a47a561d0c7e38.md) | 31 | `declaration-track:df2b1c3e45a47a561d0c7e38a52fd30c783194a75386b46e3863649f0c62bb32` |
| 2 | `structure` | [Hilbert.SelfAdjointCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean/declarations/hilbert-selfadjointcertificate--189544424c06ccadbd808f06.md) | 38 | `declaration-track:189544424c06ccadbd808f06dd9ea5401778945a1fd189eab39a1c46e6c95c84` |
| 3 | `theorem` | [Hilbert.selfAdjoint_implies_symmetric](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variantcc03cfd8ed28b26766596ad1fc76c1835cdd6be447125d96fc062f0307c5b3d5.lean/declarations/hilbert-selfadjoint-implies-symmetric--d60e1d1debb8a84492a9f2c4.md) | 47 | `result-track:d60e1d1debb8a84492a9f2c4efdd593639cdc7c4549f831bc1e6ad6a2dae5194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
