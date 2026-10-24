# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Spectrum.Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "923e92883b2647892920ff40cc9ef88d75bba31f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `923e92883b2647892920ff40cc9ef88d75bba31f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/macro-rules--f7816a70cda79c747807ced6.md) | 38 | `declaration-track:f7816a70cda79c747807ced6d9d0aac4ba39aa6aa7fc8d7b740347b612edf737` |
| 2 | `theorem` | [exists_mem_of_not_isUnit_aeval_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/exists-mem-of-not-isunit-aeval-prod--abed25c0768eb4fbcf4f83d6.md) | 58 | `result-track:abed25c0768eb4fbcf4f83d688995477bd614d004563b5cefd0853a3c116a947` |
| 3 | `theorem` | [subset_polynomial_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/subset-polynomial-aeval--3dd661b0bbe8602434907067.md) | 85 | `result-track:3dd661b0bbe86024349070672d2b28738213c8737a84738c8239a91f60623323` |
| 4 | `theorem` | [map_polynomial_aeval_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/map-polynomial-aeval-of-degree-pos--df4ce30ab5f3a3e0555aeeee.md) | 101 | `result-track:df4ce30ab5f3a3e0555aeeeeadf9881246a3f8c4449d2106d0af1751fb86248e` |
| 5 | `theorem` | [map_polynomial_aeval_of_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/map-polynomial-aeval-of-nonempty--adcb96462f5d259fcd9d28e6.md) | 124 | `result-track:adcb96462f5d259fcd9d28e6e51fad4fbb2bd17f4698a4d097b131be6ba4f381` |
| 6 | `theorem` | [pow_image_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/pow-image-subset--2fbe3472ac75b4893d6a2f0c.md) | 133 | `result-track:2fbe3472ac75b4893d6a2f0c01c3f26d6b3b469acba226ba172ef5f4809471d5` |
| 7 | `theorem` | [map_pow_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/map-pow-of-pos--e48c187b945115618696db7e.md) | 139 | `result-track:e48c187b945115618696db7ebf3bdb6bcf08f4f1ad250e17151621f544922f18` |
| 8 | `theorem` | [map_pow_of_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/map-pow-of-nonempty--0fd95234b0e3c999fa974e51.md) | 147 | `result-track:0fd95234b0e3c999fa974e51d7e0918a31d1c1ce1002cef3fcc3f992198c2373` |
| 9 | `theorem` | [nonempty_of_isAlgClosed_of_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variante86f41b7a86fa686c415066633af7e497b539f9be170d55b86cbd90b961e5ddb.lean/declarations/nonempty-of-isalgclosed-of-finitedimensional--cbc144916aed77fbbf6b3a56.md) | 157 | `result-track:cbc144916aed77fbbf6b3a56cd3a96fc8dc37b42d6e2790a63a3810303841fa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
