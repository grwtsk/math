# Verification target: GRWTSK.Algebra.Locus.Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd89eaca430016271ee86302c833dcbd4fd65587",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd89eaca430016271ee86302c833dcbd4fd65587`.

Source path: `GRWTSK/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Etale.Kaehler` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/declarations/isunramifiedat--ff46f7ef9ab1ccfa5141ca71.md) | 44 | `declaration-track:ff46f7ef9ab1ccfa5141ca719eaeacedec81ed8569f30117f6aab2e179af7527` |
| 2 | `def` | [unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/declarations/unramifiedlocus--31dd738a34c50ca9889d9545.md) | 49 | `declaration-track:31dd738a34c50ca9889d9545b4bfcf0818776e79999ea40e1938c337342085bb` |
| 3 | `lemma` | [unramifiedLocus_eq_compl_support](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/declarations/unramifiedlocus-eq-compl-support--54e539927a034d1170080ba1.md) | 54 | `result-track:54e539927a034d1170080ba1e3dec76471750e9c948fcbeae1c7067bdf7750e6` |
| 4 | `lemma` | [basicOpen_subset_unramifiedLocus_iff](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/declarations/basicopen-subset-unramifiedlocus-iff--9286c2dcfe68760e62031b52.md) | 62 | `result-track:9286c2dcfe68760e62031b52810ae95af661639129021ad0019fb9cc68843ff4` |
| 5 | `lemma` | [unramifiedLocus_eq_univ_iff](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/declarations/unramifiedlocus-eq-univ-iff--ed687e19c01e352dc6572bce.md) | 71 | `result-track:ed687e19c01e352dc6572bce7615910eeb0c48e1108cf4318a2ca48d1e512fd2` |
| 6 | `lemma` | [isOpen_unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant2faf3058becfb9a4ced4ece77940a3902808c039c065b5f2f9fc2ff5a6525b63.lean/declarations/isopen-unramifiedlocus--2d5c37fca308c1a7b4774fa6.md) | 76 | `result-track:2d5c37fca308c1a7b4774fa63366e8362777b6f87823faed6b5041426f466b66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
