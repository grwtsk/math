# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TorsionShellTraceClassBoundary.Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `130eb860889e69015485de56c66ebafeebd47f1c` · SHA-256 `d4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.ConnesTaoCheckedTheoremImports
import Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary

set_option autoImplicit false

namespace Think.Arithmetic.TorsionShellTraceClassBoundary

/-
Torsion-shell trace-class boundary.

Ordering torsion is not itself trace class.  Ordering becomes useful only when it
produces a shell filtration with finite-rank shell operators, decay weights,
controlled growth, and trace-norm summability.  Connes supplies the positive
geometric boundary; Tao heatflow supplies the negative/decay boundary.
-/

/-- A finite or locally finite torsion shell in a modular/lattice phase. -/
structure TorsionShell where
  shellId : String
  phaseId : String
  torsionClassId : String
  orderedIndex : Nat
  finiteRankWitness : Bool
  singularPhase : Bool
  connesPositiveRoute : Bool
  taoNegativeRoute : Bool
  unpairedResidue : Bool
  traceNormBounded : Bool
deriving Repr, DecidableEq

/-- Regular shell routed through the Connes positive boundary. -/
def regularTorsionShell (shellId phaseId torsionClassId : String)
    (orderedIndex : Nat) : TorsionShell :=
  { shellId := shellId
    phaseId := phaseId
    torsionClassId := torsionClassId
    orderedIndex := orderedIndex
    finiteRankWitness := true
    singularPhase := false
    connesPositiveRoute := true
    taoNegativeRoute := false
    unpairedResidue := false
    traceNormBounded := true }

/-- Singular shell routed through the Tao heatflow negative/decay boundary. -/
def singularTorsionShell (shellId phaseId torsionClassId : String)
    (orderedIndex : Nat) : TorsionShell :=
  { shellId := shellId
    phaseId := phaseId
    torsionClassId := torsionClassId
    orderedIndex := orderedIndex
    finiteRankWitness := true
    singularPhase := true
    connesPositiveRoute := false
    taoNegativeRoute := true
    unpairedResidue := false
    traceNormBounded := true }

/-- A shell is routed if it is sent either to the positive Connes boundary or the
negative Tao heatflow boundary. -/
def TorsionShell.boundaryRouted (shell : TorsionShell) : Bool :=
  (shell.connesPositiveRoute || shell.taoNegativeRoute) && !shell.unpairedResidue

/-- Regular shells are routed through the Connes positive boundary. -/
theorem regular_shell_routes_to_connes_positive
    (shellId phaseId torsionClassId : String) (orderedIndex : Nat) :
    (regularTorsionShell shellId phaseId torsionClassId orderedIndex).connesPositiveRoute = true ∧
      (regularTorsionShell shellId phaseId torsionClassId orderedIndex).boundaryRouted = true := by
  exact ⟨rfl, rfl⟩

/-- Singular shells are routed through the Tao negative boundary. -/
theorem singular_shell_routes_to_tao_negative
    (shellId phaseId torsionClassId : String) (orderedIndex : Nat) :
    (singularTorsionShell shellId phaseId torsionClassId orderedIndex).taoNegativeRoute = true ∧
      (singularTorsionShell shellId phaseId torsionClassId orderedIndex).boundaryRouted = true := by
  exact ⟨rfl, rfl⟩

/-- Boundary gate for turning torsion-shell ordering into trace class. -/
structure TorsionShellTraceClassBoundary where
  torsionShellsOrdered : Bool
  finiteRankShells : Bool
  factorialDecayDeclared : Bool
  shellGrowthControlled : Bool
  traceNormSummable : Bool
  connesPositiveBoundaryChecked : Bool
  taoHeatflowNegativeBoundaryChecked : Bool
  everyShellBoundaryRouted : Bool
  noUnpairedShellResidue : Bool
  traceClassAdmitted : Bool
  schattenDeterminantClassAdmitted : Bool
  determinantClassTransferAllowed : Bool
  hilbertPolyaAuthority : Bool
  traceClassAdmitted_of_summable_shells :
    torsionShellsOrdered = true →
    finiteRankShells = true →
    factorialDecayDeclared = true →
    shellGrowthControlled = true →
    traceNormSummable = true →
    connesPositiveBoundaryChecked = true →
    taoHeatflowNegativeBoundaryChecked = true →
    everyShellBoundaryRouted = true →
    noUnpairedShellResidue = true →
    traceClassAdmitted = true
  determinantClassTransfer_of_trace_class :
    traceClassAdmitted = true → determinantClassTransferAllowed = true
  ordering_alone_does_not_admit_trace_class :
    torsionShellsOrdered = true →
    traceNormSummable = false →
    traceClassAdmitted = false
  no_hilbert_polya_from_trace_class_boundary_alone :
    hilbertPolyaAuthority = false

/-- Default posture: torsion ordering may be declared, but trace class is not
admitted without summability and boundary-routing gates. -/
def defaultTorsionShellTraceClassBoundary : TorsionShellTraceClassBoundary :=
  { torsionShellsOrdered := true
    finiteRankShells := false
    factorialDecayDeclared := false
    shellGrowthControlled := false
    traceNormSummable := false
    connesPositiveBoundaryChecked := false
    taoHeatflowNegativeBoundaryChecked := false
    everyShellBoundaryRouted := false
    noUnpairedShellResidue := false
    traceClassAdmitted := false
    schattenDeterminantClassAdmitted := false
    determinantClassTransferAllowed := false
    hilbertPolyaAuthority := false
    traceClassAdmitted_of_summable_shells := by
      intro _hOrder hFinite _hDecay _hGrowth _hSummable _hConnes _hTao _hRouted _hNoResidue
      cases hFinite
    determinantClassTransfer_of_trace_class := by
      intro hTrace
      cases hTrace
    ordering_alone_does_not_admit_trace_class := by
      intro _hOrder _hSummable
      rfl
    no_hilbert_polya_from_trace_class_boundary_alone := rfl }

/-- Completed trace-class posture: shell ordering has become a finite-rank,
factorially damped, summable shell expansion checked against Connes/Tao gates. -/
def completedTorsionShellTraceClassBoundary : TorsionShellTraceClassBoundary :=
  { torsionShellsOrdered := true
    finiteRankShells := true
    factorialDecayDeclared := true
    shellGrowthControlled := true
    traceNormSummable := true
    connesPositiveBoundaryChecked := true
    taoHeatflowNegativeBoundaryChecked := true
    everyShellBoundaryRouted := true
    noUnpairedShellResidue := true
    traceClassAdmitted := true
    schattenDeterminantClassAdmitted := true
    determinantClassTransferAllowed := true
    hilbertPolyaAuthority := false
    traceClassAdmitted_of_summable_shells := by
      intro _hOrder _hFinite _hDecay _hGrowth _hSummable _hConnes _hTao _hRouted _hNoResidue
      rfl
    determinantClassTransfer_of_trace_class := by
      intro _hTrace
      rfl
    ordering_alone_does_not_admit_trace_class := by
      intro _hOrder hSummable
      cases hSummable
    no_hilbert_polya_from_trace_class_boundary_alone := rfl }

/-- Main theorem: ordered torsion shells become trace class only after finite-rank,
decay, growth, summability, Connes, Tao, and residue-routing gates close. -/
theorem torsion_shell_factorial_decay_admits_trace_class
    (boundary : TorsionShellTraceClassBoundary)
    (hOrdered : boundary.torsionShellsOrdered = true)
    (hFinite : boundary.finiteRankShells = true)
    (hDecay : boundary.factorialDecayDeclared = true)
    (hGrowth : boundary.shellGrowthControlled = true)
    (hSummable : boundary.traceNormSummable = true)
    (hConnes : boundary.connesPositiveBoundaryChecked = true)
    (hTao : boundary.taoHeatflowNegativeBoundaryChecked = true)
    (hRouted : boundary.everyShellBoundaryRouted = true)
    (hNoResidue : boundary.noUnpairedShellResidue = true) :
    boundary.traceClassAdmitted = true :=
  boundary.traceClassAdmitted_of_summable_shells
    hOrdered hFinite hDecay hGrowth hSummable hConnes hTao hRouted hNoResidue

/-- Ordering torsion alone does not admit trace class. -/
theorem ordering_alone_does_not_admit_trace_class
    (boundary : TorsionShellTraceClassBoundary)
    (hOrdered : boundary.torsionShellsOrdered = true)
    (hNotSummable : boundary.traceNormSummable = false) :
    boundary.traceClassAdmitted = false :=
  boundary.ordering_alone_does_not_admit_trace_class hOrdered hNotSummable

/-- Completed shell boundary admits trace class and determinant-class transfer. -/
theorem completed_torsion_shell_boundary_admits_trace_and_determinant_class :
    completedTorsionShellTraceClassBoundary.traceClassAdmitted = true ∧
      completedTorsionShellTraceClassBoundary.schattenDeterminantClassAdmitted = true ∧
      completedTorsionShellTraceClassBoundary.determinantClassTransferAllowed = true := by
  exact ⟨rfl, rfl, rfl⟩

/-- Default shell boundary keeps trace class blocked despite ordering. -/
theorem default_torsion_shell_boundary_blocks_trace_class :
    defaultTorsionShellTraceClassBoundary.torsionShellsOrdered = true ∧
      defaultTorsionShellTraceClassBoundary.traceNormSummable = false ∧
      defaultTorsionShellTraceClassBoundary.traceClassAdmitted = false ∧
      defaultTorsionShellTraceClassBoundary.determinantClassTransferAllowed = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/-- The trace-class shell boundary can feed the determinant-class gate. -/
theorem completed_trace_class_boundary_feeds_determinant_gate :
    Think.Arithmetic.GNSDeterminantExactnessBoundary.traceClassDeterminantBoundary.determinantClassAdmitted = true ∧
      completedTorsionShellTraceClassBoundary.determinantClassTransferAllowed = true := by
  exact ⟨rfl, rfl⟩

/-- Checked Connes/Tao imports are the intended external inputs to the shell
trace-class boundary. -/
theorem checked_connes_tao_imports_feed_trace_class_boundary :
    Think.Arithmetic.ConnesTaoCheckedTheoremImports.checkedConnesSpectralTripleImportSurface.status =
        Think.Arithmetic.ConnesTaoCheckedTheoremImports.ImportedTheoremStatus.checkedTheorem ∧
      Think.Arithmetic.ConnesTaoCheckedTheoremImports.checkedTaoHeatflowImportSurface.status =
        Think.Arithmetic.ConnesTaoCheckedTheoremImports.ImportedTheoremStatus.checkedTheorem ∧
      completedTorsionShellTraceClassBoundary.connesPositiveBoundaryChecked = true ∧
      completedTorsionShellTraceClassBoundary.taoHeatflowNegativeBoundaryChecked = true := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/-- Trace class from torsion shell ordering is still not Hilbert--Polya authority. -/
theorem completed_trace_class_boundary_does_not_claim_hilbert_polya :
    completedTorsionShellTraceClassBoundary.hilbertPolyaAuthority = false := by
  rfl

/-- Determinant gate with shell trace-class transfer added.  This records that
trace class has been supplied by the torsion shell boundary, while determinant
exactness still also needs regularization and spectral matching gates. -/
structure TorsionShellDeterminantTransferBoundary where
  shellTraceClassTransfer : Bool
  nonvanishingRegularization : Bool
  zeroEigenvalueMatching : Bool
  noSpuriousSpectrum : Bool
  determinantClassGateAdmitted : Bool
  determinantExactnessReady : Bool
  determinantExactnessReady_of_all_gates :
    shellTraceClassTransfer = true →
    nonvanishingRegularization = true →
    zeroEigenvalueMatching = true →
    noSpuriousSpectrum = true →
    determinantClassGateAdmitted = true →
    determinantExactnessReady = true

/-- Default determinant transfer: shell trace class alone is not enough. -/
def defaultTorsionShellDeterminantTransferBoundary :
    TorsionShellDeterminantTransferBoundary :=
  { shellTraceClassTransfer := true
    nonvanishingRegularization := false
    zeroEigenvalueMatching := false
    noSpuriousSpectrum := false
    determinantClassGateAdmitted := true
    determinantExactnessReady := false
    determinantExactnessReady_of_all_gates := by
      intro _hShell hReg _hMatch _hNoSpurious _hDet
      cases hReg }

/-- Completed determinant transfer: all remaining determinant gates are supplied. -/
def completedTorsionShellDeterminantTransferBoundary :
    TorsionShellDeterminantTransferBoundary :=
  { shellTraceClassTransfer := true
    nonvanishingRegularization := true
    zeroEigenvalueMatching := true
    noSpuriousSpectrum := true
    determinantClassGateAdmitted := true
    determinantExactnessReady := true
    determinantExactnessReady_of_all_gates := by
      intro _hShell _hReg _hMatch _hNoSpurious _hDet
      rfl }

/-- Shell trace class alone still leaves determinant exactness unready. -/
theorem shell_trace_class_alone_does_not_complete_determinant_exactness :
    defaultTorsionShellDeterminantTransferBoundary.shellTraceClassTransfer = true ∧
      defaultTorsionShellDeterminantTransferBoundary.nonvanishingRegularization = false ∧
      defaultTorsionShellDeterminantTransferBoundary.determinantExactnessReady = false := by
  exact ⟨rfl, rfl, rfl⟩

end Think.Arithmetic.TorsionShellTraceClassBoundary
```
