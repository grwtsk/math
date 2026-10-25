# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveToExpr.Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d78d967e81d394b2d2199888941f3ddc51b9c77",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d78d967e81d394b2d2199888941f3ddc51b9c77`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveToExpr` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyMaybe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/mymaybe--abcd587faf6862a08feec530.md) | 10 | `declaration-track:abcd587faf6862a08feec530dd398d4c72c8fd347ead7fd0c879f68c5ba407fb` |
| 2 | `inductive` | [Foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/foo--42fc5034d1305bbbfe1ebeca.md) | 33 | `declaration-track:42fc5034d1305bbbfe1ebeca72c75d476ba804392012cf59804d9d360114ff03` |
| 3 | `inductive` | [Bar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/bar--bcfb5cb42e79841f5ca6c6ae.md) | 39 | `declaration-track:bcfb5cb42e79841f5ca6c6aeee6659865b4386f8d5200293d2828631a6c2dabe` |
| 4 | `def` | [boolFunHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/boolfunhelper--36dbe2a1eecf41b03cfaf64f.md) | 47 | `declaration-track:36dbe2a1eecf41b03cfaf64f1c78c62a412ff14f1b30803fcb01fff954528a93` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/instance--e95e172218b65184829db16a.md) | 49 | `declaration-track:e95e172218b65184829db16ae7230b7b4d879cd79ee6816404667ba3a0da8863` |
| 6 | `inductive` | [A](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/a--3c5395dcf87e135d70a0642d.md) | 64 | `declaration-track:3c5395dcf87e135d70a0642d6d3b5cc5c2d3180eb2f23bf14e1d02eced720f55` |
| 7 | `inductive` | [B](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/b--a493fb943b18abad338f09fe.md) | 67 | `declaration-track:a493fb943b18abad338f09fe25e43065712e7e1d8c36cefd4dc44890b36f4b5b` |
| 8 | `inductive` | [C](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/c--895780825297f6cec328ad0c.md) | 77 | `declaration-track:895780825297f6cec328ad0cd81a0ec75a40108bf6530aaeb5c1e75be9ba69ee` |
| 9 | `inductive` | [D](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/d--ffed19037f43b9ceb015064d.md) | 80 | `declaration-track:ffed19037f43b9ceb015064dedd350e3d942f2dff93554a0c2c02e202c5e4a46` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c.lean/declarations/instance--838f223251eabf0f97047733.md) | 86 | `declaration-track:838f223251eabf0f97047733140ad0d83c5bd86ce8e447bb18cba972d818a18c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
