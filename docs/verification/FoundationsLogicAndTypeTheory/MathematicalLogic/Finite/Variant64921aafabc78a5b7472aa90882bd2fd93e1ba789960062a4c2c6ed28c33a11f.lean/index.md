# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Finite.Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "571b82abc0cbbb3958596705012d663553bf2ce7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `571b82abc0cbbb3958596705012d663553bf2ce7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isConj_of_support_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/isconj-of-support-equiv--edb2f3dd02a74c7ac9ab39f9.md) | 35 | `result-track:edb2f3dd02a74c7ac9ab39f92ade5260ca3b0e3c7191dd00cf74c6059ce84d71` |
| 2 | `theorem` | [perm_inv_on_of_perm_on_finset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/perm-inv-on-of-perm-on-finset--b027ebaa0848b1f1cc578018.md) | 54 | `result-track:b027ebaa0848b1f1cc578018683a5ebe85ce22fd65d3d84e1d5f62b32512be7e` |
| 3 | `theorem` | [perm_inv_mapsTo_of_mapsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/perm-inv-mapsto-of-mapsto--456dc976048390c3c52e70a3.md) | 64 | `result-track:456dc976048390c3c52e70a39cb6cbc320f35d360edf60f1a38e4ba4030dcb35` |
| 4 | `theorem` | [perm_inv_mapsTo_iff_mapsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/perm-inv-mapsto-iff-mapsto--ddc6b5245979db48a0ea8063.md) | 74 | `result-track:ddc6b5245979db48a0ea806360ade7d497cae9828bbda70c7442ac769cccd251` |
| 5 | `theorem` | [perm_inv_on_of_perm_on_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/perm-inv-on-of-perm-on-finite--d3d5677c062469d266da2387.md) | 78 | `result-track:d3d5677c062469d266da2387bacfd60f1ff4df5a3598378d749e322e6e3d3e74` |
| 6 | `abbrev` | [subtypePermOfFintype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/subtypepermoffintype--dde2006e246f789dfbde99c8.md) | 86 | `declaration-track:dde2006e246f789dfbde99c8f39b84aeaadd3bddc053bb97913b527698f6fb9f` |
| 7 | `theorem` | [subtypePermOfFintype_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/subtypepermoffintype-apply--67398c368c33223439c9aac9.md) | 91 | `result-track:67398c368c33223439c9aac93d954f036920653d335af1596ceb871bdaf9ae8e` |
| 8 | `theorem` | [subtypePermOfFintype_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/subtypepermoffintype-one--900211ed80f2681eddefa61f.md) | 95 | `result-track:900211ed80f2681eddefa61f915cda94e7dd835338bcf33067adf46cc5773372` |
| 9 | `theorem` | [perm_mapsTo_inl_iff_mapsTo_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/perm-mapsto-inl-iff-mapsto-inr--3c17a3c9675d87de669dfe89.md) | 99 | `result-track:3c17a3c9675d87de669dfe89b9f3dddc078153f9ac250cd2cb337ccaeb4ad76b` |
| 10 | `theorem` | [mem_sumCongrHom_range_of_perm_mapsTo_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/mem-sumcongrhom-range-of-perm-mapsto-inl--e5781ba6984469fb02cf06bf.md) | 119 | `result-track:e5781ba6984469fb02cf06bfdd37b28e509c46cd33e93a1ac06d5a6b8af5919f` |
| 11 | `theorem` | [Disjoint.orderOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-orderof--612aa598e76204753feb7adf.md) | 152 | `result-track:612aa598e76204753feb7adfb53e8133dbbf7134949b530468de5ad4486380c6` |
| 12 | `theorem` | [Disjoint.extendDomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-extenddomain--a0264e4fb02a2b9261f108f8.md) | 161 | `result-track:a0264e4fb02a2b9261f108f88dbf9904a32a9c75c4282dcdaddf5459ef80894a` |
| 13 | `theorem` | [Disjoint.isConj_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-isconj-mul--4b8d35ecd1722bf1dab2efad.md) | 171 | `result-track:4b8d35ecd1722bf1dab2efadd9dcc417c476c9dc31a6c9aea1d8231482645499` |
| 14 | `theorem` | [apply_mem_fixedPoints_iff_mem_of_mem_centralizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/apply-mem-fixedpoints-iff-mem-of-mem-centralizer--c8efa0d2dd59309266f6ce5b.md) | 217 | `result-track:c8efa0d2dd59309266f6ce5ba043e9b490d44b67c438b23ae829277b8cf9eae6` |
| 15 | `lemma` | [disjoint_ofSubtype_of_memFixedPoints_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-ofsubtype-of-memfixedpoints-self--542ab118a8b2e9051b53832c.md) | 228 | `result-track:542ab118a8b2e9051b53832ca0f6673a5f5e42127d99e266616899ceb1dc14fb` |
| 16 | `theorem` | [support_pow_coprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/support-pow-coprime--9e2447c16bae3a36ddcad628.md) | 241 | `result-track:9e2447c16bae3a36ddcad6285beda1418fd1e47e015645bc98b7d501e0d7202f` |
| 17 | `lemma` | [ofSubtype_support_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/ofsubtype-support-disjoint--05c29fe53290233ea732c434.md) | 248 | `result-track:05c29fe53290233ea732c434196c6ae70a17f23f40f24e71c356d4472b728543` |
| 18 | `lemma` | [disjoint_of_disjoint_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-of-disjoint-support--0e080c53a695dd6e7d46047c.md) | 257 | `result-track:0e080c53a695dd6e7d46047cc508dce3dfa081d70d155ae93a1ef4510d45e382` |
| 19 | `lemma` | [support_closure_subset_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/support-closure-subset-union--35f0982d529c2dfac78a831e.md) | 265 | `result-track:35f0982d529c2dfac78a831e2354a27d4db351fdbec0e5f09ad3f9e0d9d1426d` |
| 20 | `lemma` | [disjoint_support_closure_of_disjoint_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-support-closure-of-disjoint-support--969cb1b8fef06076f742fd1b.md) | 276 | `result-track:969cb1b8fef06076f742fd1b8e0b4b5a718512e9d697d9812daf191e6b2afa6b` |
| 21 | `lemma` | [disjoint_closure_of_disjoint_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant64921aafabc78a5b7472aa90882bd2fd93e1ba789960062a4c2c6ed28c33a11f.lean/declarations/disjoint-closure-of-disjoint-support--3c3942bb703702690b2e1e97.md) | 286 | `result-track:3c3942bb703702690b2e1e97917239f23a3079c231415296f3b3f992b4948344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
