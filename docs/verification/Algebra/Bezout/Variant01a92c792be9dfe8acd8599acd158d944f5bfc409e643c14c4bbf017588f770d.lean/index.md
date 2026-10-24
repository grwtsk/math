# Verification target: GRWTSK.Algebra.Bezout.Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84a440e857a7cddf25d3b0f58a15107c0cfcf82f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84a440e857a7cddf25d3b0f58a15107c0cfcf82f`.

Source path: `GRWTSK/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_span_pair_isPrincipal](../../../../mathematics/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/declarations/iff-span-pair-isprincipal--4ce68c6fc267d481cf5868f8.md) | 36 | `result-track:4ce68c6fc267d481cf5868f8a428acaaa5e04055d0f758179391256d02425524` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70.Function.Surjective.isBezout](../../../../mathematics/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/declarations/root-grwtsk-algebra-iffspanpairisprincipal-variantcbf20c59f9686cc9e6b049--14c314d03b1396fa29d95d01.md) | 47 | `result-track:14c314d03b1396fa29d95d015cc22a204b3fb2cc6923d40abd0e881c2bbb5415` |
| 3 | `theorem` | [TFAE](../../../../mathematics/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/declarations/tfae--593498274299e1cb01ffdb2f.md) | 57 | `result-track:593498274299e1cb01ffdb2f86ffd0ddb52f522e6f6e83c59b3240aa072a8a2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
