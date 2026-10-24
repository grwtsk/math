# Verification target: GRWTSK.Algebra.LinearAlgebra.Star.Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd63d9ea4a37109ea3d1d5bfc23b21736f236b70",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd63d9ea4a37109ea3d1d5bfc23b21736f236b70`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instStarRing](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/declarations/inststarring--f830220066923b1119861d72.md) | 40 | `declaration-track:f830220066923b1119861d7220c961b9fb233cf8e3876ab1d804a9af028c1712` |
| 2 | `theorem` | [star_def](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/declarations/star-def--5b13f0e11f17cf7abe404086.md) | 47 | `result-track:5b13f0e11f17cf7abe404086558fb909fffbcf57722ac392b51a081a4e004356` |
| 3 | `theorem` | [star_def'](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/declarations/star-def--172a484ef73c6e89341e587f.md) | 50 | `result-track:172a484ef73c6e89341e587f4d7ffc1cb0abebbaae0e3de951bb930785cebef7` |
| 4 | `theorem` | [star_ι](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/declarations/star--a4e98f8b8684d23fb2869419.md) | 54 | `result-track:a4e98f8b8684d23fb2869419a0e53871d5de5475d50022c24c12836f3eff582b` |
| 5 | `theorem` | [star_smul](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/declarations/star-smul--b2b115d9c94d6bff31169013.md) | 60 | `result-track:b2b115d9c94d6bff31169013419a70ce208211c7e22550d3fd4224c20f88eb8c` |
| 6 | `theorem` | [star_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Star/Varianta4d5c88c1cf7ea199ec225d24ef1829aa3b696dd213734e84e14016524101c8e.lean/declarations/star-algebramap--d0d91911db18c6631cc65c64.md) | 64 | `result-track:d0d91911db18c6631cc65c64e710ca3a6a681075e652ce8067bf0e5af3a13c57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
