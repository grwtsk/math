# Verification target: GRWTSK.Algebra.LinearAlgebra.Goursat.Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13be0b3d24bf82edb6f4b504dcf3a89e1cfbe508",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13be0b3d24bf82edb6f4b504dcf3a89e1cfbe508`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Goursat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goursatFst](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursatfst--0b2c38439ed81e1a89989dd8.md) | 43 | `declaration-track:0b2c38439ed81e1a89989dd8b1eeadbf408241e9f515c8ace36d09a140432043` |
| 2 | `def` | [goursatSnd](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursatsnd--9f401196475a75c06e656fb7.md) | 52 | `declaration-track:9f401196475a75c06e656fb7f483f6d3c0221f71511567dd3f2bd3b3ce6f6512` |
| 3 | `lemma` | [goursatFst_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursatfst-toaddsubgroup--5eb3840d2d73e1674ed76637.md) | 55 | `result-track:5eb3840d2d73e1674ed76637d7f36c5c2386f5113c4af3863a56c61dfb1db4c2` |
| 4 | `lemma` | [goursatSnd_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursatsnd-toaddsubgroup--5c3b31017235a19ef4cf00e0.md) | 60 | `result-track:5c3b31017235a19ef4cf00e002c99249d4ac3b68d1fb33577d07ceec122d8582` |
| 5 | `lemma` | [goursatFst_prod_goursatSnd_le](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursatfst-prod-goursatsnd-le--4ff49c08234e7c2d46fd2202.md) | 66 | `result-track:4ff49c08234e7c2d46fd2202fe36d5189ba974b1709184c02153404710989427` |
| 6 | `lemma` | [goursat_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursat-surjective--2a1ae6771fb30196220f9958.md) | 78 | `result-track:2a1ae6771fb30196220f9958d6fef3657887a7806888c0f26fb24b13242fcd35` |
| 7 | `lemma` | [goursat](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variante20eb0c7f76dca5ae038a0cdc18f11052fa39447b395da2fca1111c54d0acfd9.lean/declarations/goursat--7b19ea5a5658618db4681645.md) | 106 | `result-track:7b19ea5a5658618db4681645240257bbe30592533490cc8fbeebfede5b0f24c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
