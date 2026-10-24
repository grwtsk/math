# Verification target: GRWTSK.Geometry.DifferentialGeometry.Torsion.Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a41b95c1980e08206bddbb78df63279869fcbcdb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a41b95c1980e08206bddbb78df63279869fcbcdb`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [torsionAux](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsionaux--dfa4146d4399189a51ddc21d.md) | 43 | `declaration-track:dfa4146d4399189a51ddc21d8d9ecb9a9694ea21b47197fb427eb8877fbb55c9` |
| 2 | `theorem` | [torsionAux_tensorial₁](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsionaux-tensorial--42319ea783171de89af5b253.md) | 52 | `result-track:42319ea783171de89af5b2536d234eae8c412210f9eb3cca889bd5ef26cbc975` |
| 3 | `theorem` | [torsionAux_tensorial₂](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsionaux-tensorial--e703ef15c64fca499cb0dfd3.md) | 62 | `result-track:e703ef15c64fca499cb0dfd322f65a9d4c2f9361ea956e5bf6fe0d9061ffdba1` |
| 4 | `def` | [torsion](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion--dd947f9b5b4b3aae75df28f0.md) | 75 | `declaration-track:dd947f9b5b4b3aae75df28f084355b6233a04cbe5c66098c15a5db6f4fb1dc62` |
| 5 | `theorem` | [torsion_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-apply--de61103203bb49727b6c5c1c.md) | 81 | `result-track:de61103203bb49727b6c5c1ceb1f050b931c3c8d70547b58f24712482421c755` |
| 6 | `theorem` | [torsion_apply_eq_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-apply-eq-extend--2716a3698264dee29c421286.md) | 87 | `result-track:2716a3698264dee29c421286793087e221a04443e74a1a2e11dea4695a4d35b3` |
| 7 | `lemma` | [torsion_self](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-self--52e690eb11aa5ca733dc198a.md) | 96 | `result-track:52e690eb11aa5ca733dc198a9f02d077131d0521b5afe7a5272b22399a77fe16` |
| 8 | `lemma` | [torsion_antisymm](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-antisymm--b2aa5f7d1d1735b0fea5304d.md) | 101 | `result-track:b2aa5f7d1d1735b0fea5304d746605275dd3d6c35727fe66f89000a3c040409e` |
| 9 | `def` | [torsion](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion--76ce6823dd49098d51d6c75f.md) | 120 | `declaration-track:76ce6823dd49098d51d6c75f14bf689e2654822d7785a046b516733bae6d8262` |
| 10 | `lemma` | [torsion_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-apply--6c4c98776b49700924c316ef.md) | 123 | `result-track:6c4c98776b49700924c316ef25147a4668f5d60caa2348d88d259f134a59a66a` |
| 11 | `lemma` | [torsion_apply_eq_extend](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-apply-eq-extend--b0aa965e6379f491b3944264.md) | 129 | `result-track:b0aa965e6379f491b39442641eb6338d0fc643a561288c409e6ee6a39ef6a642` |
| 12 | `lemma` | [torsion_self](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-self--bb3a11eda49030aa1c609fe7.md) | 137 | `result-track:bb3a11eda49030aa1c609fe7ad0d23b5151a94c8bbb4c22e1152dc96bfbc17be` |
| 13 | `lemma` | [torsion_antisymm](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-antisymm--6c77702cf3025cd472b28917.md) | 140 | `result-track:6c77702cf3025cd472b289171627590d160b6484f5aeedc198340a577688e973` |
| 14 | `lemma` | [torsion_eq_zero_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/declarations/torsion-eq-zero-iff--40559bc6b178cbadbd96e6f4.md) | 143 | `result-track:40559bc6b178cbadbd96e6f418851cf6b58ba7c21f81aecbac0e019cca18068d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
