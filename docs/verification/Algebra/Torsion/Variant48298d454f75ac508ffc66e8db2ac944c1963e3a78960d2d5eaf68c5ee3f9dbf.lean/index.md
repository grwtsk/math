# Verification target: GRWTSK.Algebra.Torsion.Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1156f9d9626d551065f68791aa893a86e2bb868a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1156f9d9626d551065f68791aa893a86e2bb868a`.

Source path: `GRWTSK/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.EllipticCurve` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nsmulPoint](../../../../mathematics/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean/declarations/nsmulpoint--178724d34a31793529875a87.md) | 19 | `declaration-track:178724d34a31793529875a87d118108d2272581599f39109346560b77e3ef071` |
| 2 | `def` | [IsTorsion](../../../../mathematics/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean/declarations/istorsion--2d317a2636958d78fb383b20.md) | 26 | `declaration-track:2d317a2636958d78fb383b20123bba0781fce5842c8deb1a0d1348d6d6009b2a` |
| 3 | `def` | [HasOrder](../../../../mathematics/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean/declarations/hasorder--99aa93d220e307e9a4e5573f.md) | 32 | `declaration-track:99aa93d220e307e9a4e5573f5977f7464c8a1e7dbdd7b1c56f5f9e689e381780` |
| 4 | `theorem` | [torsion_of_hasOrder](../../../../mathematics/Algebra/Torsion/Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf.lean/declarations/torsion-of-hasorder--a96443510e5ea65b18933ae5.md) | 40 | `result-track:a96443510e5ea65b18933ae59641a6b000a2dc33eb8a63c48c71104647ad939e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
