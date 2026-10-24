# Verification target: GRWTSK.Algebra.UniversalAlgebra.PUnit.Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f782de45bd43d035dc14551795d5c68b9470cf7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f782de45bd43d035dc14551795d5c68b9470cf7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.PUnit` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [normalizedGCDMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean/declarations/normalizedgcdmonoid--f83335692d3b10124c77ba5c.md) | 27 | `declaration-track:f83335692d3b10124c77ba5cccba76d26ac9abb75cdeab693df7efdf71845f4c` |
| 2 | `theorem` | [gcd_eq](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean/declarations/gcd-eq--ba980276ba46c0e4fb90038a.md) | 44 | `result-track:ba980276ba46c0e4fb90038a7109a4e1b0150b45e3361da20f09de8979f66aeb` |
| 3 | `theorem` | [lcm_eq](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean/declarations/lcm-eq--b7413ef18588f71ce3832200.md) | 48 | `result-track:b7413ef18588f71ce38322005507b80b882f390c818342caa4774bba4204c379` |
| 4 | `theorem` | [norm_unit_eq](../../../../../mathematics/Algebra/UniversalAlgebra/PUnit/Variant45025d00acc15c5ea1a9db44e80595c604182c0112f2edca0826a0e5afe1ca3e.lean/declarations/norm-unit-eq--fdee2ffa478688c7621f61c0.md) | 52 | `result-track:fdee2ffa478688c7621f61c04e80e5546081d62a4243a91e2202418a55b69605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
