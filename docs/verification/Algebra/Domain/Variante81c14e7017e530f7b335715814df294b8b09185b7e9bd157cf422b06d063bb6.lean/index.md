# Verification target: GRWTSK.Algebra.Domain.Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee3e95ab1196c59f2b3ae27c7c3bbc04d6b7146e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee3e95ab1196c59f2b3ae27c7c3bbc04d6b7146e`.

Source path: `GRWTSK/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean.json)

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
| 1 | `def` | [shift](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/shift--6c90a0f4603f5d7661710779.md) | 65 | `declaration-track:6c90a0f4603f5d766171077900c970ee0de492a92bf1a079ad30854176932726` |
| 2 | `theorem` | [shift_coeff](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/shift-coeff--3d6d07286e76ba5c509eb490.md) | 68 | `result-track:3d6d07286e76ba5c509eb490773745a7f1ab923d669128d1ba84d044d8710926` |
| 3 | `theorem` | [verschiebung_shift](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/verschiebung-shift--15bc11e02ea0d0a7d555290f.md) | 73 | `result-track:15bc11e02ea0d0a7d555290f50dc726d4260c062d0d6f2d5aeb0c93cdad6b980` |
| 4 | `theorem` | [eq_iterate_verschiebung](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/eq-iterate-verschiebung--f61493a18ff2156bac564890.md) | 82 | `result-track:f61493a18ff2156bac56489057a3f7ebc8bce4a645ac203dbce35e17511d473f` |
| 5 | `theorem` | [verschiebung_nonzero](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/verschiebung-nonzero--b5cafc2927ee207b1251006a.md) | 91 | `result-track:b5cafc2927ee207b1251006a351320ae7739415403eba499536e0abdb8a87ea7` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/instance--12197948f886af4176fb8c78.md) | 113 | `declaration-track:12197948f886af4176fb8c78e24b31122ff80e89276460f8f25a59d91bb01402` |
| 7 | `instance` | [instIsDomain](../../../../mathematics/Algebra/Domain/Variante81c14e7017e530f7b335715814df294b8b09185b7e9bd157cf422b06d063bb6.lean/declarations/instisdomain--6728fc3aba9270fb6b6bab7d.md) | 123 | `declaration-track:6728fc3aba9270fb6b6bab7d233d4cf296b7ebfee7fca23c537cf5cd4dfc1cae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
