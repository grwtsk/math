# Verification target: GRWTSK.Algebra.Complement.Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b01a7cd5d34b0c0a48d656e2c53c042615fbc226",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean/index.md) · [Full source](../../../../mathematics/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b01a7cd5d34b0c0a48d656e2c53c042615fbc226`.

Source path: `GRWTSK/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Absorption` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complement_unique](../../../../mathematics/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean/declarations/complement-unique--a84f5f6cfdb005e8cc076498.md) | 14 | `result-track:a84f5f6cfdb005e8cc076498106082adac5a19c33183e23b650403f0cfebedf9` |
| 2 | `theorem` | [complement_involutive](../../../../mathematics/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean/declarations/complement-involutive--9210ce213a6c9bb2b41c5477.md) | 20 | `result-track:9210ce213a6c9bb2b41c5477fac6f27210b20f0b3ebc7c067a8a41a1cb850078` |
| 3 | `theorem` | [complement_join_eq_meet](../../../../mathematics/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean/declarations/complement-join-eq-meet--1721e233466b6c9a85c6c016.md) | 23 | `result-track:1721e233466b6c9a85c6c0164169b92ecb6d131a55b53ff21c2e4dce87171d9a` |
| 4 | `theorem` | [complement_meet_eq_join](../../../../mathematics/Algebra/Complement/Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799.lean/declarations/complement-meet-eq-join--0c49f68e7bd8eca15de7124e.md) | 27 | `result-track:0c49f68e7bd8eca15de7124e17603b4d54110e86bae60ca924f77d51aed6ac9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
