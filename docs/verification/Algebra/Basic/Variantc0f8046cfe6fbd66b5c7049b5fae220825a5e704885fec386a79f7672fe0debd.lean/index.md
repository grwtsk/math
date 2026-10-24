# Verification target: GRWTSK.Algebra.Basic.Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2750d0093f4ed55f67d2e09e8c2edb958d8e5112",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2750d0093f4ed55f67d2e09e8c2edb958d8e5112`.

Source path: `GRWTSK/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/mem-maximalideal--3e09ce83087512341147b97a.md) | 28 | `result-track:3e09ce83087512341147b97a137020f9a5f59e8ee5bb4635bccb6454e5f2441f` |
| 2 | `instance` | [maximalIdeal.isMaximal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/maximalideal-ismaximal--4fd2fbb01bd321ef0b4b7fb9.md) | 33 | `declaration-track:4fd2fbb01bd321ef0b4b7fb9bcca1e7b8102f766dc1b344785597ae106a30d31` |
| 3 | `theorem` | [isMaximal_iff](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/ismaximal-iff--995e50ee3abf7dbcbd65673e.md) | 44 | `result-track:995e50ee3abf7dbcbd65673e127ef94ae9ac5524165bc383693ac8579da53ff0` |
| 4 | `theorem` | [maximal_ideal_unique](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/maximal-ideal-unique--9604edab4642d271976e3ca2.md) | 48 | `result-track:9604edab4642d271976e3ca2650c6ed69472b3554635930da127b04757a1c952` |
| 5 | `theorem` | [eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/eq-maximalideal--fd32bdc55c841321f76139d1.md) | 53 | `result-track:fd32bdc55c841321f76139d1855177c14387781f595fa3cbd5a6b119c7e988e3` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/instance--463103d14a3c14607ebbdaf1.md) | 57 | `declaration-track:463103d14a3c14607ebbdaf1151a8e83407d70a3bfbef8849906a415cc958a88` |
| 7 | `theorem` | [of_singleton_maximalSpectrum](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/of-singleton-maximalspectrum--bb52924abc05a3224aaca0c3.md) | 63 | `result-track:bb52924abc05a3224aaca0c3cd5ce2a0f80c8c59e7275a3cabdc75e2500fa59d` |
| 8 | `theorem` | [le_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/le-maximalideal--4ec850578f54ced304112cd4.md) | 69 | `result-track:4ec850578f54ced304112cd4758a553b34ab2be530607b47eda9b6ab46917a8a` |
| 9 | `theorem` | [notMem_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/notmem-maximalideal--4e852a8b1afe8ff03cf0d0ad.md) | 77 | `result-track:4e852a8b1afe8ff03cf0d0ad77ebb90d11abf90e59ee0bc9435d40904260c876` |
| 10 | `theorem` | [isField_iff_maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/isfield-iff-maximalideal-eq--8230d8e7dd0dab86b1803c6b.md) | 82 | `result-track:8230d8e7dd0dab86b1803c6bf78f5cb6f426368a309fecd7cb184bfecd6d7637` |
| 11 | `theorem` | [maximalIdeal_le_jacobson](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/maximalideal-le-jacobson--5bba6265b8768ac17e76134a.md) | 117 | `result-track:5bba6265b8768ac17e76134a40fc116df7ef4c1050e363fd151f884bd0f4b8ac` |
| 12 | `theorem` | [jacobson_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/jacobson-eq-maximalideal--cb9c08ab4a763be87664db39.md) | 121 | `result-track:cb9c08ab4a763be87664db3907ea201039a0e0744cfad230f225d68ecfa6ea76` |
| 13 | `theorem` | [ker_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/ker-eq-maximalideal--e99fdaa698bd8d2e80f28c31.md) | 142 | `result-track:e99fdaa698bd8d2e80f28c31f66937746ba3f4a95d376b7bb1fad36cfc4573ea` |
| 14 | `theorem` | [IsLocalRing.maximalIdeal_eq_bot](../../../../mathematics/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/declarations/islocalring-maximalideal-eq-bot--1d7f6fd2fb5e4b3b5dfb2fa6.md) | 150 | `result-track:1d7f6fd2fb5e4b3b5dfb2fa64566e5f1990523521415fce3b0428afc827b2fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
