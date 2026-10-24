# Verification target: GRWTSK.Algebra.Associator.Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6ddcfafaeca1155e49c79eebe9c474d8a7e5de6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6ddcfafaeca1155e49c79eebe9c474d8a7e5de6`.

Source path: `GRWTSK/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [associator](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator--16167fabd70cd56ebb6125d9.md) | 36 | `declaration-track:16167fabd70cd56ebb6125d97f0456dca4f5e1123fb291a2f748fd979dc93f39` |
| 2 | `theorem` | [associator_apply](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-apply--7ef2df6575c88f43e8520c07.md) | 38 | `result-track:7ef2df6575c88f43e8520c0720ba7c5d73cba8be9ea0864cd9afe819fb6f620a` |
| 3 | `theorem` | [associator_eq_zero_iff_associative](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-eq-zero-iff-associative--becd5d1cbe890542b6146520.md) | 40 | `result-track:becd5d1cbe890542b61465206d1d8440d99df25645a6606bd6a02f4c581e45e9` |
| 4 | `theorem` | [associator_cocycle](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-cocycle--91c9d07edc2f2308505f5ddc.md) | 45 | `result-track:91c9d07edc2f2308505f5ddc0b860e288783308b3cfb3bfac8bf01203b63ce59` |
| 5 | `theorem` | [associator_eq_zero](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-eq-zero--961e71c7dda8d5f991301ebf.md) | 57 | `result-track:961e71c7dda8d5f991301ebff4afbe8c2ebfe73ae2d057fcec66db7b507cfa0d` |
| 6 | `def` | [mulLeft₃](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/mulleft--4572a7ed8fee78bf90497d05.md) | 70 | `declaration-track:4572a7ed8fee78bf90497d05d82ea2e17ed78e3e115edb87869e98a92cf3fb79` |
| 7 | `theorem` | [mulLeft₃_apply](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/mulleft-apply--48ad8772e2215b00e0e7d30c.md) | 76 | `result-track:48ad8772e2215b00e0e7d30cdc060f6cd4a14ae781d3afa686305c5a221ec024` |
| 8 | `def` | [mulRight₃](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/mulright--7c7e4cb4be7b4ff6a3323c1d.md) | 80 | `declaration-track:7c7e4cb4be7b4ff6a3323c1dc7125e354dca409c711ece0486489daa1a127492` |
| 9 | `theorem` | [mulRight₃_apply](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/mulright-apply--9c3ba7ee7eff5c3f1571641f.md) | 86 | `result-track:9c3ba7ee7eff5c3f1571641febc9bb8447800a8639089983e3eb7cb4c53ff928` |
| 10 | `theorem` | [mulLeft₃_eq_mulRight₃_iff_associative](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/mulleft-eq-mulright-iff-associative--c6213c3fc97b4ceebe64fb42.md) | 90 | `result-track:c6213c3fc97b4ceebe64fb4203dfd4d7d781d43d8932c57fa15792b494f7f045` |
| 11 | `theorem` | [mulLeft₃_eq_mulRight₃](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/mulleft-eq-mulright--e979695edc2cf1928a6f6064.md) | 100 | `result-track:e979695edc2cf1928a6f60641b8c03ab3695eab935afd26ab7aa5831220b45fc` |
| 12 | `def` | [associator](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator--46f717314a97fac98ec1b088.md) | 110 | `declaration-track:46f717314a97fac98ec1b088342ea15921f42691e0be54388961bfa17c5fe80c` |
| 13 | `theorem` | [associator_apply](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-apply--fe357242f0e4044455cec7b7.md) | 113 | `result-track:fe357242f0e4044455cec7b73ea78413163ebc9f3a228cd132301e3e91c97571` |
| 14 | `theorem` | [associator_eq_zero_iff_associative](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-eq-zero-iff-associative--940255681c19a94cf0d2c40b.md) | 117 | `result-track:940255681c19a94cf0d2c40b4a7910eff36adba67ed1a2da938d9c6141b7da00` |
| 15 | `theorem` | [associator_eq_zero](../../../../mathematics/Algebra/Associator/Variant1e8647d115bec3fefd9b9b208ef13b3306227d9abf7775df6b766156dfdbe1f9.lean/declarations/associator-eq-zero--6f45a114da14c623fab47a6f.md) | 127 | `result-track:6f45a114da14c623fab47a6ffb481262f56a27f439f5b9356606bc8820591cef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
