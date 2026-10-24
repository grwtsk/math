# Verification target: GRWTSK.Algebra.Pi.Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab45da1545e88f5e8dec07a18c35c20aa4b14cf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab45da1545e88f5e8dec07a18c35c20aa4b14cf`.

Source path: `GRWTSK/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Idempotents` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_pi](../../../../mathematics/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean/declarations/of-pi--e9c825009974d9e7ca8b2965.md) | 27 | `result-track:e9c825009974d9e7ca8b296593847f8c99d1ec32bd45a2a1d888554ec9f23e39` |
| 2 | `theorem` | [pi_iff](../../../../mathematics/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean/declarations/pi-iff--1f2f981fb514225aaa450451.md) | 47 | `result-track:1f2f981fb514225aaa4504516d12a4e00e76f31a31dbe3a4defa33d0bb8253a0` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pi/Variant922250c582331d1e489f67a07cac3f298f6a22a3dce6e1f6f913c1aef0bfcbab.lean/declarations/instance--5464904ba9e1fd477abad3e9.md) | 121 | `declaration-track:5464904ba9e1fd477abad3e9a7ef2dc7fdff449a0d9dbc3dab9052e2d16dd777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
