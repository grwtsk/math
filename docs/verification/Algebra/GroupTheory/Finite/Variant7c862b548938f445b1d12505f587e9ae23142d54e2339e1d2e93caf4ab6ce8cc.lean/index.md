# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a83834125e3b5f09568e3c123f8b234b790a3c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a83834125e3b5f09568e3c123f8b234b790a3c`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeOfKerLeRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/declarations/fintypeofkerlerange--caa149ed0de89da30a590d2c.md) | 40 | `declaration-track:caa149ed0de89da30a590d2c60c636ddb66a0e3fb28c6d37a5cdef7cf61046a6` |
| 2 | `def` | [fintypeOfKerEqRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/declarations/fintypeofkereqrange--41c9503194c9c08641a3e536.md) | 49 | `declaration-track:41c9503194c9c08641a3e536e2e08a91f9b7110ef253bd21d9c7a5a8b2b6903b` |
| 3 | `def` | [fintypeOfKerOfCodom](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/declarations/fintypeofkerofcodom--9e2c1f2f947b3202ff875d5f.md) | 55 | `declaration-track:9e2c1f2f947b3202ff875d5ff9e0809d5891ead740b7a686b784ecbe8bcd1d5d` |
| 4 | `def` | [fintypeOfDomOfCoker](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/declarations/fintypeofdomofcoker--11834f1698fba32cd810b8d9.md) | 62 | `declaration-track:11834f1698fba32cd810b8d9e864f4a00864cb9f5a93a6f9469bb81e043bc889` |
| 5 | `lemma` | [finite_iff_subgroup_quotient](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/declarations/finite-iff-subgroup-quotient--95fff1908407b3c645543db0.md) | 68 | `result-track:95fff1908407b3c645543db016a23d15dbda80e43449f9ec42e7dc9e54b4a74d` |
| 6 | `lemma` | [Finite.of_subgroup_quotient](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc.lean/declarations/finite-of-subgroup-quotient--dc11b429c34966ea8aa63966.md) | 72 | `result-track:dc11b429c34966ea8aa639666f6183635bad4354278704ad14db7f212a59bec3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
