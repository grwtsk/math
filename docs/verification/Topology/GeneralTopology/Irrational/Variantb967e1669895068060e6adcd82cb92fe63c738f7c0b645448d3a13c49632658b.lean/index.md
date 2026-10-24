# Verification target: GRWTSK.Topology.GeneralTopology.Irrational.Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f18a360eaa0fbee0771677cc30345db94506fe5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f18a360eaa0fbee0771677cc30345db94506fe5`.

Source path: `GRWTSK/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/i--662f59633e9f3e38df809d6c.md) | 49 | `declaration-track:662f59633e9f3e38df809d6cae3c69ed26d2f60e5777e89bb1179234a934f128` |
| 2 | `lemma` | [I_zero](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/i-zero--90d3d1aed06891ad720f6f69.md) | 53 | `result-track:90d3d1aed06891ad720f6f69252f5b1d4eba9c601b8b8cad16ee1196a7b563f6` |
| 3 | `lemma` | [recursion'](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/recursion--0568fe899f11165b279a261f.md) | 67 | `result-track:0568fe899f11165b279a261fb761b362b0b2644ab01b1022040f58e9ff2a9543` |
| 4 | `lemma` | [recursion](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/recursion--40d941f4f6f1520f95a9ee93.md) | 130 | `result-track:40d941f4f6f1520f95a9ee9387f4580539cb9889acf58a2fe46577bd2f116cdf` |
| 5 | `lemma` | [I_one](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/i-one--a305935ee4e2bae628d8ef65.md) | 141 | `result-track:a305935ee4e2bae628d8ef653c6a3510ce1b0657a53eca28f7c65897a6d41546` |
| 6 | `def` | [sinPoly](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/sinpoly--d3f796b55e5d71f604d6cee4.md) | 151 | `declaration-track:d3f796b55e5d71f604d6cee4e457d831b8f57f5795ff1a10b1dc2b2b2d8bd346` |
| 7 | `def` | [cosPoly](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/cospoly--7900277b0af24ebf4959558a.md) | 162 | `declaration-track:7900277b0af24ebf4959558a6d3d61ffd29b85187c9d6bcf1f4f665dec02ef05` |
| 8 | `lemma` | [sinPoly_natDegree_le](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/sinpoly-natdegree-le--92cd31ceb6ce1fe64ff98fc5.md) | 172 | `result-track:92cd31ceb6ce1fe64ff98fc58860d41aa3a289bce058a01ff8af6cdb51168b96` |
| 9 | `lemma` | [cosPoly_natDegree_le](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/cospoly-natdegree-le--ea673815949ed88770b7ad7d.md) | 187 | `result-track:ea673815949ed88770b7ad7d36e57eefaf8d5cf99ef1441ec4eb74e24c1687a9` |
| 10 | `lemma` | [sinPoly_add_cosPoly_eval](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/sinpoly-add-cospoly-eval--eee5384c4b8560b591111448.md) | 201 | `result-track:eee5384c4b8560b591111448cba7850a16173392166199d0faeec19c9646e45a` |
| 11 | `lemma` | [is_integer](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/is-integer--b694526382d8a3c60bd58743.md) | 219 | `result-track:b694526382d8a3c60bd58743c652af5e4346b16e01d517c9ac62c3d3a5115a90` |
| 12 | `lemma` | [I_pos](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/i-pos--458d67a2322fdd2335bfb441.md) | 243 | `result-track:458d67a2322fdd2335bfb4412532abb734def2b3de368dc2467892e0facb8b42` |
| 13 | `lemma` | [I_le](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/i-le--7de1278760ec68af014cb3fd.md) | 256 | `result-track:7de1278760ec68af014cb3fd70929c70ab6ed479fbb7d0a18e8453d6a81297a8` |
| 14 | `lemma` | [tendsto_pow_div_factorial_at_top_aux](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/tendsto-pow-div-factorial-at-top-aux--db90e7a2a7b81a13f8cf5dbe.md) | 271 | `result-track:db90e7a2a7b81a13f8cf5dbe1f788a55b893b2c888951da114f7a9fb34b2e1fb` |
| 15 | `lemma` | [not_irrational_exists_rep](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/not-irrational-exists-rep--497b7f7eed07636adf2a3392.md) | 278 | `result-track:497b7f7eed07636adf2a3392571d751dcd1a688567a96bbce15060fdb42e77d4` |
| 16 | `theorem` | [irrational_pi](../../../../../mathematics/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/declarations/irrational-pi--cdd6b324342f8702cd7f1a81.md) | 284 | `result-track:cdd6b324342f8702cd7f1a817a88c0ddefba0489a9376dec1621b28d95261be3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
