# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9235c3cdc1d3618835c4d2a19324089d9abcd5a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9235c3cdc1d3618835c4d2a19324089d9abcd5a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Norm.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PowerBasis.norm_gen_eq_coeff_zero_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/powerbasis-norm-gen-eq-coeff-zero-minpoly--7e7148ec27d0558164174cf2.md) | 63 | `result-track:7e7148ec27d0558164174cf27ba653d80631104dc91813b8c82ce53a8954a4b2` |
| 2 | `theorem` | [PowerBasis.norm_gen_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/powerbasis-norm-gen-eq-prod-roots--24f4a2b5844b13efabb97d50.md) | 70 | `result-track:24f4a2b5844b13efabb97d505554b84975cb54440406ce4c9a8657401440432a` |
| 3 | `theorem` | [norm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-zero--79d4604fa9c04e1778ca6620.md) | 88 | `result-track:79d4604fa9c04e1778ca6620b72317eecabd39d86b94fde1d69a873b4e5716d0` |
| 4 | `theorem` | [norm_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-zero-iff--fd3f9ec54f36b80bd20621a3.md) | 93 | `result-track:fd3f9ec54f36b80bd20621a31ea5320cf4d921126bd2297f6f6159a22f268657` |
| 5 | `theorem` | [norm_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-ne-zero-iff--a2c2085bfe09c18580b7416e.md) | 110 | `result-track:a2c2085bfe09c18580b7416e4ce613279a2ef69dcf5b898216ea1b153c552f59` |
| 6 | `theorem` | [norm_eq_zero_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-zero-iff--3e9890ceeda0397fb3a41c58.md) | 115 | `result-track:3e9890ceeda0397fb3a41c58a46a415617533974a0d4aab39c02736fe67e5d80` |
| 7 | `theorem` | [norm_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-zero-iff-of-basis--9eb3eca781b8578899173abf.md) | 118 | `result-track:9eb3eca781b8578899173abf2f0c881be8b971a719f2df32f5e40cee97f0c6d1` |
| 8 | `theorem` | [norm_ne_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-ne-zero-iff-of-basis--aa9acf84a085bccd09905d21.md) | 124 | `result-track:aa9acf84a085bccd09905d21374fbf990aa22f37538bbe6ac00b7d577a4132d9` |
| 9 | `theorem` | [norm_eq_norm_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-norm-adjoin--8d78422e7a0f982ff503f2db.md) | 133 | `result-track:8d78422e7a0f982ff503f2db66f3de23a05e16ad51a4a3acd15b699ed359d480` |
| 10 | `theorem` | [_root_.IntermediateField.AdjoinSimple.norm_gen_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/root-intermediatefield-adjoinsimple-norm-gen-eq-one--ad59a853396860831a9d20b9.md) | 147 | `result-track:ad59a853396860831a9d20b99b2bbd28f4aae0a42c13f6e64ad69dcc66d8795b` |
| 11 | `theorem` | [_root_.IntermediateField.AdjoinSimple.norm_gen_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/root-intermediatefield-adjoinsimple-norm-gen-eq-prod-roots--91cbf1624a1369f7da3f0d18.md) | 156 | `result-track:91cbf1624a1369f7da3f0d18e3c6a8c06a74d479df20a9ce766a028269598886` |
| 12 | `theorem` | [norm_eq_prod_embeddings_gen](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-prod-embeddings-gen--a798f933ce61620c8eb4d28c.md) | 175 | `result-track:a798f933ce61620c8eb4d28ceb8929ca137a27353afc346a3e74bdade198dde5` |
| 13 | `theorem` | [norm_eq_prod_roots](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-prod-roots--dc791b78f5e83a09e02c9e0f.md) | 189 | `result-track:dc791b78f5e83a09e02c9e0fb948416faf1e8ab85b0647db486bb76c3a68b482` |
| 14 | `theorem` | [prod_embeddings_eq_finrank_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/prod-embeddings-eq-finrank-pow--fcca35c3d85e9690e25458a1.md) | 195 | `result-track:fcca35c3d85e9690e25458a19d4d3edda29abb059c74432e72142162b4508e48` |
| 15 | `theorem` | [norm_eq_prod_embeddings](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-prod-embeddings--bd6957caeb0ab5b05a433ed9.md) | 219 | `result-track:bd6957caeb0ab5b05a433ed92eaba3729b6a38974aefc1c538d692ba8e624279` |
| 16 | `theorem` | [norm_eq_prod_automorphisms](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-prod-automorphisms--aaf3e24b2a5a8b40fee2f62d.md) | 228 | `result-track:aaf3e24b2a5a8b40fee2f62dc2bc232842511bba73b959d925f07a9b4c839134` |
| 17 | `theorem` | [isIntegral_norm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/isintegral-norm--f3a0f0513548e2519c1f02d8.md) | 238 | `result-track:f3a0f0513548e2519c1f02d8023e909bd5bc07627b02adf7f908439be4a68596` |
| 18 | `lemma` | [norm_eq_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-of-algequiv--5da8e7c060051039dce89287.md) | 249 | `result-track:5da8e7c060051039dce89287ff38b5829b9cb318049c0be9300f67c39d6e0631` |
| 19 | `lemma` | [norm_eq_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-of-ringequiv--a29ee3fe274cecd168cd3f4c.md) | 253 | `result-track:a29ee3fe274cecd168cd3f4cbabb12870b25d69075802bfbb16e445d2ad84ca8` |
| 20 | `lemma` | [norm_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/declarations/norm-eq-of-equiv-equiv--3e9470829dce7ec70a869c79.md) | 272 | `result-track:3e9470829dce7ec70a869c7995a9e31c0f985566ac555c848412b876bd1a2f15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
