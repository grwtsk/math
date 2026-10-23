# RH-E02 / #942: canonical four-family finite matrix and thin Green head

**Evidence:** SOURCE_DRAFT only. No Lean/Lake execution, kernel acceptance, transitive trust audit, external replay, or discharged RH analytic premise for this new file.

## 1. Audited source, exact base and terminal consumer

Repository: grwtsk/math. This child is **stacked on draft PR #1070**, branch research/rh-anchored-authentic-center-defect-942-20261023, exactly at head dc0d2d7cc6e0f18ac45fd32fcfa1f7e34b25a23a and tree 0f142300d9ee7a59219d77067604b86174eb0723. The parent PR is open/unmerged at the pinned head. If the parent is rejected or its declarations change, the child cannot be accepted without source reconciliation. No parent file, main root, workflow or dependency pin is edited. Main was 3403a27429929f80896bb0dfee29f245e0a7169e at the initial audit and advanced during the execution; no later-main declarations were silently imported.

Selected existing issue: [#942](https://github.com/grwtsk/math/issues/942). Relevant parents/owners: #1070, #805 (authentic support), #966 (restricted norm direction), #100 (trust/replay), and #15 (canonical RH target).

Toolchain: Lean 4.33.0; Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. Direct parent Lean file is AnchoredAuthenticCenteredDefectComparison.lean, source blob 84fed8973f7c1a1b358711d159713054805a33c2. Inherited zero-shift source AnchoredPairPositiveShiftBoundary.lean has blob d4b7ff5d6b64e9bbdeea3931b4f43f6d6e6477cd. The genuine family source RegularOrbitParityProjectors.lean has blob 4afd7583b8984daddd7c2b6a2719d9911ad45766 and uses the source-defined positiveEndpointShiftSet b = Finset.Ico 1 (b+1).

**Exact terminal consumer:** GRWTSK.RiemannHypothesis.riemannHypothesis_of_arithmeticFourierCoordinateBound in GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateEnergyCriterion.lean (blob f40915f82fa625ab74d0cfd9c6459db08e65b75b). It is RH-implying only **conditional** on AllDyadicArithmeticFourierCoordinateBound: for every eta>0, eventually in all dyadic scales X and uniformly in every finite Fourier-head N, the *complete* stage mass0(X)^2 + mass1(X)^2 + greenArithmeticFourierHead(X,N) is O_eta(X^(-1+eta)). This premise is OPEN.

**Immediate consumer this child actually supplies:** the source-declared thinGreenArithmeticFourierCoordinate X k in CenteredMobiusLogGreenFourierBridge.lean, and the finite head built from that same thin coordinate. The child does NOT currently type an equality with the separately imported historical greenArithmeticFourierHead.

## 2. Exactly three candidates

| Candidate | Consumer, missing input and proposed conclusion | Source/witness, expected strength, tractability and failure value |
|---|---|---|
| **Selected: four-family signed finite incidence matrix** | Actual authentic center amplitude into the existing thin Green Fourier coordinate; prove exact source-supported 4×center matrix, signed defect/boundary correction, finite-head normalization | Parent #1070 exact other-shift defect; actual even/odd shift partition; finite divisor-log antidiagonal. Exact finite strength, low speculative distance, immediate normalization diagnostics |
| Actual restricted coercive frame | HasRestrictedLowerFrameBound (#966), with source-identical arithmetic family and positive lower constant | Abstract reconstruction lemma exists but not an actual invertible matrix or small arithmetic residual; missing quantitative supplier and admissible difference space |
| Transport fixed-form Chowla or Weil positivity | Complete all-head Green-energy bound or a Weil positivity criterion | No proved uniform growing-shift/tail estimate or test-space, signed-form and positive-cone comparison. Premature; a separate positive object need not preserve RH positivity |

No Sarnak theorem, OpenAI fixed-form Chowla theorem, de Branges criterion, Hodge, quintic, interpolation, or K-theory object is imported as a premise. Historical and external statements remain documented comparisons only.

## 3. Canonical observable, signed identity and exact witness

At each X, set Y_X={n in Nat : X < n <= 2X}. A **real four-family center vector** is indexed by F=(r,e) in {0,1}² and c in [0,2X]. Its exact source values are the existing parityCenteredIntegerCoordinateAmplitude(2X,r,H_e,c), where H_0=positiveEndpointEvenShiftSet(2X) and H_1=positiveEndpointOddShiftSet(2X).

For each positive anchored divisor factor a, its original (r(a),c(a),h(a)) is preserved and selects the unique label F(a)=(r(a),h(a)%2). The source proves that, for 0<a<=2X and h(a)>0, this shift belongs to its chosen **authentic** even/odd H_e, and c(a) lies in the literal range(2X+1). It proves the full-amplitude minus OTHER-shifts identity at that cell, not an identification of a single pair with the full centered correlation.

The explicit finite real matrix has entries

    M_X(n;F,c) =
       sum over ab=n, a in [1,2X], h(a)>0,
           F(a)=F and c(a)=c of epsilon(a)*log(b).

Its source-indexed linear application to any four-family real vector v is (M_X v)(n)=sum_{F,c} M_X(n;F,c)*v(F,c). A one-hot selection lemma proves each original divisor factor contributes to exactly one cell. The signed other-shift defect is

    D_X(n) = sum over ab=n, a in [1,2X], h(a)>0
              epsilon(a)*log(b)*OtherShiftDefect(2X,a,H_{F(a)}).

The already proved a=1,2 zero-shift boundary is B(n)=log(n)-[2 divides n]*log(n/2). The **principal exact theorem** is

    Lambda(n) = (M_X C_X)(n) - D_X(n) + B(n),   X<n<=2X.

This is a signed finite arithmetic identity. No absolute-value inequality or analytic limiting argument is used. The source retains the literal Möbius coefficients, shift and center parity, source upper endpoint 2X and the original divisor antidiagonal. The full finite matrix is not asserted invertible, isometric or unitary.

**Hostile cases:** At a=9, r=1,c=4,h=4, anchored coefficient mu(1)*mu(9)=0 but another genuine even-half-shift g=2 contributes mu(3)*mu(7)=1 to the same centered amplitude. On the antidiagonal n=18, a=9, b=2 (with X=10), that difference has the nonzero log weight log(2); discarding D_X corrupts the arithmetic coefficient. The boundary B(3)=log(3)>0 is another genuine nonzero correction. One-hot selection forbids counting a factor in multiple parity-family cells.

## 4. Finite Fourier matrix and shell normalization

For integer k, the complex frequency-row entry is defined with the original test function phi_k=fourierModeValue(k):

    FourierMatrix_X(k;F,c)
      = sum_(X<n<=2X) M_X(n;F,c)/n * phi_k(n/X-1).

The **complete corrected thin coordinate** is

    R_X(k) = greenFourierBackgroundCoordinate(k)
      - sum_(X<n<=2X) ((M_X C_X)(n) - D_X(n) + B(n))/n
          * phi_k(n/X-1).

Its source-level theorem states the exact equality R_X(k)=thinGreenArithmeticFourierCoordinate(X,k). No modification of the continuum background, 1/n weight, real-to-complex cast, original phase location, or sign convention occurs.

The finite thin Fourier head is

    Head_X(N) = sum_(0<=j<N) (|R_X(j)|² + |R_X(-(j+1))|²).

The source authors equality to the corresponding **original thin** finite-head expression, for every X,N, and elementary scalar nonnegativity Head_X(N)>=0. The zero frequency is retained at j=0, as is the negative mode -1. This is pointwise nonnegativity of a sum of squared complex norms; it is NOT positivity of the signed arithmetic matrix, a PSD Weil form, a positive measure/trace, a lower frame, averaged/asymptotic smallness, or global positivity.

**Cross-stack import boundary:** Both the historical DyadicGreenArithmeticFourierCoordinate.lean (blob 8e46e5f442647f0840793f48b44d03f65982fe05) and CenteredMobiusLogGreenFourierBridge.lean (blob 6b11fea2492a8552f93919bc215f0e40a53deb7e) author GRWTSK.RiemannHypothesis.greenFourierBackgroundCoordinate. Joint import/elaboration and exact declaration alignment are NOT established. Therefore the new theorem does not claim equality with the original historical greenArithmeticFourierHead; the finite shell convention merely matches it by explicit construction. In particular mass0(X)^2 and mass1(X)^2 are not dropped or claimed estimated.

## 5. Finite diagnostic and evidence states

An independent exact-integer prime-log coefficient-vector check enumerated all target windows for 1<=X<=64: 2,080 target n, 7,777 selected positive-shift divisor-factor occurrences and zero discrepancies in the matrix-minus-defect-plus-boundary identity. The largest observed absolute other-shift defect was 12. These are finite computations, not Lean elaboration, numerical RH verification, a complete tail certificate or an analytic bound.

- SOURCE_DRAFT: established; the new file is committed with authored proof terms and without explicit sorry/admit or a new axiom.
- LITERATURE_REVIEWED: not claimed for this increment. Existing repository and Mathlib source statements were inspected.
- ELABORATED: not established.
- KERNEL_CHECKED: not established.
- TRUST_AUDITED: not established.
- EXTERNALLY_REPLAYED: not established.
- ANALYTIC_PREMISES_DISCHARGED: not established.

Lean/Lake were not found in the authoring environment. Passive #print axioms commands do not constitute a trust receipt.

**Provenance DAG:** pinned Mathlib divisor/Möbius identities -> existing anchored-pair coefficient and zero-shift boundary -> exact parent #1070 authentic center/other-shift comparison -> four-family one-hot real matrix -> complete signed Lambda coefficient -> thin Green complex Fourier coordinate -> finite thin head. The path has **no proved edge** from the new thin head to the independently defined original historical augmented energy, nor to its still-open uniform estimate. Imported authorship, source-specific implementation, finite diagnostics and future replay are separate contributions; no arbitrary numerical credit weights are assigned.

## 6. Exactly one next obstruction

Reconcile the duplicated historical and thin greenFourierBackgroundCoordinate declarations under a valid pinned common import root, then prove or refute for every X>0 and N the exact identity

    originalThinGreenFourierHead(X,N) = greenArithmeticFourierHead(X,N),

including both original endpoint-square channels separately when assembling fullGreenArithmeticCoordinateStage. This next theorem is an exact source/declaration comparison, **not** an assumption of the open all-dyadic quantitative energy bound. No further bridge, merge, or RH assertion is undertaken in this execution.
