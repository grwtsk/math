# Source-exact physical two-bit Möbius observer and complete signed Gram readout

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01.
Classification: complete elementary mathematical encoding and exact source comparisons; Lean SOURCE_PROOF_CANDIDATE; physical hardware experiment NOT_CONSTRUCTED; analytic RH long-gap cancellation OPEN.

## 1. Problem, original sources, and the critical physical admissibility correction

The original GRWTSK.RiemannHypothesis.CCC source is the actual arithmetic function
\[
\mu(n)=\mathrm{ArithmeticFunction.moebius}(n)\in\{-1,0,1\},
\]
with the complete signed pickup kernel
\[
K_T(m,n)=\mu(m)\mu(n)\,\mathrm{pickupResponseGram}(T,m,n).
\]
The complete \`pickupCross T\` is the double sum over the original integer inventory \(1\le m,n\le\lfloor e^T\rfloor\), excluding \(m=n\) and retaining BOTH pair orientations. Existing elliptic ports preserve a different, source-certified local trace, and their full signed source-minus-trace defect remains indispensable. No elliptic trace, positive spatial Gram, or colored residue can be substituted for \(\mu\) without such an explicit comparison.

The previous \`PhysicalBitPrimeObserver.lean\` defined the sign of the observer timelike covector \(\operatorname{sign}(g(u,v))\) as a generic Boolean measurement. However, for future-directed timelike physical vectors \(v\) relative to a future-directed unit observer \(u\), \(g(u,v)<0\); this particular sign cannot distinguish two ordinary future-timelike signal states. Simply taking \(u\) and \(-u\) would distinguish future from past orientation and is not an admissible physical signaling model. This increment explicitly **corrects** that attempted codec by keeping the SAME observer-timelike component but reading the observer's transverse SPATIAL polarization sign \(\operatorname{sign}(\theta_1(v))\). Both states are then future-directed timelike mathematical tangent vectors.

The original Gödel physical source is the actual Lorentzian metric and its source-defined isometry
\[
(t,x,y,z)\mapsto(t,x+s,e^{-s}y,z),\qquad
\mathrm{shiftTangent}_s(v)=(v_t,v_x,e^{-s}v_y,v_z).
\]
The original \(\theta_1(v)=a v_x\) is preserved exactly under that shift, as are the complete spatial metric, observer covector and vorticity in their original source scopes. This is a genuine geometrical transport, but NOT a physical hardware bit channel until actual operational measurements are supplied.

## 2. Actual two-bit future-directed timelike encoding

Let \(p\) be the existing \`GodelObserverMetricVorticity.Parameters\`, with \(a=p.scale>0\), \(\beta=p.beta\), \(\beta^2<1\), and \(\gamma=(1-\beta^2)^{-1/2}\). Let
\[
u=\mathrm{boostedObserver}(p)
  =(\gamma/a,\,0,\,0,\,\gamma\beta/a)
\]
in tangent coordinates \(t,x,y,z\). For \(b\in\{\mathrm{false},\mathrm{true}\}\), choose
\[
v_b=
\left(\gamma/a,\,
       \frac{\sigma_b}{2a},\,
       0,\,
       \gamma\beta/a\right),\qquad
\sigma_{\mathrm{false}}=-1,\quad
\sigma_{\mathrm{true}}=1.
\]
This is the actual new \`polarizationState p b\`, not a finite-field element, phase code or past-directed observer. By substitution in the original metric and coframe,
\[
\theta_1(v_b)=\frac{\sigma_b}{2},\quad
g(u,v_b)=-1,\quad
g(v_b,v_b)=-\frac34,\quad
h(v_b,v_b)=\frac14.
\]
Both are genuinely timelike and share the same future orientation relative to \(u\), while the observer transverse sign \(\mathrm{polarizationBit}(p,v_b)=\operatorname{decide}(0\le\theta_1(v_b))\) returns exactly \(b\). For the ORIGINAL chart isometry,
\[
\mathrm{polarizationBit}(p,\mathrm{shiftTangent}_s(v))
  =\mathrm{polarizationBit}(p,v),
\]
and therefore it transmits both bits without changing the physical encoded observation. Existing \`BitTransfer\` is reused as \`polarizationTransfer\`; the new source neither replaces the prior observer nor adds a competing port calculus.

The original Möbius function genuinely has three values. Pinned Mathlib's \`ArithmeticFunction.moebius_eq_or n\` gives \(\mu(n)=0\vee\mu(n)=1\vee\mu(n)=-1\), and source fixtures \(\mu(1)=1,\mu(2)=-1,\mu(4)=0\) demonstrate all three. A single Bool cannot injectively represent three distinct integers; the theorem \`no_one_bit_three_values\` proves the collision obstruction for arbitrary one-bit encoders/readers. The record therefore uses TWO observed bits:

- presence = decide(\(\mu(n)\ne0\));
- negative = decide(\(\mu(n)=-1\)).

The decoding rule is
\[
\mathrm{decode}(b_{\rm present},b_{\rm negative})=
\begin{cases}
0,&b_{\rm present}=\mathrm{false},\\
-1,&b_{\rm present}=\mathrm{true},b_{\rm negative}=\mathrm{true},\\
1,&b_{\rm present}=\mathrm{true},b_{\rm negative}=\mathrm{false}.
\end{cases}
\]
The fourth combination decodes to 0 and is never needed for a genuine \(\mu=-1\) record. In \`PhysicalBitRecord\`, the original integer index \(n\) stays attached to the two real tangent states. By three-case analysis of the genuine Mathlib Möbius theorem and the two exact \(\theta_1\) reads, the original \(\mu(n)\) is recovered exactly at every source index. The existing shift transfers both tangents and retains their source index, so the recipient reads exactly the same \(\mu(n)\) after a chart change.

**Critical noncircularity boundary:** the *encoder itself reads the original \(\mu(n)\)* to select the physical states. The codec therefore shows existence and exact fidelity of a mathematical representation; it does NOT independently compute the Möbius function from geometry, prove a physical device exists, or create new arithmetic cancellation. The geometric shift preserves a known encoding, not the truth of RH.

## 3. Arbitrary incomplete or mislabeled physical stream, with no lost signed source

The additional \`PhysicalStream\` maps each original integer \(n\) into an \`Option PhysicalBitRecord\`. The option may be none (no received state). Even when some record is present, its stored original index must equal the queried \(n\); a mismatched record is treated as an unaccepted reading. The resulting \`observedCoeff(p,chart,stream,n)\in\mathbb R\` equals the decoded integer on a matching record and zero otherwise. That is an **observer readout convention**, NOT a theorem that the true missing Möbius coefficient vanishes.

The actual signed readout kernel is
\[
\widehat K_T(m,n)=
c_{\rm obs}(m)c_{\rm obs}(n)\,
\mathrm{pickupResponseGram}(T,m,n),
\]
with the SAME original \(m,n,T\) and genuine response integral. The full source packet is the sum over the original integer inventory with \(m\ne n\), retaining both orientations. Define the complete signed defect by the exact original-minus-physical double sum
\[
D_{\rm readout}(T)=
\sum_{\substack{m,n\in I_T\\m\ne n}}
(K_T(m,n)-\widehat K_T(m,n)).
\]
Then for *every arbitrary physical stream*, including completely empty, mismatched or bit-flipped readings,
\[
\boxed{
\mathrm{pickupCross}(T)
  =\mathrm{observedPacket}(T)
    +D_{\rm readout}(T).
}
\]
The proof is finite distributivity, not an error-size assumption. Every original signed coefficient and both pair orientations remain in this identity. If a record is missing, its observed coefficient may be 0, but its ORIGINAL source interactions are charged in \(D_{\rm readout}\). An empty stream gives observedPacket=0 and defect=pickupCross, not a false all-zero arithmetic claim.

For the *complete canonical encoding*, the genuine \(\mu(n)\) is decoded exactly at every original integer \(n\), so each individual pair kernel is identical and the entire signed defect is zero. This supplies a source-bound exact representation, independent of a chosen prime-fiber channel.

On any arbitrary stream, the actual Gödel shift transforms all present tangent states, leaves absent records absent, preserves stored indices and polarization bits, and hence preserves all accepted coefficients and both complete packet/defect sums. This makes the physical frame covariance exact at the source level without requiring that the physical stream was complete or correct. A physical transfer of an erroneous stream remains erroneous; no theorem silently repairs or fills missing bits.

## 4. True q-relative π clock and elliptic packet return

For an actual prime-indexed elliptic channel with \(q>0\), the previous source defines the real physical unit \(U_q=q\pi\), the normalized clock \(\tau=T/U_q\) and exact inverse \(T=U_q\tau\). Neither \(\mathbb F_q\), \(\mathbb Z/q\mathbb Z\), finite point count, nor prime-power exponent is dilated. An exact encoded observer stream at the original real time \(T=U_q\tau\) returns
\[
\widehat{\mathcal X}(T)=\mathcal X_\mu(T)
  =\mathrm{matchedEllipticPacket}(B,T)
   +\mathrm{fullSignedResidual}(B,T).
\]
For an *arbitrary* stream, the complete equation is instead
\[
\widehat{\mathcal X}(T)+D_{\rm readout}(T)
 =\mathrm{matchedEllipticPacket}(B,T)
   +\mathrm{fullSignedResidual}(B,T).
\]
The right side contains unchanged rough and both mixed Möbius sectors plus full signed source-minus-trace deficit. The physical bit fidelity and pi-relative unit never transform an elliptic trace into a Möbius cancellation estimate. Likewise, source reads at \(T\) and at normalized \(\tau\) still require the prior exact signed \`clockDefect\`; bit preservation by a spatial isometry does not imply real-time rescaling invariance.

## 5. Hostile checks, computational scope, and intended consumer

Three meaningful countertests expose the boundary: (i) a single Boolean bit cannot encode \(-1,0,1\) without collision; (ii) the sign of observerFlat is constant negative on future-directed timelike vectors, so a past-oriented sign flip was rejected in favor of physical transverse polarization; (iii) a missing or mislabeled original integer record cannot be assigned a mathematically zero Möbius coefficient, and every lost ordered pair is charged by the exact signed defect. The q=7 versus q=19 real-unit nonaliasing remains a separate upstream test.

An independent exact-integer diagnostic checked 2,000 original Möbius source values under the two-bit encoder/decoder, all PASS. The geometric fixture computed the actual metric and observer covector for scales \(a\in\{0.5,1,2.25\}\), boosts \(\beta\in\{0,0.3,-0.7\}\) and both polarizations: 18 tested states all had \(g=-3/4\), observer covector \(-1\), and correctly decoded transverse bit. These finite diagnostics are useful hostile checks, not Lean kernel certification or experimental data.

Consumer is the original signed \`pickupCross\` and elliptic \`matchedEllipticPacket + fullSignedResidual\`. The work establishes a faithful symbolic physical encoding/decoding and exact accounting for arbitrary imperfect physical streams. It does **not** improve an all-positive-rate estimate for the dense long-gap squarefree Möbius sum, establish elliptic L-function/zeta zero correspondence, prove RH, or prove an actual physical signaling mechanism in a laboratory. A new physical-to-arithmetic generator would require an independent operational law whose output equals \(\mu(n)\) *without first reading \(\mu(n)\)*, together with complete signed error control. Such a law is NOT constructed here.

## 6. Source pins and formal trust facets

Pinned math head at inspection: \`1bf5c020cd92d4e179c706a93e5c5404b97ea229\`. The current core sources are:
- \`GRWTSK/DifferentialGeometry/GodelObserverMetricVorticity.lean\` blob \`f5d8a65fd1e4e59e97e139b3fc63829028c3c662\`, actual timelike/observer chart and real metric;
- \`GRWTSK/DifferentialGeometry/PhysicalBitPrimeObserver.lean\` blob \`235c11fc8b45a5492a078746fc3e0dd99556e952\`, previous generic bit transfer and qπ real observation windows;
- \`GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean\` blob \`45e06c371d67bcf8c939d20a95fcbc63570546fa\`, actual \`moebiusReal\`, original \`pickupResponseGram\` and \`pickupCross\`;
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean\` blob \`df9ded979964790b92f3053efc3aedeb6e2dfa78\`, actual matched elliptic packet and signed residual.
- Upstream pinned Mathlib \`Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean\` blob \`05f76c89adb09318abbec6ada574be955267b03d\`, including \`ArithmeticFunction.moebius_eq_or\`, \`moebius_apply_one\`, \`moebius_apply_prime\`, and \`moebius_apply_prime_pow\`.

New additive Lean SOURCE_PROOF_CANDIDATE modules:
1. \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitCodec.lean\`, with \`polarizationState\`, \`polarizationState_timelike\`, \`polarizationBit_state\`, \`polarizationTransfer_preserves\`, \`decode_moebiusBits\`, \`no_one_bit_three_values\`, \`recordMoebius\`, \`readRecord_recordMoebius\` and \`readRecord_transfer\`.
2. \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitGramReturn.lean\`, with \`PhysicalStream\`, \`observedCoeff\`, \`transferStream\`, \`observedCoeff_transfer\`, \`observedPacket\`, \`signedReadoutDefect\`, \`pickupCross_eq_observed_add_defect\`, \`signedReadoutDefect_encoded_zero\`, \`observedPacket_encoded_eq_pickupCross\`, \`observedPacket_transfer\`, \`signedReadoutDefect_transfer\`, \`observedPacket_encoded_elliptic_return\` and \`observedPacket_pi_signed_return\`.

Lean pin \`leanprover/lean4:v4.34.1\`, Mathlib revision \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. The mathematical proofs above are complete elementary arguments. Lean source is *not* accepted or checked: parsing NOT_RUN, compilation NOT_RUN, expected declaration types NOT_RUN, fresh independent kernel replay NOT_RUN, transitive axiom audit NOT_RUN. No native compiler, remote controller, CI, scheduler, hardware device or foreign repository was executed or modified. A source scan for newly authored sorry/axiom/unsafe is NOT a transitive audit.

No originality is asserted for the elementary ternary-to-binary codec, Young's inequality, observer polarization construction, or exact finite defect algebra. The useful increment is a source-identified typed observational bridge with explicit completeness/defect boundary. Final publication commit and source blobs must be read back after a guarded non-force update.
