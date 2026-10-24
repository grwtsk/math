# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f54b18e0463bf0ee7029e391426b1112a4d87c40",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f54b18e0463bf0ee7029e391426b1112a4d87c40`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean.json)

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
| 1 | `def` | [fintypeOfKerLeRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/declarations/fintypeofkerlerange--9777348d69bc8eef3c5cd9f3.md) | 32 | `declaration-track:9777348d69bc8eef3c5cd9f3a58b49916477937ec6d5f25edd8f4ab061af95dd` |
| 2 | `def` | [fintypeOfKerEqRange](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/declarations/fintypeofkereqrange--aa82efa66ef3332f600e6d6c.md) | 41 | `declaration-track:aa82efa66ef3332f600e6d6cdd90534ecf409aa9cb393a1d1254ab79b3e61aea` |
| 3 | `def` | [fintypeOfKerOfCodom](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/declarations/fintypeofkerofcodom--a7a197c7f354112063b6c05f.md) | 47 | `declaration-track:a7a197c7f354112063b6c05f5f3486da05bc0a590d8b1f05cba6714595041b1d` |
| 4 | `def` | [fintypeOfDomOfCoker](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/declarations/fintypeofdomofcoker--37a6036b57510038681c8b66.md) | 54 | `declaration-track:37a6036b57510038681c8b66f0392efbdc0e39decb1114025bd705ad05b26f23` |
| 5 | `lemma` | [finite_iff_subgroup_quotient](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/declarations/finite-iff-subgroup-quotient--7ecb218ab3720aee8a100b17.md) | 60 | `result-track:7ecb218ab3720aee8a100b1772a9f67d1a8f1a2641779d39f0a2487970f9f65f` |
| 6 | `lemma` | [Finite.of_subgroup_quotient](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2.lean/declarations/finite-of-subgroup-quotient--8c39184d5f38db67e6fea52a.md) | 64 | `result-track:8c39184d5f38db67e6fea52a38b9686663795632e905c5fcdbb6a7402df1fce5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
