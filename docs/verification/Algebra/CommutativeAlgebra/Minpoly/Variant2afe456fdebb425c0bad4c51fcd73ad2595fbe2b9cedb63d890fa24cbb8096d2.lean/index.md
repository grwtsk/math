# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23b5d58850ee1ed7ece69ea51db511223bd4e70a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23b5d58850ee1ed7ece69ea51db511223bd4e70a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/isintegral--99da1fa0b298fc1da5705b3b.md) | 38 | `result-track:99da1fa0b298fc1da5705b3bff6fb4b9d76afa6212cf358124c96d952588bd01` |
| 2 | `theorem` | [minpoly_dvd_x_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/minpoly-dvd-x-pow-sub-one--6ea2c5272a0dd47317db4ffd.md) | 51 | `result-track:6ea2c5272a0dd47317db4ffd23bbf2d00478645af8c6f8c37e1bf8b961722d5c` |
| 3 | `theorem` | [separable_minpoly_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/separable-minpoly-mod--32871824b7507b1d83a3edc6.md) | 61 | `result-track:32871824b7507b1d83a3edc62df150ff8fe8ee12a47a78e7621d2978fa058c49` |
| 4 | `theorem` | [squarefree_minpoly_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/squarefree-minpoly-mod--84d73bf492b707b726a00161.md) | 73 | `result-track:84d73bf492b707b726a001614acf4ea1586ff1de930f4397c5d429be377c37c9` |
| 5 | `theorem` | [minpoly_dvd_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/minpoly-dvd-expand--9ae06bb07ad06750170d49b7.md) | 80 | `result-track:9ae06bb07ad06750170d49b73fd310e401fc5d86fd0ad4ee788d732808358625` |
| 6 | `theorem` | [minpoly_dvd_pow_mod](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/minpoly-dvd-pow-mod--44c0fa93bf1fbda798a73fe4.md) | 93 | `result-track:44c0fa93bf1fbda798a73fe4188138384c6e68817e8eddb95636709aafb570bf` |
| 7 | `theorem` | [minpoly_dvd_mod_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/minpoly-dvd-mod-p--0d68c99d70280f5e1de6a4d6.md) | 107 | `result-track:0d68c99d70280f5e1de6a4d67a4a9dca9a62347020f3aceb006f23749323e387` |
| 8 | `theorem` | [minpoly_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/minpoly-eq-pow--8f901b1a500a754d4475aa07.md) | 118 | `result-track:8f901b1a500a754d4475aa07157dbe5dc750264b31713dde9a114d4d454fde1e` |
| 9 | `theorem` | [minpoly_eq_pow_coprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/minpoly-eq-pow-coprime--d3ac1df4f15088d66c55b3dd.md) | 175 | `result-track:d3ac1df4f15088d66c55b3dd376accd272ce9b080f91512c43b3f78ee98a11cc` |
| 10 | `theorem` | [pow_isRoot_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/pow-isroot-minpoly--dc48baf1d2fd17a430817ca9.md) | 199 | `result-track:dc48baf1d2fd17a430817ca947c1215e75e959af585243dec2329e20876dfacb` |
| 11 | `theorem` | [is_roots_of_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/is-roots-of-minpoly--c9366110773b5a6c34f8f6af.md) | 207 | `result-track:c9366110773b5a6c34f8f6af7a390a56cdfe7f42c0f6b4b902b638db02c283f6` |
| 12 | `theorem` | [totient_le_degree_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/declarations/totient-le-degree-minpoly--9ba7ec5d2a17467f7050834a.md) | 220 | `result-track:9ba7ec5d2a17467f7050834a7e9e0fa7a7098ee367f25ca88aa0b0f16465cad6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
