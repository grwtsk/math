# Native Alpöge \`Gm\` transport — isolated source adapter

This directory contains an **isolated Lean candidate** compiled only against
the independently pinned Alpöge source environment, not against the default
\`grwtsk/math\` Lean 4.34.1/Mathlib revision. The adapter is mathematically
RH-independent: it imports the genuine **intermediate** \`CoreGm.lean\` and
\`Window.lean\` modules, not \`Main\`, \`FinalTheorems\`, \`everyCharacter\`
or \`RiemannHypothesis\`.

**Source pin:** \`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\`.
Original \`lean/lean-toolchain\`: \`leanprover/lean4:v4.33.1\`;
\`lean/lakefile.toml\` Mathlib:
\`0df444a360eaa60ab8c11dca51a86af692955474\`.
Intermediate \`CoreGm.lean\` Git blob:
\`3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d\`.
Native \`Window.lean\` Git blob:
\`099d96fec932b03a505ea79a81c45bcc3fbf0ea3\`.

The two Lean declarations in [Bridge.lean](Bridge.lean) consume
**exact native types**:

\`\`\`text
EAtH Λ H.toHostRaw TT x eps C
CoreAtH H.toHostRaw TT eD eL K cHH eK eps x
Λ.Gm x
Formalism.HC.HasWindows
\`\`\`

The first theorem transports the genuine \`UpperTheory.Comparison₂.core_gm\`
bound to a single observed arithmetic value under an explicitly certified
source error and an exponent margin. The second transports original
closed \`HasWindows\` through an eventually valid source error/margin
inequality, using the original source theorem \`HasWindows.mono\`.

**Nothing here proves \`EAtH\` or \`CoreAtH\`.** Their actual \`Frame\`,
\`HostAx\`, conductor and auxiliary estimates remain intact. The
observation's equality to the locally constructed
\`GRWTSK.NumberTheory.AlpogeGmArithmeticReturn.sourceGm\`
needs an independent *cross-edition source normalization lemma*; that
lemma cannot be proved by importing incompatible Mathlib environments
together. In particular the \`L'/L(1,χ)\` term must be retained and
nonprincipal characters must be preserved exactly.

### Reproducible separate verification (NOT_RUN here)

In a disposable, complete checkout of the upstream pin with its own
Lean/Lake and Mathlib dependencies installed:

\`\`\`sh
cd /path/to/tamnd-riemann-lean/lean
lake build Development.AutomorphicArithmetic.PrimitiveCosets.CoreGm
lake env lean --trust=0 /path/to/grwtsk-math/docs/adaptations/environments/alpoge-gm-native/Bridge.lean
\`\`\`

For an axiom audit, first place the file at the corresponding
\`src/GRWTSK/NumberTheory/AlpogeNativeGmTransport.lean\` module path in
a disposable copy of the upstream build and import it from an isolated
\`/tmp/NativeBridgeAxioms.lean\`:

\`\`\`lean
import GRWTSK.NumberTheory.AlpogeNativeGmTransport
#print axioms GRWTSK.NumberTheory.AlpogeNativeGmTransport.observed_gm_upper_of_native_suppliers
#print axioms GRWTSK.NumberTheory.AlpogeNativeGmTransport.observed_gm_windows_of_native_windows
\`\`\`

Do not add this bridge to the default \`grwtsk/math\` build or
change the root dependency pin. No Lean compiler, elaboration receipt,
kernel replay or axiom audit is available from the current environment:
**NOT_RUN**. Every theorem here is a **SOURCE_PROOF_CANDIDATE**, not an
accepted checked theorem. This is a typed interface advance, not an
independent proof of a new \`Gm\` bound or RH.

Mathematical consumer: [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850),
related source [#1849](https://github.com/grwtsk/math/issues/1849).
