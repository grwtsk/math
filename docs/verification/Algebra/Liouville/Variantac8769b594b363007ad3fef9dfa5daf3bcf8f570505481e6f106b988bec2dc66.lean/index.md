# Verification target: GRWTSK.Algebra.Liouville.Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af263af38ac4b4ebbfcf3db5b022fc78c059dff6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/index.md) · [Full source](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af263af38ac4b4ebbfcf3db5b022fc78c059dff6`.

Source path: `GRWTSK/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Differential.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLiouville](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/isliouville--3bc0b764e2cf586fdbd417c1.md) | 49 | `declaration-track:3bc0b764e2cf586fdbd417c111ba96b3e1190b599b2b42f99b6b059c4eb219cc` |
| 2 | `instance` | [IsLiouville.rfl](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/isliouville-rfl--890cc410c55edc8260238e6e.md) | 55 | `declaration-track:890cc410c55edc8260238e6eb3610c2349a49ea91f769423952051855adaf18b` |
| 3 | `lemma` | [IsLiouville.trans](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/isliouville-trans--277eee885a74a4c5c08598bc.md) | 60 | `result-track:277eee885a74a4c5c08598bc33af47e7065befd982e332db5c6eb2ecd1d30d9c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/instance--a63aa6bc81d9440923cc8a70.md) | 91 | `declaration-track:a63aa6bc81d9440923cc8a7078a966b334d6f1994861eca75494d8dde03fa681` |
| 5 | `lemma` | [IsLiouville.equiv](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/isliouville-equiv--5a4b4ac5b3db4c35a1a9cf23.md) | 114 | `result-track:5a4b4ac5b3db4c35a1a9cf23214b77bccda0885a2314099be962bfc7cdffbfca` |
| 6 | `instance` | [isLiouville_of_finiteDimensional_galois](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/isliouville-of-finitedimensional-galois--c4368d88ea5d4759c17d2176.md) | 127 | `declaration-track:c4368d88ea5d4759c17d2176543758e0247049abf11fba14b92364bad0fe6e77` |
| 7 | `instance` | [isLiouville_of_finiteDimensional](../../../../mathematics/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/declarations/isliouville-of-finitedimensional--b5c980b6ef42c02baeee34dc.md) | 203 | `declaration-track:b5c980b6ef42c02baeee34dc61c9546f0b274e090b9f0a0299e5e5d1229280b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
