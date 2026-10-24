# Verification target: GRWTSK.Algebra.Basic.Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad43651d967375926b65243bf4f03f88190b216d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad43651d967375926b65243bf4f03f88190b216d`.

Source path: `GRWTSK/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalHom_id](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/islocalhom-id--8c06f0f3ed522a88e7262838.md) | 24 | `result-track:8c06f0f3ed522a88e7262838037ba263e83f22d26242c237524727dda756023f` |
| 2 | `theorem` | [isLocalHom_toRingHom](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/islocalhom-toringhom--2b0c16af7cbb10e17ac02064.md) | 29 | `result-track:2b0c16af7cbb10e17ac02064dd668bde49e3ef34eb5879fccbf0523c6b73b038` |
| 3 | `theorem` | [RingHom.isLocalHom_comp](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/ringhom-islocalhom-comp--7473e99fbe22173b7a6454b7.md) | 34 | `result-track:7473e99fbe22173b7a6454b7e3033e84dead7cf5757a89b5d4846f1182f23879` |
| 4 | `theorem` | [isLocalHom_of_comp](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/islocalhom-of-comp--ebfac7a737c32c6c25d19dd9.md) | 38 | `result-track:ebfac7a737c32c6c25d19dd95b27ee0e8406e54f2c29f714f2048e62df74c586` |
| 5 | `theorem` | [RingHom.domain_isLocalRing](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/ringhom-domain-islocalring--c3b3b54fb9a9bce3d19bc903.md) | 43 | `result-track:c3b3b54fb9a9bce3d19bc903edf42a07126d113ec3b33ebc13c2899a9b6808ad` |
| 6 | `theorem` | [map_nonunit](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/map-nonunit--5c7d3c52344010501ed188b5.md) | 64 | `result-track:5c7d3c52344010501ed188b557b396c329e1d80513c0bb5ff0ab1ea5a08b03f6` |
| 7 | `theorem` | [local_hom_TFAE](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/local-hom-tfae--a0c50456d0e471267df67930.md) | 78 | `result-track:a0c50456d0e471267df679302768ead0d7adf82bb34a4bd6340010f342ce4fa3` |
| 8 | `theorem` | [of_surjective](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/of-surjective--e634862b666326893d1b7688.md) | 95 | `result-track:e634862b666326893d1b76881a9b0bac388cabc7ce7846a5b4576bb1e3d0eb3a` |
| 9 | `lemma` | [_root_.IsLocalHom.of_surjective](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/root-islocalhom-of-surjective--5f39fd47aaa72dd5f5db1972.md) | 106 | `result-track:5f39fd47aaa72dd5f5db1972291c84ab139c65f0ba312a667f1e5aa53090918b` |
| 10 | `theorem` | [surjective_units_map_of_local_ringHom](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/surjective-units-map-of-local-ringhom--22e6c851faa416a29b56103f.md) | 117 | `result-track:22e6c851faa416a29b56103ff1d99805fcf47fab451ec71f364d0b62925a79b5` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/instance--8859f8b385b6f944020066fa.md) | 129 | `declaration-track:8859f8b385b6f944020066fa938cccd9804d09c7c4f1b9340ea3eef8d7b86a37` |
| 12 | `theorem` | [isLocalRing](../../../../mathematics/Algebra/Basic/Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.lean/declarations/islocalring--25740a1f09efe1c6698296be.md) | 143 | `result-track:25740a1f09efe1c6698296be7ba95dc0bc4c54745608e7052b233036e4c63517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
