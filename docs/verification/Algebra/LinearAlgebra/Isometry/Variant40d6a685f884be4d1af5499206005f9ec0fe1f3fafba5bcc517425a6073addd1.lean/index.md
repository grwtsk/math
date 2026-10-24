# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometry.Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0ad604de1e27ab4bd77caa5c7f4622a33eff82d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0ad604de1e27ab4bd77caa5c7f4622a33eff82d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.SuppressCompilation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotation--f953a03c19152040959f99fd.md) | 49 | `declaration-track:f953a03c19152040959f99fd9e1cacb0b5e5d3ddbbba66e9194c315a7033051c` |
| 2 | `theorem` | [rotation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotation-apply--5bfbf4579db09ec1fa06dca2.md) | 58 | `result-track:5bfbf4579db09ec1fa06dca2d355231a9d93a387132043db0d02d6614a58957e` |
| 3 | `theorem` | [rotation_symm](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotation-symm--340fca045654dd7602ae6c4b.md) | 62 | `result-track:340fca045654dd7602ae6c4b20c26c53fae59228347ae4d8f12dfa2c20de8487` |
| 4 | `theorem` | [rotation_trans](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotation-trans--649a62dcbf6ffa87e1b3457b.md) | 66 | `result-track:649a62dcbf6ffa87e1b3457b59900223eeb75cb6e259befdc7a474aba4086cbc` |
| 5 | `theorem` | [rotation_ne_conjLIE](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotation-ne-conjlie--369b454d204acd5f1e277349.md) | 70 | `result-track:369b454d204acd5f1e2773493404ba2c937ac39602b521bd534e40f4da7d8220` |
| 6 | `def` | [rotationOf](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotationof--e00cfc1fc5c1bb828c2ed342.md) | 81 | `declaration-track:e00cfc1fc5c1bb828c2ed3428b60b8e85de66fe9a935db8f67e06ac4196e6d1b` |
| 7 | `theorem` | [rotationOf_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotationof-rotation--d0c8715965a44187b19fe542.md) | 85 | `result-track:d0c8715965a44187b19fe542cdbeccbe678187fcb5a2abbcf6b7c105a706700e` |
| 8 | `theorem` | [rotation_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/rotation-injective--3e4d51b0ee512a9c52ad7464.md) | 88 | `result-track:3e4d51b0ee512a9c52ad746468765c446cca596bbf01de78553fc29428a33576` |
| 9 | `theorem` | [LinearIsometry.re_apply_eq_re_of_add_conj_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linearisometry-re-apply-eq-re-of-add-conj-eq--3f613bae2258b2f06031b687.md) | 91 | `result-track:3f613bae2258b2f06031b6876ac8a099030ece93b98021d8edb8dfeb25eec786` |
| 10 | `theorem` | [LinearIsometry.im_apply_eq_im_or_neg_of_re_apply_eq_re](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linearisometry-im-apply-eq-im-or-neg-of-re-apply-eq-re--54bb6fe85e2e245d8e82373c.md) | 96 | `result-track:54bb6fe85e2e245d8e82373c61b2dcff24200318edbd0694366545e5753188c7` |
| 11 | `theorem` | [LinearIsometry.im_apply_eq_im](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linearisometry-im-apply-eq-im--0b1412c8b3499d277a210c11.md) | 103 | `result-track:0b1412c8b3499d277a210c11772b95ee177ee03eab7066ffb442cad66db69651` |
| 12 | `theorem` | [LinearIsometry.re_apply_eq_re](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linearisometry-re-apply-eq-re--3589d2b526fffa914a77910f.md) | 109 | `result-track:3589d2b526fffa914a77910fc7bea609dfe5feeebb7b014aaa5b66f124592679` |
| 13 | `theorem` | [linear_isometry_complex_aux](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linear-isometry-complex-aux--7ed596357798411a1439a582.md) | 113 | `result-track:7ed596357798411a1439a582d6580732285d9a51f53e5a86fb9654b9530ee110` |
| 14 | `theorem` | [linear_isometry_complex](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linear-isometry-complex--713811712b13a5cf541abb50.md) | 130 | `result-track:713811712b13a5cf541abb505ed7dcc9d3619068ab537131d5a8b97285bb258b` |
| 15 | `theorem` | [toMatrix_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/tomatrix-rotation--b86ccaf9cc7abcdea2f25138.md) | 141 | `result-track:b86ccaf9cc7abcdea2f25138babf1b0e40087b6bfd0b086827aa73558ba164f6` |
| 16 | `theorem` | [det_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/det-rotation--a8c51ca6add5cd22ff8ec43d.md) | 153 | `result-track:a8c51ca6add5cd22ff8ec43d855fee48d5d29ab3d8be8f6e9ce515160027c3bc` |
| 17 | `theorem` | [linearEquiv_det_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant40d6a685f884be4d1af5499206005f9ec0fe1f3fafba5bcc517425a6073addd1.lean/declarations/linearequiv-det-rotation--92dadc273538532479a30d52.md) | 159 | `result-track:92dadc273538532479a30d5228bd9057cba3592cc87b0bce42ccc5858482630e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
