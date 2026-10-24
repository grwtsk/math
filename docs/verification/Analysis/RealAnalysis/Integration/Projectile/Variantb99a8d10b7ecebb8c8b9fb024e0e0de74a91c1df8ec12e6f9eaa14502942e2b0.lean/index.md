# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Projectile.Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7ba74d129f8f962d9cb4cd22b51eb642e7ea2fc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7ba74d129f8f962d9cb4cd22b51eb642e7ea2fc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [vsq_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/vsq-upper--2856d7ebd71186a7acc7f35e.md) | 36 | `result-track:2856d7ebd71186a7acc7f35ec36e707f048b822d19cda49a8bb1bdca5241d0e1` |
| 2 | `theorem` | [drag_accel_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/drag-accel-upper--96c6d3774c0a2d10d5fe28dd.md) | 41 | `result-track:96c6d3774c0a2d10d5fe28dd120e5dd4933ca3abba9182d8574408cd7abe5770` |
| 3 | `theorem` | [drag_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/drag-nonneg--bffa6d950b4258d5fe556b33.md) | 46 | `result-track:bffa6d950b4258d5fe556b33fdf737b8abb10e4ef558bbbef086be41c14b2aad` |
| 4 | `theorem` | [net_accel_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/net-accel-lower--13e41eae44663763385c2f26.md) | 63 | `result-track:13e41eae44663763385c2f26b8f50c43924c9a682e34d9fce8a2cae9312d990f` |
| 5 | `theorem` | [net_accel_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/net-accel-upper--c17c8fca3aaa5907d514bf3d.md) | 67 | `result-track:c17c8fca3aaa5907d514bf3d40263645aed876f5d557408d0e4705b6c5aed5d0` |
| 6 | `theorem` | [kinetic_energy_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/kinetic-energy-upper--fd987cd5bb2ed4c00a35a270.md) | 80 | `result-track:fd987cd5bb2ed4c00a35a270563c2517ae4d730b705b50fdb7973079a294fd08` |
| 7 | `theorem` | [exp_decay_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/exp-decay-lower--92956ee982c56bce4f0e67b2.md) | 92 | `result-track:92956ee982c56bce4f0e67b2971108ee476f406330827a3b28d7b30ec8979909` |
| 8 | `theorem` | [exp_decay_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/declarations/exp-decay-upper--5b06eb16daf210a56680d106.md) | 96 | `result-track:5b06eb16daf210a56680d1062a4d83c04e4a625a94f6141813a7d71a218b318d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
