# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35cd6196fd355196503e86adb7d61de6aed5b995",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35cd6196fd355196503e86adb7d61de6aed5b995`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Banach` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric--a98c9bd17ad06b3e4c8e508f.md) | 60 | `declaration-track:a98c9bd17ad06b3e4c8e508f5ae091394f8c4ed584306a18262198b889c0e019` |
| 2 | `theorem` | [isSymmetric_iff_sesqForm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-iff-sesqform--662535f1abb5b41fba9f7aaa.md) | 68 | `result-track:662535f1abb5b41fba9f7aaafad94301fac84bc0a96c133b8925e12ee0b16a8f` |
| 3 | `theorem` | [IsSymmetric.conj_inner_sym](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-conj-inner-sym--1e70d4867ecd52dd4d23519c.md) | 75 | `result-track:1e70d4867ecd52dd4d23519cc5194e9ff15eb6bbe8911dea2f99be2b96e56f0f` |
| 4 | `theorem` | [IsSymmetric.apply_clm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-apply-clm--30fdb39bdd51905b0395b73d.md) | 80 | `result-track:30fdb39bdd51905b0395b73dd67b53930df9bf9c1947bad2bf3da867ba160f2e` |
| 5 | `theorem` | [isSymmetric_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-zero--3fbcbc8ec98985295c4f92d1.md) | 85 | `result-track:3fbcbc8ec98985295c4f92d18fc2a2b9318776df5a984ec7b666a28bab71c266` |
| 6 | `theorem` | [isSymmetric_id](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-id--e1271ee1c4b4d885aa351dfb.md) | 89 | `result-track:e1271ee1c4b4d885aa351dfb74c332f34b7666dfa13f0344e8aced81176d6a66` |
| 7 | `theorem` | [IsSymmetric.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-add--112057c3d3c5f447256e8c54.md) | 92 | `result-track:112057c3d3c5f447256e8c5445aba3c140026d81cfbffb7f96c3e66db2c2db6e` |
| 8 | `theorem` | [IsSymmetric.continuous](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-continuous--6af1647b2ca4a3753ce9cb0b.md) | 101 | `result-track:6af1647b2ca4a3753ce9cb0bf9bd0ff79e2561b2dbddb4a7b760ffc75784c1fa` |
| 9 | `theorem` | [IsSymmetric.coe_reApplyInnerSelf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-coe-reapplyinnerself-apply--555cdf1fcda7bdea6f84e0b7.md) | 119 | `result-track:555cdf1fcda7bdea6f84e0b77591ba935c206026ed522c66567eca32e454c685` |
| 10 | `theorem` | [IsSymmetric.restrict_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-restrict-invariant--2e6dabb4958b9bd6767c8198.md) | 129 | `result-track:2e6dabb4958b9bd6767c819833dc6aebd67f47a3b1a36cb8c252e33573284788` |
| 11 | `theorem` | [IsSymmetric.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-restrictscalars--1cb671048b000988d700f55b.md) | 133 | `result-track:1cb671048b000988d700f55bb4f8733a4ab9b95dbb7ce9ed8ce45f9cc5ab081d` |
| 12 | `theorem` | [isSymmetric_iff_inner_map_self_real](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-iff-inner-map-self-real--3018c99fb42055320e36a850.md) | 146 | `result-track:3018c99fb42055320e36a850b5a68727f6e470d21e1147507a343c7745505166` |
| 13 | `theorem` | [IsSymmetric.inner_map_polarization](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-inner-map-polarization--7328de73621e82cf482000ab.md) | 167 | `result-track:7328de73621e82cf482000ab8076f9ab7cd5f8b591c3fac89a7771da287da402` |
| 14 | `theorem` | [IsSymmetric.inner_map_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variante929f201160825d8641ee35a94636238172064f92db1187b2fc26ddf2064f65e.lean/declarations/issymmetric-inner-map-self-eq-zero--dc966e94c1e59bba405ba8d4.md) | 189 | `result-track:dc966e94c1e59bba405ba8d4927e2cf3f1be6a9c0a827b62a08a58856dccf683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
