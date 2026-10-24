# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffineBounds.Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43db5626484df9bfd111783a509be06f30369160",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43db5626484df9bfd111783a509be06f30369160`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEvalAffine` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAffineEnvConst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/toaffineenvconst--6ddfda400be80a5a55ab4ae4.md) | 71 | `declaration-track:6ddfda400be80a5a55ab4ae4e45257407e3b75b00931628bef309e059ea8f4d7` |
| 2 | `def` | [checkUpperBoundAffine1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/checkupperboundaffine1--0deb32ef072246b73496e620.md) | 76 | `declaration-track:0deb32ef072246b73496e62012a586b5c1a013498c217d48cc01d8e6961295f5` |
| 3 | `def` | [checkLowerBoundAffine1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/checklowerboundaffine1--b1d144670d9e65116d307f90.md) | 81 | `declaration-track:b1d144670d9e65116d307f904450209ea86798a4c400593db3e32188332940da` |
| 4 | `lemma` | [abs_sub_mid_le_rad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/abs-sub-mid-le-rad--164249f25f04a12d504e8af3.md) | 88 | `result-track:164249f25f04a12d504e8af3bc8f18777c24d39de47398339340c13deeb5cc8c` |
| 5 | `def` | [mkNoise1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/mknoise1--24c7673eea1d73bae60dcc92.md) | 104 | `declaration-track:24c7673eea1d73bae60dcc927c9cb919f44ee750944eb6732c4d7747e9303c3b` |
| 6 | `theorem` | [mkNoise1_valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/mknoise1-valid--fc31f688c85e1cfe012ffc73.md) | 111 | `result-track:fc31f688c85e1cfe012ffc73e1d3bbd1dcb38625758b1286caf91d2a3788496f` |
| 7 | `lemma` | [linearSum_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/linearsum-singleton--bda17a4039e75f667ca268c2.md) | 138 | `result-track:bda17a4039e75f667ca268c268fe90d95472084a85733b35ba69fea883cd8084` |
| 8 | `theorem` | [mkNoise1_envMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/mknoise1-envmem--57ac3a61af4ec5926dd967e8.md) | 144 | `result-track:57ac3a61af4ec5926dd967e82840ac223bfa2d790c07fe9e519d5fd69193b81c` |
| 9 | `theorem` | [verify_upper_bound_affine1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/verify-upper-bound-affine1--efdddc0c486c39c191f231b1.md) | 185 | `result-track:efdddc0c486c39c191f231b1f11ecc8c86edbc5b52237496c840ac1a0fd68fba` |
| 10 | `theorem` | [verify_lower_bound_affine1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/verify-lower-bound-affine1--e5de54bd917a129c7fc83d5c.md) | 211 | `result-track:e5de54bd917a129c7fc83d5c91c6ee49ff06d6a807542ff5782b72e4706f2086` |
| 11 | `theorem` | [verify_upper_bound_affine1'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/verify-upper-bound-affine1--a66cc3979ee80bd232e2f978.md) | 236 | `result-track:a66cc3979ee80bd232e2f978add5ad455184458d2ab0afb5607d19f9a0aa57b8` |
| 12 | `theorem` | [verify_lower_bound_affine1'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/declarations/verify-lower-bound-affine1--6e4bff5579422d7e274e2173.md) | 245 | `result-track:6e4bff5579422d7e274e21737b20b200ba7fcbb8753da9899402133262eb6bce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
