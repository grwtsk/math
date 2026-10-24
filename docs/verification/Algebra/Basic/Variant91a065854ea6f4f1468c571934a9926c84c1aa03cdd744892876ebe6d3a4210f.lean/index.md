# Verification target: GRWTSK.Algebra.Basic.Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88eda7bd2ed3157059989f5004bb9ca072b06b4c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88eda7bd2ed3157059989f5004bb9ca072b06b4c`.

Source path: `GRWTSK/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ComplexShape` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Embedding](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/embedding--bb768946bb14add3af861b46.md) | 62 | `declaration-track:bb768946bb14add3af861b460b4d360b260b5df34e01ad327a2b4e944c3c5a7a` |
| 2 | `def` | [op](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/op--240f34b74bda6dccb32d1ea1.md) | 75 | `declaration-track:240f34b74bda6dccb32d1ea190317c049366272d12f06671d5ac4f9802c23c45` |
| 3 | `class` | [IsRelIff](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/isreliff--eedb62107305d2fe81f89026.md) | 82 | `declaration-track:eedb62107305d2fe81f89026c1a45909b348ec0ebf7b1eb3396059f1ddec805a` |
| 4 | `lemma` | [rel_iff](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/rel-iff--d77fc1e76d10801a70a09b2a.md) | 85 | `result-track:d77fc1e76d10801a70a09b2a639ef28d0892b324a0c951420e84e67c0416093d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--7b880e3cc78f279976421e93.md) | 90 | `declaration-track:7b880e3cc78f279976421e93c58d76c34e89e567a000b0a7d538f8c609208ca4` |
| 6 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/mk--2f2117222f85b6f8a0c941f9.md) | 102 | `declaration-track:2f2117222f85b6f8a0c941f9e63f52ce704460224bda06577862bbc46d9e7dcc` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--917dae77056921f3cb2b6cff.md) | 107 | `declaration-track:917dae77056921f3cb2b6cff18a1e15335de9f3f8b8c121e9e3079553a6436ce` |
| 8 | `class` | [IsTruncGE](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/istruncge--77cab713dd688d9627e64572.md) | 114 | `declaration-track:77cab713dd688d9627e6457228f19b73b2ff2979cf9ac9e18ee1dea36904118e` |
| 9 | `lemma` | [mem_next](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/mem-next--62666df2df4d419feaf80a77.md) | 118 | `result-track:62666df2df4d419feaf80a7768fa12e6dd12b19c6ee4c81f4b5c81fb0d4d6ff1` |
| 10 | `class` | [IsTruncLE](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/istruncle--dd2d77bda9b9a39907164075.md) | 123 | `declaration-track:dd2d77bda9b9a399071640755034feaa9c5cb3d4f73672c004161fce28c8619b` |
| 11 | `lemma` | [mem_prev](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/mem-prev--5b7c553d6bfefb57ac2cbabb.md) | 127 | `result-track:5b7c553d6bfefb57ac2cbabbbcb7097ab59f4c47e1b4131ff2b49de379b4da67` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--1d7e50a5d2d8b044bb803840.md) | 130 | `declaration-track:1d7e50a5d2d8b044bb80384048d057f896d5d55a6a3720886de133da8d655faa` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--04b67c5c3af6dec86a12d9ba.md) | 133 | `declaration-track:04b67c5c3af6dec86a12d9ba015e0ece52a7595bcfb15d05116fd3a3909406cf` |
| 14 | `def` | [r](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/r--64bf686db753ca4eec02cb9e.md) | 138 | `declaration-track:64bf686db753ca4eec02cb9e9682bb77acdeae65fd18897b5e5ea19692e07253` |
| 15 | `lemma` | [r_eq_some](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/r-eq-some--5b0b6dc989ca118fe61a27e1.md) | 143 | `result-track:5b0b6dc989ca118fe61a27e120d33a8211790ed74a2e8bb2ac63f373cb66937e` |
| 16 | `lemma` | [r_eq_none](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/r-eq-none--491b54cf80de4513827644ad.md) | 150 | `result-track:491b54cf80de4513827644ad1486b8c0fe2cd5017c5bd032077518ace2ee47f3` |
| 17 | `lemma` | [r_f](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/r-f--0c4a60433e7167145048de89.md) | 156 | `result-track:0c4a60433e7167145048de896ffa0bde797bb170383b67ea289563ac29f7614e` |
| 18 | `lemma` | [f_eq_of_r_eq_some](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/f-eq-of-r-eq-some--dcfc202148a271f50c7fe02f.md) | 158 | `result-track:dcfc202148a271f50c7fe02f18d4087648662b5c0c33ddb2edc87d31743d5f08` |
| 19 | `def` | [embeddingUpNat](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/embeddingupnat--5cc33176ce63d22ef19998f5.md) | 171 | `declaration-track:5cc33176ce63d22ef19998f5a2e474215ae2aacd861490f9fb9d5c032afa20b8` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--b6e5d724429157131c082ce0.md) | 176 | `declaration-track:b6e5d724429157131c082ce03983cd2abe345d9b771a79f8dca2c31e49df1f90` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--1a972e502de5fb7e19b4910d.md) | 178 | `declaration-track:1a972e502de5fb7e19b4910dcb935793dee04e460b17ee2f54a74c3635006bcd` |
| 22 | `def` | [embeddingDownNat](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/embeddingdownnat--331a8a5a549fb8d878e3aec5.md) | 183 | `declaration-track:331a8a5a549fb8d878e3aec55a5c919f56a026b300d7fea60132af98c8a66138` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--59a16f127aeb43bc5012e378.md) | 188 | `declaration-track:59a16f127aeb43bc5012e378768876e29b94388c44b4d57fc9ba1aba4ab1d888` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--50a2d856e061bf8752e7bdca.md) | 190 | `declaration-track:50a2d856e061bf8752e7bdca7643a377d7f40e40fe6ee2b0c2527ddc5896f3ff` |
| 25 | `def` | [embeddingUpIntGE](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/embeddingupintge--e2f3159d4a5cec7845330899.md) | 197 | `declaration-track:e2f3159d4a5cec78453308992836c6dd740c55713e2bcbda00f0b389d214ab42` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--bf851dd19bc5ce9d51fe2463.md) | 202 | `declaration-track:bf851dd19bc5ce9d51fe24631aa0bf6e0f2a7357f19828027670153e7fd34729` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--4ed3e2f8cf11829d36726106.md) | 204 | `declaration-track:4ed3e2f8cf11829d367261061b9e158f915d10c03cac7d7ed8728f3481f701b9` |
| 28 | `def` | [embeddingUpIntLE](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/embeddingupintle--66a3b1843abf77825317c39d.md) | 209 | `declaration-track:66a3b1843abf77825317c39dcf38d4f8eab7682a0cb6865f78b96ca1f7e226ce` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--26c6f3f7b6b8d6b30fff3466.md) | 214 | `declaration-track:26c6f3f7b6b8d6b30fff34665abae10411e6b23a86f2333cb36371d14b28e0d3` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/instance--cec20687baa4f9f90970de79.md) | 216 | `declaration-track:cec20687baa4f9f90970de79a6655851c94e8475573471d41950e5a23f659d47` |
| 31 | `lemma` | [notMem_range_embeddingUpIntLE_iff](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/notmem-range-embeddingupintle-iff--fc48a57472fbe05921f06073.md) | 219 | `result-track:fc48a57472fbe05921f06073b6295c9c9ef57ef8276a9172042e06a4731edc21` |
| 32 | `lemma` | [notMem_range_embeddingUpIntGE_iff](../../../../mathematics/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/declarations/notmem-range-embeddingupintge-iff--835ece1957c45aa1181f8b05.md) | 232 | `result-track:835ece1957c45aa1181f8b05b8fbf3f85d07febb9825c541a95972479fc25a23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
