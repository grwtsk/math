# Verification target: GRWTSK.Algebra.ReesAlgebra.Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0717021322edad132acffaad2ad324922375b7c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0717021322edad132acffaad2ad324922375b7c`.

Source path: `GRWTSK/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/reesalgebra--8f74967169a0310089cb4469.md) | 39 | `declaration-track:8f74967169a0310089cb4469ba8765b8e14ceffc6c1263f164118167e79f305a` |
| 2 | `theorem` | [mem_reesAlgebra_iff](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/mem-reesalgebra-iff--347ee87267cecf34b16f188b.md) | 64 | `result-track:347ee87267cecf34b16f188bf4e1411ce1e8c4ea9fb958b9c0290dcc023912ad` |
| 3 | `theorem` | [mem_reesAlgebra_iff_support](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/mem-reesalgebra-iff-support--ef173edeaf916474fb807725.md) | 67 | `result-track:ef173edeaf916474fb8077250ce21114befc4b0ba942f5e56d77c195b644713b` |
| 4 | `theorem` | [reesAlgebra.monomial_mem](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/reesalgebra-monomial-mem--e8dfc4f7373d43fe7b59f035.md) | 74 | `result-track:e8dfc4f7373d43fe7b59f0359049390f278440473712a768411102000a7cada5` |
| 5 | `theorem` | [monomial_mem_adjoin_monomial](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/monomial-mem-adjoin-monomial--460d84f89c2120b9e8be95db.md) | 79 | `result-track:460d84f89c2120b9e8be95db8233f8d5e71f887a0296b4f9c4d8b00457fcea9e` |
| 6 | `theorem` | [adjoin_monomial_eq_reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/adjoin-monomial-eq-reesalgebra--b21a5376b5116877863f9e76.md) | 93 | `result-track:b21a5376b5116877863f9e76c1ab7b7cb50f65f76802ca2226fdb7d9da5b5187` |
| 7 | `theorem` | [reesAlgebra.fg](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/reesalgebra-fg--0c1777b45e3cccbc57251e8c.md) | 107 | `result-track:0c1777b45e3cccbc57251e8c05fb5de85cc661e28c0c3758f318dbca04ade03f` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/instance--d1527e2726a32260279040f5.md) | 119 | `declaration-track:d1527e2726a32260279040f5e028f53d484e72e816833a544fa190a474a1d5fc` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant50c9c3e03bcb551d50436a45c377b8e7ae99b385f8667e49a57bbfc70ced8d33.lean/declarations/instance--7f987736d86e389dc7f9564f.md) | 122 | `declaration-track:7f987736d86e389dc7f9564ff45780ec3ec3d3488f2a522546f959b33006282b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
