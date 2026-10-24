# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CanonicalTensor.Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb5a014a4bb9a2f8170b91626ba2b5d9cf5e4035",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb5a014a4bb9a2f8170b91626ba2b5d9cf5e4035`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InnerProductSpace.canonicalContravariantTensor](../../../../../mathematics/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/declarations/innerproductspace-canonicalcontravarianttensor--6a6ed5720f523b56e45d7395.md) | 39 | `declaration-track:6a6ed5720f523b56e45d7395690747f5a48a15f3a0e24feac6ae33b5f8f131ad` |
| 2 | `def` | [InnerProductSpace.canonicalCovariantTensor](../../../../../mathematics/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/declarations/innerproductspace-canonicalcovarianttensor--47db6387ea5f43084b00d172.md) | 46 | `declaration-track:47db6387ea5f43084b00d1721a6a5049ac05cdad59ca23b4fc388ff38f5c9879` |
| 3 | `theorem` | [InnerProductSpace.canonicalCovariantTensor_eq_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/declarations/innerproductspace-canonicalcovarianttensor-eq-sum--cd29ed642e14f910bc8077b0.md) | 50 | `result-track:cd29ed642e14f910bc8077b0542f3af07d698823e12116f86775ff811020bbfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
