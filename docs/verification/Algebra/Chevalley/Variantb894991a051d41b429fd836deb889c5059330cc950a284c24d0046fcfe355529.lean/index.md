# Verification target: GRWTSK.Algebra.Chevalley.Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e9df4dd23c814a3bfa0e50971516b302edcb04",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean/index.md) · [Full source](../../../../mathematics/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e9df4dd23c814a3bfa0e50971516b302edcb04`.

Source path: `GRWTSK/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingDown` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.ChevalleyComplexity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isConstructible_comap_C](../../../../mathematics/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean/declarations/isconstructible-comap-c--53d3a49725aedead194f8053.md) | 23 | `result-track:53d3a49725aedead194f8053c8a5ddedb3755c259245e96d4f2cfc835854b150` |
| 2 | `lemma` | [isConstructible_comap_image](../../../../mathematics/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean/declarations/isconstructible-comap-image--ef4d81c7897a20e763a5f965.md) | 33 | `result-track:ef4d81c7897a20e763a5f9657601de9383b3762b7747e6e7a32af22b59a1b7ab` |
| 3 | `lemma` | [isConstructible_range_comap](../../../../mathematics/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean/declarations/isconstructible-range-comap--f76053d86f2e13984929de23.md) | 49 | `result-track:f76053d86f2e13984929de23140b3e9c41b61f3d5f5cb93a88e520c36a6e8b2b` |
| 4 | `lemma` | [isOpenMap_comap_of_hasGoingDown_of_finitePresentation](../../../../mathematics/Algebra/Chevalley/Variantb894991a051d41b429fd836deb889c5059330cc950a284c24d0046fcfe355529.lean/declarations/isopenmap-comap-of-hasgoingdown-of-finitepresentation--f020c5d4fc109d0b90bfc0e5.md) | 54 | `result-track:f020c5d4fc109d0b90bfc0e53ac0ec3621393f061209a45c0c86ce31c1722375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
