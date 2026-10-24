# Verification target: GRWTSK.Algebra.Discriminant.Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81ebc6903126bdb2878b12e777059b7e27e72787",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/index.md) · [Full source](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81ebc6903126bdb2878b12e777059b7e27e72787`.

Source path: `GRWTSK/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Discriminant.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [discr_zeta_eq_discr_zeta_sub_one](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/declarations/discr-zeta-eq-discr-zeta-sub-one--7ffb36c07b7b65a57ea8102f.md) | 44 | `result-track:7ffb36c07b7b65a57ea8102f79ab202890cf594998b06c19b0c9e4f46f7d7455` |
| 2 | `theorem` | [discr_prime_pow_ne_two](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/declarations/discr-prime-pow-ne-two--8a30c5022e36feb8468a19ad.md) | 67 | `result-track:8a30c5022e36feb8468a19adee1d42a8728b50b7333d65220bccd8ebbabf8f48` |
| 3 | `theorem` | [discr_prime_pow_ne_two'](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/declarations/discr-prime-pow-ne-two--37119c71d350a4728550bc1a.md) | 127 | `result-track:37119c71d350a4728550bc1a68559b06cea75cbad7d34a88a7f927cdede66664` |
| 4 | `theorem` | [discr_prime_pow](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/declarations/discr-prime-pow--b13a257ae608ea3300cbe4a0.md) | 138 | `result-track:b13a257ae608ea3300cbe4a0b79b746ec0a76bfaa967776d5821e2d48294ab15` |
| 5 | `theorem` | [discr_prime_pow_eq_unit_mul_pow](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/declarations/discr-prime-pow-eq-unit-mul-pow--5bfd04b43643d66c31a72e58.md) | 188 | `result-track:5bfd04b43643d66c31a72e585413e3fdab595f7f2fd2aefd6c1f99d1137563d2` |
| 6 | `theorem` | [discr_odd_prime](../../../../mathematics/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/declarations/discr-odd-prime--8307a63839a4521fccd7b8db.md) | 201 | `result-track:8307a63839a4521fccd7b8db0f1c4185e2b8ed1eb82324bfeeaf3d9e0a8db95f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
