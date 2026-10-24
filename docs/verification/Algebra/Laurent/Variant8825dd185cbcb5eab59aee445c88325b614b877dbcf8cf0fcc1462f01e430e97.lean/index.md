# Verification target: GRWTSK.Algebra.Laurent.Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf7ccf8a6e9eebd52ca64f745dea1c073310aca5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/index.md) · [Full source](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf7ccf8a6e9eebd52ca64f745dea1c073310aca5`.

Source path: `GRWTSK/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc.AsPolynomial` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taylor_mem_nonZeroDivisors](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/taylor-mem-nonzerodivisors--60224ba53cd9d28db98cf873.md) | 45 | `result-track:60224ba53cd9d28db98cf873aa04938411376808475e51ef1b5d8c2d12acbe65` |
| 2 | `def` | [laurentAux](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurentaux--dc25a7a3ded68c50d0b779e6.md) | 55 | `declaration-track:dc25a7a3ded68c50d0b779e6b6b681a4a301a0bb147ed87d61782bca3ce8026f` |
| 3 | `theorem` | [laurentAux_ofFractionRing_mk](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurentaux-offractionring-mk--00f340500d877af52b5b2620.md) | 64 | `result-track:00f340500d877af52b5b2620a79d9f9de9a332801922375f96370719694901e9` |
| 4 | `theorem` | [laurentAux_div](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurentaux-div--e154f382c51760984f306f7c.md) | 71 | `result-track:e154f382c51760984f306f7cfba9de433371ce39dc287a53a29f4b1b43a19cfa` |
| 5 | `theorem` | [laurentAux_algebraMap](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurentaux-algebramap--b6be7d4c2ea65729638bf682.md) | 78 | `result-track:b6be7d4c2ea65729638bf682bdb5f64580fdcaea14140d0c8eab940644c412ed` |
| 6 | `def` | [laurent](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent--2703e9c9c13d573e20a4baba.md) | 82 | `declaration-track:2703e9c9c13d573e20a4baba6d7ab4637ef78dfb0d5ca3829b741e75587d9c2e` |
| 7 | `theorem` | [laurent_div](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-div--7cbb309b3c9d47407f5b3c4c.md) | 86 | `result-track:7cbb309b3c9d47407f5b3c4c39b37a3b23dc05d266e137dc187ce9ffa6968d82` |
| 8 | `theorem` | [laurent_algebraMap](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-algebramap--c14e2ab202ee0385e981f716.md) | 92 | `result-track:c14e2ab202ee0385e981f716773162ee806f7b91903eb69168d93ba185089239` |
| 9 | `theorem` | [laurent_X](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-x--b576f2c02d8265a9c97e2e84.md) | 96 | `result-track:b576f2c02d8265a9c97e2e8425b66ce98ced448c9fad9bc793a12c73b7c44184` |
| 10 | `theorem` | [laurent_C](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-c--629ec1970d84821a96727186.md) | 100 | `result-track:629ec1970d84821a967271864d7489bce3854904bb8ef329a3391be74fdf11d8` |
| 11 | `theorem` | [laurent_at_zero](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-at-zero--4c1804fdf29a6ef548fcbbca.md) | 104 | `result-track:4c1804fdf29a6ef548fcbbcad1a19b9a1e3415aa4021b711fa3934c28a35457c` |
| 12 | `theorem` | [laurent_laurent](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-laurent--e884d68e53deba21c884a8ad.md) | 106 | `result-track:e884d68e53deba21c884a8ad885e205a2fbbb74e4d39855a975eee4499ea6161` |
| 13 | `theorem` | [laurent_injective](../../../../mathematics/Algebra/Laurent/Variant8825dd185cbcb5eab59aee445c88325b614b877dbcf8cf0fcc1462f01e430e97.lean/declarations/laurent-injective--e15871b9bba1f942d17ff23e.md) | 110 | `result-track:e15871b9bba1f942d17ff23ea7edff00d73b7b1b62ee4c633cb3f805f71b8816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
