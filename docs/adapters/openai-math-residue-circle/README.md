# Opt-in OpenAI residue-circle and CM geometry source edition

[Adapter index](../README.md) · [Documentation index](../../index.md)

Local attribution: grwtsk contributors. Preserve OpenAI's original upstream authorship and Apache-2.0 terms. This is a separate provider **source candidate** configuration, not an accepted mathematical proof or an extra dependency of the root `GRWTSK` library.

The residue-circle research branch `f5966fb4c0e800464b5d0c3434396c76d24eaf66` cites `openai/math@4eaee87548250b2682affda7d05d947c05554bae`. This adapter pins that exact source edition (subdirectory `lean/`) and the existing Lean toolchain `leanprover/lean4:v4.34.1`. The upstream manifest and local root both specify Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The older [`docs/adapters/openai-math`](../openai-math) package remains pinned to `7ef5c0c` and is **not** upgraded or overwritten.

The 26 target modules are the remaining imported source candidates under `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/`, with their six predecessor modules already merged into `main`. The [adapter source links](GRWTSK/) resolve to the single canonical subject source; there is no vendor-source copy. The [opt-in Lake configuration](lakefile.toml) uses `srcDir = "../../.."` to locate the *complete checkout's* canonical subject files and shared GRWTSK imports without loading them into the root default build. This package must be used inside its repository checkout; it is not a standalone extracted archive.

The source-dependent imports include the actual CM rational cycle/Betti class comparison and degree-zero full-cycle unit, not abstract substitute data. Do not delete or replace these imports to obtain apparent compilation. OpenAI's two revision tags `7ef5c0c` and `4eaee87` have identical blobs for the five directly imported OAI source files, but upstream `ComparatorChallenges` changed between those revisions. Identical direct blobs **do not** establish transitive namespace/interface compatibility.

**Evidence state:** `SOURCE_PROOF_CANDIDATE`. No Lean compilation, expected-type checking, fresh kernel replay, native proof execution, or transitive axiom audit was performed for this integration. The [source manifest](sources.toml) pins the old branch's exact source blobs, toolchain and upstream dependency metadata; it does not certify an effective patched source tree. Outstanding upstream patched dependency and package materialization obligations remain tracked externally. Do not interpret these sources as proofs of RH, general Hodge statements, or physical-data fits.

To request a separately authorized source-bound verification, the intended opt-in target is `lake build GRWTSKResidueCircleOAI` from this adapter directory in a materialized checkout. This is an **unexecuted** target, not a receipt. The root `GRWTSK.lean`, root Lake manifest and Mathlib pin are untouched. See math PR #1651 and issue #1653.

Use the [MSC2020 source layout](../../taxonomy/msc2020/source-layout-v1.json)
to resolve current canonical paths from historical source locators in the manifest.
The manifest’s blob pins retain their original source scope after moves.
