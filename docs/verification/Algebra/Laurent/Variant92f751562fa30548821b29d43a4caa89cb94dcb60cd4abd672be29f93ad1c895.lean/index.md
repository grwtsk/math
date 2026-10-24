# Verification target: GRWTSK.Algebra.Laurent.Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "919a18595e3f832960e4ed051256ec7a1cb0c40a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/index.md) · [Full source](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `919a18595e3f832960e4ed051256ec7a1cb0c40a`.

Source path: `GRWTSK/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc.AsPolynomial` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taylor_mem_nonZeroDivisors](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/taylor-mem-nonzerodivisors--1f11fb9bde4dccff57fe1385.md) | 37 | `result-track:1f11fb9bde4dccff57fe138521d8e27b9a0f93702108025e7f4a3a7c8a1a780d` |
| 2 | `def` | [laurentAux](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurentaux--0260465ed98543f263eb85b7.md) | 47 | `declaration-track:0260465ed98543f263eb85b7e24b35c57f87f344e42db7bbf5eb0ff7c4b2cb89` |
| 3 | `theorem` | [laurentAux_ofFractionRing_mk](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurentaux-offractionring-mk--add2556856800f5d87d06603.md) | 56 | `result-track:add2556856800f5d87d066039334ab7ad104188656fa75fe1eff3a2d4a9d0cd4` |
| 4 | `theorem` | [laurentAux_div](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurentaux-div--2e9b3d34537c75d4d7c77d66.md) | 63 | `result-track:2e9b3d34537c75d4d7c77d66a6c51cea6bbe94f7d3a50a196bc1eb70a0e295a5` |
| 5 | `theorem` | [laurentAux_algebraMap](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurentaux-algebramap--0161edebbe7633dbbd17cd74.md) | 70 | `result-track:0161edebbe7633dbbd17cd74819d1bf97471b4962e4c2831aea6a18c507af69d` |
| 6 | `def` | [laurent](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent--99efda0291818d4cce1a656c.md) | 74 | `declaration-track:99efda0291818d4cce1a656c361c0a5143620a52be66c5b21e105230082f2b21` |
| 7 | `theorem` | [laurent_div](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-div--47b66d46f2b97df3c341ec07.md) | 78 | `result-track:47b66d46f2b97df3c341ec07b4c08caab593d892335e0c9fd3393d430211ea74` |
| 8 | `theorem` | [laurent_algebraMap](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-algebramap--382f10a2caa43a08fb87139b.md) | 84 | `result-track:382f10a2caa43a08fb87139bcdf6f7955433f372b30f66a0a4712afda3f71dd3` |
| 9 | `theorem` | [laurent_X](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-x--d2c259118fca4b6365baea5c.md) | 88 | `result-track:d2c259118fca4b6365baea5cb528669b687c214d26d0d385ca5df74c380b4871` |
| 10 | `theorem` | [laurent_C](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-c--13d68864ca77fff8f2a47f71.md) | 92 | `result-track:13d68864ca77fff8f2a47f7103403a61eb1f9d46fcb364b1dfd88c2664364afc` |
| 11 | `theorem` | [laurent_at_zero](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-at-zero--6b3c95fd5c08c60ea5692f66.md) | 96 | `result-track:6b3c95fd5c08c60ea5692f6642fae79ea3b37653a0a94e6dd3b341a13a54234d` |
| 12 | `theorem` | [laurent_laurent](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-laurent--6d7e14ed9a1cc24068b661ba.md) | 98 | `result-track:6d7e14ed9a1cc24068b661ba5e51b1cebbc4efb22c295eb6887cac0a70a7a98c` |
| 13 | `theorem` | [laurent_injective](../../../../mathematics/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/declarations/laurent-injective--6f52d79a0ce9cee980b53d7d.md) | 102 | `result-track:6f52d79a0ce9cee980b53d7d9b43e7ea2fe3c85bc7d10496476e35dc1e4912e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
