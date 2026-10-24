# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Pointwise.Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "219e9b27483aac34f2027b47bdaca073db90dc0e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `219e9b27483aac34f2027b47bdaca073db90dc0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_lowerBounds_subset_lowerBounds_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/smul-lowerbounds-subset-lowerbounds-smul-of-nonneg--2057c4b4ee1221268a08f728.md) | 24 | `result-track:2057c4b4ee1221268a08f7289cab10f4b4fa227da54073b8c5dbda584b2b05b6` |
| 2 | `lemma` | [smul_upperBounds_subset_upperBounds_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/smul-upperbounds-subset-upperbounds-smul-of-nonneg--223f198d696c6d751707128e.md) | 28 | `result-track:223f198d696c6d751707128e3029d8000f382fe4be92c65c931c2f76111a2f4a` |
| 3 | `lemma` | [BddBelow.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddbelow-smul-of-nonneg--cd2b16b17e9dcb4cf2422910.md) | 32 | `result-track:cd2b16b17e9dcb4cf24229105574d860615d9b6becf7024bf2919b03cc1a5bd5` |
| 4 | `lemma` | [BddAbove.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddabove-smul-of-nonneg--42ed4575e2ada199ead99592.md) | 35 | `result-track:42ed4575e2ada199ead99592483cce18674c3d6fe4fffcd5c422eec2e6b07fa9` |
| 5 | `lemma` | [lowerBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/lowerbounds-smul-of-pos--8afdca03bccff1676314ebbf.md) | 45 | `result-track:8afdca03bccff1676314ebbff1971dad59cf15acae6e18f8fee296a04ba1df5d` |
| 6 | `lemma` | [upperBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/upperbounds-smul-of-pos--f93140720419744349183962.md) | 48 | `result-track:f9314072041974434918396219eb995b08764754717682b7c8ac07fb89f248db` |
| 7 | `lemma` | [bddBelow_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddbelow-smul-iff-of-pos--7250fe06684cb6556fbcdd14.md) | 51 | `result-track:7250fe06684cb6556fbcdd1421cea7690973ecda435d0c00cb1fc71e934ce6d4` |
| 8 | `lemma` | [bddAbove_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddabove-smul-iff-of-pos--703640adfb3a8352b08c75a4.md) | 54 | `result-track:703640adfb3a8352b08c75a42e4f510951976383119b4c272a6303e5bf86c90b` |
| 9 | `lemma` | [smul_lowerBounds_subset_upperBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/smul-lowerbounds-subset-upperbounds-smul--c34ffccfe8785c7b27a79325.md) | 65 | `result-track:c34ffccfe8785c7b27a7932511caa2f928baa33dad4f572959c8e211f63a3cd5` |
| 10 | `lemma` | [smul_upperBounds_subset_lowerBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/smul-upperbounds-subset-lowerbounds-smul--6895cba97142802b43ecb498.md) | 69 | `result-track:6895cba97142802b43ecb4980a502080c5612e725ee771253f6e23cd744efa21` |
| 11 | `lemma` | [BddBelow.smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddbelow-smul-of-nonpos--6400719238fe981b1ee1f23d.md) | 73 | `result-track:6400719238fe981b1ee1f23db2c291859376dba42ff4fa43a2f9ab4bddebf1d2` |
| 12 | `lemma` | [BddAbove.smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddabove-smul-of-nonpos--f5aa33e4889196f9d3c9148b.md) | 76 | `result-track:f5aa33e4889196f9d3c9148bf266dd0837ad4270ad2b14e116e4e7675f64d01c` |
| 13 | `lemma` | [lowerBounds_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/lowerbounds-smul-of-neg--844c9ec8717c7401230b965c.md) | 87 | `result-track:844c9ec8717c7401230b965c8506fb61f09c9e9be615451ac5f4372362b0fb81` |
| 14 | `lemma` | [upperBounds_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/upperbounds-smul-of-neg--415a0898013bee1386d20793.md) | 90 | `result-track:415a0898013bee1386d207939d6f10aaaacf9734c5cf57704df4299ce9be5b06` |
| 15 | `lemma` | [bddBelow_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddbelow-smul-iff-of-neg--b8ead5c9436eb301d33ba245.md) | 93 | `result-track:b8ead5c9436eb301d33ba2456031424371bae9c8037e744e27fda5a640a4a40a` |
| 16 | `lemma` | [bddAbove_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant4305bae201cf9c52c5414f80d0517b349a405579c79c6b7fc6bc2c987ea8d041.lean/declarations/bddabove-smul-iff-of-neg--8eb1bf9b855cf1044717e16f.md) | 96 | `result-track:8eb1bf9b855cf1044717e16fa66675b75b6188a5bb6e4811941b5d07f040b20e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
