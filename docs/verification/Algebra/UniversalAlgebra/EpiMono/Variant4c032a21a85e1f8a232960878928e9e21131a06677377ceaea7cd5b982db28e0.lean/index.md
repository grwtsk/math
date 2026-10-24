# Verification target: GRWTSK.Algebra.UniversalAlgebra.EpiMono.Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0db3cc181c016d209acbc355b425eb938b02fb8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0db3cc181c016d209acbc355b425eb938b02fb8`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [epi_of_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/epi-of-surjective--1510b59e9724da59ee4f10e7.md) | 35 | `result-track:1510b59e9724da59ee4f10e76c48a7c6c51ef8f5254ae4413b290c28c0d00188` |
| 2 | `lemma` | [mono_of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/mono-of-injective--8f78e0ea2417bca37f5c12a9.md) | 41 | `result-track:8f78e0ea2417bca37f5c12a9f9ef9ea2e991d425b7426af6499a1393c24f8e5a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/instance--1bc281a778815b2f9cf7e55d.md) | 48 | `declaration-track:1bc281a778815b2f9cf7e55d4baa32cb6ad52bb423faee14c60ac0732c59d8e5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/instance--57e1a90e38da560dbc56ecfb.md) | 51 | `declaration-track:57e1a90e38da560dbc56ecfbc3748d650f1369530b29167ca46a402d11b70b62` |
| 5 | `lemma` | [surjective_of_epi](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/surjective-of-epi--032a20f4ee27fea9f1abeb33.md) | 54 | `result-track:032a20f4ee27fea9f1abeb339d7ae03e6108a24e2da24d0c7c4a7c4794e4e400` |
| 6 | `lemma` | [injective_of_mono](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/injective-of-mono--a6b6b20f68dc6f12af784953.md) | 59 | `result-track:a6b6b20f68dc6f12af78495354fd62195b7e08c0d39ab4ba766639cba9be45b2` |
| 7 | `lemma` | [epi_iff_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/epi-iff-surjective--ece3a51722cf47b7b783af0e.md) | 64 | `result-track:ece3a51722cf47b7b783af0ef16173f1b41f500dc696c982263d693621a17433` |
| 8 | `lemma` | [mono_iff_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant4c032a21a85e1f8a232960878928e9e21131a06677377ceaea7cd5b982db28e0.lean/declarations/mono-iff-surjective--44c3f07fbf5ce6cef8f9d141.md) | 68 | `result-track:44c3f07fbf5ce6cef8f9d1415555622fb2f9692a7ea90514a35f2fad303cad95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
