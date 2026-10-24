# Verification target: GRWTSK.Algebra.Galois.Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "413b6527647751bb3bdd053d24b77d8dfbe8acb3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `413b6527647751bb3bdd053d24b77d8dfbe8acb3`.

Source path: `GRWTSK/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIntegralClosure.MulSemiringAction](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/isintegralclosure-mulsemiringaction--54685489f4bf0f551da34007.md) | 33 | `declaration-track:54685489f4bf0f551da34007e10b53013cbf6ba82147f179a6b58df56758ae1f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/instance--d7f6116bfb28c2cfd3866e09.md) | 37 | `declaration-track:d7f6116bfb28c2cfd3866e0961d504afd199f4b7080a1b985337c871c17fa917` |
| 3 | `theorem` | [Algebra.isInvariant_of_isGalois](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/algebra-isinvariant-of-isgalois--b7a2de5a22cfef5b0562ed83.md) | 45 | `result-track:b7a2de5a22cfef5b0562ed83fab593bada21d875dc1b63f2cb4f2c32f42033da` |
| 4 | `theorem` | [Algebra.isInvariant_of_isGalois'](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/algebra-isinvariant-of-isgalois--f2f2943b4823968ae32bbe6a.md) | 64 | `result-track:f2f2943b4823968ae32bbe6a501c1d537331c3e5d174216bc6d00d19f5d1ffab` |
| 5 | `lemma` | [normal](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/normal--7889d5ab1e389dde7ed6848a.md) | 84 | `result-track:7889d5ab1e389dde7ed6848ad0873830bdffef9d3d4f9d0c599211a7ff336191` |
| 6 | `lemma` | [finite_of_isInvariant](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/finite-of-isinvariant--2985d3f8bdfe6cfe31c06937.md) | 126 | `result-track:2985d3f8bdfe6cfe31c0693719f545f8d9b6ce9032d8f2702079cc38a00ad7f7` |
| 7 | `lemma` | [Ideal.Quotient.normal](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/ideal-quotient-normal--17084b075657e8b9e3ebdc4d.md) | 139 | `result-track:17084b075657e8b9e3ebdc4dc77d4bef44eedcad8e34c4afe983773c5b46d2db` |
| 8 | `lemma` | [Ideal.Quotient.finite_of_isInvariant](../../../../mathematics/Algebra/Galois/Variant4ed05775c0ce2828250813c392141960d4ff5ef0269e76dd1827bfa5e18ef3fd.lean/declarations/ideal-quotient-finite-of-isinvariant--1fe293828e78b3ec38abaa56.md) | 146 | `result-track:1fe293828e78b3ec38abaa561b4eaed870cf839d7ef5936069b2091c6a199bcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
