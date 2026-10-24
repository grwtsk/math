# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.EulerPhi.Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7a2049c5cb4dd72ba3eda569e43444aa3435add",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7a2049c5cb4dd72ba3eda569e43444aa3435add`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eulerPhi](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/declarations/eulerphi--c22a6a538ed30847289610cf.md) | 22 | `declaration-track:c22a6a538ed30847289610cf6502a13849dce2c7998d51055296c9eed6571324` |
| 2 | `theorem` | [eulerPhi_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/declarations/eulerphi-one--351c0d281aeff034216c7168.md) | 25 | `result-track:351c0d281aeff034216c716811f11a235a05e6593c7fd0477c155ee8ee417f58` |
| 3 | `theorem` | [eulerPhi_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/declarations/eulerphi-prime--708cf6edafc6e0c9f99b0bfa.md) | 29 | `result-track:708cf6edafc6e0c9f99b0bfa74ef05131f6e65d52264306151f471f86d8ae7f5` |
| 4 | `theorem` | [eulerPhi_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/declarations/eulerphi-prime-power--4cfe23249b4aa80e640ecf35.md) | 35 | `result-track:4cfe23249b4aa80e640ecf3596efbe78fd6485bf55fb4283c41eb0dd66ff0aed` |
| 5 | `theorem` | [eulerPhi_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d.lean/declarations/eulerphi-mul-of-coprime--0cd45d2643ac10412d1da41f.md) | 52 | `result-track:0cd45d2643ac10412d1da41ff3c1a998b451fb76842580701a91249e21f573f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
