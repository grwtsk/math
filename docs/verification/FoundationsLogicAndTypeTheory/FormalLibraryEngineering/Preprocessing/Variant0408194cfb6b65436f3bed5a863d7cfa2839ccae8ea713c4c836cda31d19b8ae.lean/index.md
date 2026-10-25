# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocessing.Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f7708366e946e8d3a9150f43096b597113bd93",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f7708366e946e8d3a9150f43096b597113bd93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CancelDenoms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Exception` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.HashMap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitConjunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/splitconjunctions--c017df53707e874e3d609eaf.md) | 47 | `declaration-track:c017df53707e874e3d609eafcfd6d614d8a452f15fb89b831b0d214e4fbc7610` |
| 2 | `def` | [filterComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/filtercomparisons--afca533cb4753e214d08b197.md) | 62 | `declaration-track:afca533cb4753e214d08b19731b33f041e4c0cafdc1f11f045ffff4e01d073c6` |
| 3 | `def` | [flipNegatedComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/flipnegatedcomparison--7589b34beaca6992ec7db2ea.md) | 85 | `declaration-track:7589b34beaca6992ec7db2ea038757800bc30a3baa87d7b6eeb43c6a1eddb879` |
| 4 | `def` | [removeNegations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/removenegations--ab3bcc8a6eee7c4c5e68fcfa.md) | 95 | `declaration-track:ab3bcc8a6eee7c4c5e68fcfaf9ad6392d3ea19befb2757dd73085e9ca7aa545d` |
| 5 | `def` | [isNatProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/isnatprop--847eed078aff8eac08af1f44.md) | 115 | `declaration-track:847eed078aff8eac08af1f445fba753bac9a116b05cfedfaef3322f214baf0ca` |
| 6 | `def` | [isNatIntCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/isnatintcoe--82096eefd87ecf0333ca537e.md) | 126 | `declaration-track:82096eefd87ecf0333ca537e6ed3f7edfd743d45e8e6e814d10b1d40d2be87e5` |
| 7 | `def` | [getNatComparisons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/getnatcomparisons--37535d421595df7810080c10.md) | 134 | `declaration-track:37535d421595df7810080c10bd4ab26aeda1e00b27f2373b5626dda83a6e9380` |
| 8 | `def` | [mk_coe_nat_nonneg_prf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/mk-coe-nat-nonneg-prf--b3ec7de022389cd1645d5a07.md) | 143 | `declaration-track:b3ec7de022389cd1645d5a0766261386e00426b435297646ce6255438444a14a` |
| 9 | `def` | [Expr.compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/expr-compare--7523dbb4cc06f2cf8021b1b1.md) | 150 | `declaration-track:7523dbb4cc06f2cf8021b1b1d262d1161421d65ee763c38737eb81a3a6e85ff7` |
| 10 | `def` | [natToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/nattoint--d3572d99e583508fa57be585.md) | 159 | `declaration-track:d3572d99e583508fa57be58533a870199d8b84612f9cf8e334ae1282a048bfb3` |
| 11 | `def` | [isStrictIntComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/isstrictintcomparison--7b2d37dadd323c16aacd2ef2.md) | 192 | `declaration-track:7b2d37dadd323c16aacd2ef228e5c830f4b9e2594c93b0a34917bfac1a0dc46b` |
| 12 | `def` | [mkNonstrictIntProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/mknonstrictintproof--9bf9440568e86969af34b54c.md) | 207 | `declaration-track:9bf9440568e86969af34b54c64e6303833fd6cde0a5cfaef1bfbea6802de55d0` |
| 13 | `def` | [strengthenStrictInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/strengthenstrictint--55f8ea32ea6980e824552aec.md) | 226 | `declaration-track:55f8ea32ea6980e824552aeca44bbeea3f16fbcf2f1e3b14f547e0df9c231385` |
| 14 | `def` | [rearrangeComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/rearrangecomparison--12fb99e4388a9cfa9bc942e2.md) | 242 | `declaration-track:12fb99e4388a9cfa9bc942e23716a1653cab7beefbb39bf549f2af8645272535` |
| 15 | `def` | [compWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/compwithzero--4b94fdbd418aa5ddaeb6548a.md) | 277 | `declaration-track:4b94fdbd418aa5ddaeb6548a8981198d6e1f39908765fd452f0c5ac73f5da0b3` |
| 16 | `theorem` | [without_one_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/without-one-mul--bca5d443fb078d3e96d7e81d.md) | 291 | `result-track:bca5d443fb078d3e96d7e81d65309b889996e110affec5bb9eb81b40a892fb98` |
| 17 | `def` | [normalizeDenominatorsLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/normalizedenominatorslhs--9743315464f37b89d7cc4639.md) | 297 | `declaration-track:9743315464f37b89d7cc4639837c15d76a32f0c2dbf5c163a1024dd495a4637b` |
| 18 | `def` | [cancelDenoms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/canceldenoms--4ea248da8cace6a3c0f2136c.md) | 315 | `declaration-track:4ea248da8cace6a3c0f2136c8579889e3cea17bfe4570079dd6fc94b7821b044` |
| 19 | `def` | [findSquares](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/findsquares--5d45c72723bc84e4be66f92c.md) | 330 | `declaration-track:5d45c72723bc84e4be66f92c769df1c01527d31191efb4e9e87e32d9b5d7f766` |
| 20 | `def` | [nlinarithExtras](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/nlinarithextras--5e3142fac033ee2d23fc3149.md) | 353 | `declaration-track:5e3142fac033ee2d23fc3149389f5def73fdabcd4225e52078c4a5f68a93d150` |
| 21 | `def` | [removeNe_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/removene-aux--9947e0ca3344d19c47823df6.md) | 397 | `declaration-track:9947e0ca3344d19c47823df6363da0dff4d7e60d51f80118dcfad6331d8fd556` |
| 22 | `def` | [removeNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/removene--819c5929debc54821781c449.md) | 415 | `declaration-track:819c5929debc54821781c4496463e9a7a06a80004222d2da52069f997fbd6b78` |
| 23 | `def` | [defaultPreprocessors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/defaultpreprocessors--96f6f3d513c0842801a72f7f.md) | 424 | `declaration-track:96f6f3d513c0842801a72f7fe2abdd485fee8f1a09a80d4af78774edba76b909` |
| 24 | `def` | [preprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant0408194cfb6b65436f3bed5a863d7cfa2839ccae8ea713c4c836cda31d19b8ae.lean/declarations/preprocess--62a472d2c1d251f739554a86.md) | 435 | `declaration-track:62a472d2c1d251f739554a86e361d27d431ba225043b3d0966d88c19a2a1d920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
