# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierSchwartz.Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43d509a74d78fee04bd0e10bb87644948952c72c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43d509a74d78fee04bd0e10bb87644948952c72c`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierTransformCLM](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/declarations/fouriertransformclm--2f8e36420635b3e3c26bbe14.md) | 39 | `declaration-track:2f8e36420635b3e3c26bbe14239dfc79c4ff3b009cfba368375a378bdc4bcc6d` |
| 2 | `lemma` | [fourierTransformCLM_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/declarations/fouriertransformclm-apply--0d2839169a1287b1bd59f73c.md) | 86 | `result-track:0d2839169a1287b1bd59f73cb3e104e04524fff84b5a7fcb2563112bc4e880ff` |
| 3 | `def` | [fourierTransformCLE](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/declarations/fouriertransformcle--24586dbb3961ad87ba09158a.md) | 93 | `declaration-track:24586dbb3961ad87ba09158a28125a804f5045a94ff087f3c7666d30149d0d65` |
| 4 | `lemma` | [fourierTransformCLE_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/declarations/fouriertransformcle-apply--9872e4920a60a7fcc58f2148.md) | 111 | `result-track:9872e4920a60a7fcc58f214873296991f64cdc49f41ed95999c0ab758513beaf` |
| 5 | `lemma` | [fourierTransformCLE_symm_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Variant188c3c3c02b7ab93e2bc0de721c161b18e87e57f8d46df905f142aff80f36dd1.lean/declarations/fouriertransformcle-symm-apply--a272a71ce157276d1ce7b57b.md) | 114 | `result-track:a272a71ce157276d1ce7b57b3debaf5dfd853ee6eec026bdbdf588707cd3375e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
