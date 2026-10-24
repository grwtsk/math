# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCauchyBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ClosedDiskCauchy`](../../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_eq_fractional](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/declarations/zeta-eq-fractional--6198a61e53cb05f32594e671.md) | 25 | `result-track:6198a61e53cb05f32594e6715da68b30b89481b970276844de01ea565902e374` |
| 2 | `theorem` | [norm_zeta_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/declarations/norm-zeta-le--8fb02691abce967ed712256d.md) | 35 | `result-track:8fb02691abce967ed712256d727af327affb164447d7152a4cd1aa0218bd0344` |
| 3 | `theorem` | [disk_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/declarations/disk-bounds--81972c13bd3c5a311d0cacbe.md) | 59 | `result-track:81972c13bd3c5a311d0cacbeb45af4f20ab9b709f3503f80e114a3b486f95a01` |
| 4 | `theorem` | [norm_zeta_le_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/declarations/norm-zeta-le-on-disk--1794b22603b2ae4cad4931d6.md) | 85 | `result-track:1794b22603b2ae4cad4931d674f0a3fb5d2cc4717d0004652da024330589f9cb` |
| 5 | `theorem` | [norm_secondDeriv_zeta_le_on_inner](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/declarations/norm-secondderiv-zeta-le-on-inner--b2f7c35b90dee761e8fdb23a.md) | 95 | `result-track:b2f7c35b90dee761e8fdb23ac09c1e809ac5622e5259faea81c2c9e4a7000a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
