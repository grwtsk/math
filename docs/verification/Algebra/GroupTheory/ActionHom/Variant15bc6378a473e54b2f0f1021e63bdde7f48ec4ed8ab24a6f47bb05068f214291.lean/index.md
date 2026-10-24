# Verification target: GRWTSK.Algebra.GroupTheory.ActionHom.Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1a542ad747a4ae3421bd03bf74386f7b183ba4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1a542ad747a4ae3421bd03bf74386f7b183ba4`.

Source path: `GRWTSK/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupAction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/instance--2e5867418bbe09e05d039618.md) | 31 | `declaration-track:2e5867418bbe09e05d03961883a8b81834f52e1981a0f70bc38b9106bda5a75a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/instance--2263b3145abaf55266c3e684.md) | 34 | `declaration-track:2263b3145abaf55266c3e6846b1c07a44fe116a19d73c1353289f64db4b67017` |
| 3 | `theorem` | [smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/smul-mulactionhom-apply--7bfc8b42f5e7332709b3f3f9.md) | 38 | `result-track:7bfc8b42f5e7332709b3f3f9655dab80e5a652f6b17828ea9de476e53628c4ac` |
| 4 | `theorem` | [mk_smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/mk-smul-mulactionhom-apply--a4cdd1a8b9f6000e88041f55.md) | 43 | `result-track:a4cdd1a8b9f6000e88041f556553f688b6c2f1793e41ff574f744ecf42256dcc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/instance--a5edbfdd05cf55f8be4e067d.md) | 47 | `declaration-track:a5edbfdd05cf55f8be4e067db583062edfc77f067673c038c3b1de7b87f23eb2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/instance--7ea23ff0bb6594e62823a1bb.md) | 60 | `declaration-track:7ea23ff0bb6594e62823a1bb78e35adb7da4e922ec353f41f342e49f5d36cdb3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/instance--77f7c0f75971dc5b65bbcab9.md) | 63 | `declaration-track:77f7c0f75971dc5b65bbcab9ff02fb415015aa34709f52dbe41f6e3b01b7cee3` |
| 8 | `theorem` | [smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/smul-muldistribactionhom-apply--d611deb2bce52563d1c24bd6.md) | 67 | `result-track:d611deb2bce52563d1c24bd64e2fec2f9f23006dc919658791123fb3fcb4d2a1` |
| 9 | `theorem` | [mk_smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/mk-smul-muldistribactionhom-apply--15c47b170489bd610dd7f11a.md) | 72 | `result-track:15c47b170489bd610dd7f11a74a08bc94d6a15390d3ed6a876c8ca4cac236065` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant15bc6378a473e54b2f0f1021e63bdde7f48ec4ed8ab24a6f47bb05068f214291.lean/declarations/instance--daf6120b42bebe4e33ea22cf.md) | 77 | `declaration-track:daf6120b42bebe4e33ea22cf024ace67882f44afd73b3f4d54bfe8467a85245a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
