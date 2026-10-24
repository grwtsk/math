# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantForm.Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2456f19f6d0658c7f1361dc64afb142aded272cd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2456f19f6d0658c7f1361dc64afb142aded272cd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Semisimple.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Orthogonal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapBilinFormLieInvariant.Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.LinearMap.BilinForm.lieInvariant](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmapbilinformlieinvariant-var--ce86534ca29e7971f0785341.md) | 58 | `declaration-track:ce86534ca29e7971f07853414d92430abed38cc328a3c6af1c479a74ef98784c` |
| 2 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapBilinFormLieInvariant.Variantc9749ccd947a0e180a3f138203e8dfc58687d46bcf41756c5387080990fbae24.LinearMap.BilinForm.lieInvariant_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmapbilinformlieinvariant-var--07c54026e83602e2dd817413.md) | 61 | `result-track:07c54026e83602e2dd817413877bc62c329282e40e5811c71444c2907e7fac35` |
| 3 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/orthogonal--217b42ad4f372ff60afd3a6d.md) | 77 | `declaration-track:217b42ad4f372ff60afd3a6d75412b9d90ff088bf2f922607433f5afb8fd5aaa` |
| 4 | `lemma` | [orthogonal_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/orthogonal-tosubmodule--721ccabc7941ec7952660eb2.md) | 91 | `result-track:721ccabc7941ec7952660eb2ec6a9c6c4f85e22a1644789af36e3549dac44660` |
| 5 | `lemma` | [mem_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/mem-orthogonal--cb8c2e4f9551b35b7794f7e1.md) | 94 | `result-track:cb8c2e4f9551b35b7794f7e1e7775d9e8b33de8b678130ffec4913e3c3859091` |
| 6 | `lemma` | [orthogonal_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/orthogonal-disjoint--95c38b936d23043bf00c1f69.md) | 100 | `result-track:95c38b936d23043bf00c1f69994b1dfe4b3496f150e5071d4f65694d2e3e05ee` |
| 7 | `lemma` | [orthogonal_isCompl_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/orthogonal-iscompl-tosubmodule--c1dd95c5e985dd4f5ae5dc80.md) | 136 | `result-track:c1dd95c5e985dd4f5ae5dc80adf0c275f12884dd12b38dc64ac571684176acd4` |
| 8 | `lemma` | [orthogonal_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/orthogonal-iscompl--5722a97325af27950ed8f8ad.md) | 146 | `result-track:5722a97325af27950ed8f8ad76e753fe95183d3b9fb7c047ae712a8ea049d8e5` |
| 9 | `lemma` | [restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/restrict-nondegenerate--cc50f078aee9c8160f929a19.md) | 153 | `result-track:cc50f078aee9c8160f929a1903c7e054280f25f173e572efc1864471da358550` |
| 10 | `lemma` | [restrict_orthogonal_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/restrict-orthogonal-nondegenerate--8ac449d365b5d1d162ce552e.md) | 158 | `result-track:8ac449d365b5d1d162ce552ec121a9f732ebc56998512748a6a405eb1f0fa964` |
| 11 | `lemma` | [atomistic](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/atomistic--5dd23704f0e81403a1512d54.md) | 166 | `result-track:5dd23704f0e81403a1512d54808de7272f05f179a7085e5b4de37a27da7fa58e` |
| 12 | `theorem` | [isSemisimple_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/InvariantForm/Variant48ba891f5c85215c2489b191430eea116c6251304ab0f3fdc2879a5390aea26d.lean/declarations/issemisimple-of-nondegenerate--895d327ee54e17d521722a6c.md) | 202 | `result-track:895d327ee54e17d521722a6c3223472f5b8e81fbd8a2eab9e5aecdce1d3523b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
