# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97b86fc80c3875f478a9c7f8d791397e40db0153",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97b86fc80c3875f478a9c7f8d791397e40db0153`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.CompleteLattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mono_outerMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/mono-outermeasure--345efaba108ef7db0af9800e.md) | 24 | `result-track:345efaba108ef7db0af9800e7803a1aed72dc6816ba7b57b1c36f6d97fe87194` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/example--82a64246a17c0b940d636075.md) | 25 | `declaration-track:82a64246a17c0b940d636075851688cdd75d59b2298045a2c728b9514fe0d810` |
| 3 | `lemma` | [mono_measure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/mono-measure--f669fffda4f98201b24e0f3b.md) | 29 | `result-track:f669fffda4f98201b24e0f3be0c83a1593c023824586674f29a7c490a85ffe25` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/example--eab8a1cfe3b0a18e071ed651.md) | 30 | `declaration-track:eab8a1cfe3b0a18e071ed65108c8bb3ee654f968b856c4f6d45248efb7ab49fc` |
| 5 | `axiom` | [myAdd](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/myadd--46207d007a944fa04103a96d.md) | 40 | `declaration-track:46207d007a944fa04103a96d13d417e45e6f441527b1dca8f18500b1d938732d` |
| 6 | `axiom` | [rel](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/rel--65f59b962bfdb3ed37f1fee5.md) | 42 | `declaration-track:65f59b962bfdb3ed37f1fee518438d02516284bb269ea72f141dd1016c3bdf13` |
| 7 | `axiom` | [myAdd_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/myadd-mono--0859a9910db1b56fba4b18f7.md) | 48 | `declaration-track:0859a9910db1b56fba4b18f763049f2dc5d396ab001fd65118d74fd6cee4224c` |
| 8 | `axiom` | [myAdd_rfl](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/myadd-rfl--4809d2334714d0891959840a.md) | 50 | `declaration-track:4809d2334714d0891959840aab349ab602003a3b7a37f45ff23a831892c32a3b` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/example--d64f489d41225f35017bfdb6.md) | 65 | `declaration-track:d64f489d41225f35017bfdb6d7c88be039aad304e886087862badb90d19eee82` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/example--65a963b05bd6e80abb8ebb90.md) | 77 | `declaration-track:65a963b05bd6e80abb8ebb90e247ed24a4bb97dd644fd890f81d39370e59faaa` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/example--9c6d53fad7a219f97bb628e1.md) | 82 | `declaration-track:9c6d53fad7a219f97bb628e1736ba1a24b479e728c1aff6fb9dd8446173ffc04` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/example--8a383f2d2c123e663c952e24.md) | 85 | `declaration-track:8a383f2d2c123e663c952e24df1d990cf00e0eb8ee9832101b6a2d58cb5b6e6b` |
| 13 | `axiom` | [foo](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/foo--c5a8f2404756bb3592ff4102.md) | 92 | `declaration-track:c5a8f2404756bb3592ff41027c109da16e9d225816b2e8f1d2cfa6a0a44c77bc` |
| 14 | `axiom` | [foo_mono_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/foo-mono-iff--4e622667556b6e7fd95b2d40.md) | 94 | `declaration-track:4e622667556b6e7fd95b2d40c5012a5bfd628485df9682e5028f8ac4285fc74a` |
| 15 | `axiom` | [foo_mono_iff_rev](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/foo-mono-iff-rev--2fb4bfab7baf91370abb5d67.md) | 97 | `declaration-track:2fb4bfab7baf91370abb5d671ae7eea3fd602d786c855b25615bc0a1b8239b93` |
| 16 | `axiom` | [foo_monotone](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/foo-monotone--b48f9e8e6950b1e023685892.md) | 100 | `declaration-track:b48f9e8e6950b1e0236858922d6b8ca7149c209b8b7d49028a7552231753d559` |
| 17 | `axiom` | [foo_mono_rev](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa.lean/declarations/foo-mono-rev--a13c5a8504c4c8fee90e2268.md) | 103 | `declaration-track:a13c5a8504c4c8fee90e2268fd1798d6bc2298901d3177d1e7b860fc4b83f36e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
