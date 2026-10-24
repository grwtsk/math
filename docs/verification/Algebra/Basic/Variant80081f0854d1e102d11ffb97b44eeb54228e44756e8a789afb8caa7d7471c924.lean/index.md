# Verification target: GRWTSK.Algebra.Basic.Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21a601127605b9d7808b1421804c4b6157110ac7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21a601127605b9d7808b1421804c4b6157110ac7`.

Source path: `GRWTSK/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Central.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [center_eq_bot](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/declarations/center-eq-bot--b47f30ec56cf4f0f0fea14a3.md) | 38 | `result-track:b47f30ec56cf4f0f0fea14a335b07e16c93d3c7bc39aeb0d3591270ea06b561a` |
| 2 | `lemma` | [mem_center_iff](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/declarations/mem-center-iff--8ba669513cc44f04c18dfcd4.md) | 41 | `result-track:8ba669513cc44f04c18dfcd42a846220010b13d24e85ae46a5fe86b67a31eb4d` |
| 3 | `instance` | [self](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/declarations/self--8bf6795c33062253808a57f8.md) | 45 | `declaration-track:8bf6795c33062253808a57f822b2c5f49a76c976c202547779a90113caad43a3` |
| 4 | `lemma` | [baseField_essentially_unique](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/declarations/basefield-essentially-unique--6b4c77000638792f4ab6f09e.md) | 48 | `result-track:6b4c77000638792f4ab6f09e03606e866194302a1903499df154f0215b9c9fd9` |
| 5 | `lemma` | [of_algEquiv](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/declarations/of-algequiv--7b6acb6f4b5308744dd74fe2.md) | 65 | `result-track:7b6acb6f4b5308744dd74fe2b55a9a64c6918c0728d1b8cd5f5a6cc9cc0ba3bb` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant80081f0854d1e102d11ffb97b44eeb54228e44756e8a789afb8caa7d7471c924.lean/declarations/instance--ccd1e2cf132eb4cec609e9d3.md) | 75 | `declaration-track:ccd1e2cf132eb4cec609e9d3b0ae70ddd991ed84807649d0fa7eb6b52b3e8a25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
