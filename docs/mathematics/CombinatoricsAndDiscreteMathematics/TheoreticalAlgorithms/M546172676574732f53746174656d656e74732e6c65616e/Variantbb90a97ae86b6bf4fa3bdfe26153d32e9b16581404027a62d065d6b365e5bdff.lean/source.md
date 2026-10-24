# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M546172676574732f53746174656d656e74732e6c65616e.Variantbb90a97ae86b6bf4fa3bdfe26153d32e9b16581404027a62d065d6b365e5bdff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `137a82db63eb58c11d1392e33c4ec68646fc5bf1` · SHA-256 `bb90a97ae86b6bf4fa3bdfe26153d32e9b16581404027a62d065d6b365e5bdff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M546172676574732f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=00111000|role=proof_code_atom|slug=targets-statements|owner=canonical_owner|core=Targets/Statements.lean|leaf=M546172676574732f53746174656d656e74732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Targets

inductive StatementStatus where
  | boundaryOnly
  | atomizedResidue
  | statementTranslationPending
  | proofComplete
deriving DecidableEq, Repr

def targetBoundaryClaim (target : TargetKind) : Prop :=
  noExternalAuthorityUpgradeFor target

structure TargetStatement where
  target : TargetKind
  statementLabel : String
  informalStatement : String
  status : StatementStatus
  residue : Think.Residue
  boundaryProof : noExternalAuthorityUpgradeFor target

def TargetStatement.formalClaim (s : TargetStatement) : Prop :=
  targetBoundaryClaim s.target

def externalTargetResidue (target : TargetKind) (label : String) :
    Think.Residue :=
  { target := target
    atomId := label
    kind := FWR.ResidueKind.conjecturalAtom
    blocks := "external theorem target is recorded as a boundary statement, not imported theorem authority"
    clearsBy := "exact Lean statement translation plus an internal proof artifact, or an explicit external theorem import policy" }

def mkBoundaryStatement
    (target : TargetKind)
    (label informalStatement : String)
    (hTarget : target ∈ targetKinds) :
    TargetStatement :=
  { target := target
    statementLabel := label
    informalStatement := informalStatement
    status := StatementStatus.boundaryOnly
    residue := externalTargetResidue target label
    boundaryProof := noExternalAuthorityUpgradeFor_intro target hTarget }

def rhStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.RH
    "RH-boundary"
    "Riemann Hypothesis target remains an external theorem boundary."
    (by decide)

def modularityStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.Modularity
    "modularity-boundary"
    "Modularity target remains an external theorem boundary."
    (by decide)

def primeGapsStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.PrimeGapBounds
    "prime-gaps-boundary"
    "Prime-gap target remains an external theorem boundary."
    (by decide)

def navierStokesStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.NavierStokesRegularity
    "navier-stokes-boundary"
    "Navier-Stokes regularity target remains an external theorem boundary."
    (by decide)

def kakeyaStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.KakeyaResults
    "kakeya-boundary"
    "Kakeya target remains an external theorem boundary."
    (by decide)

def analyticContinuationStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.AnalyticContinuation
    "analytic-continuation-boundary"
    "Analytic continuation target remains an external theorem boundary."
    (by decide)

def sieveTheoryStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.SieveReplacement
    "sieve-theory-boundary"
    "Sieve-theory target remains an external theorem boundary."
    (by decide)

def automorphicFormsStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.AutomorphicReplacement
    "automorphic-forms-boundary"
    "Automorphic-forms target remains an external theorem boundary."
    (by decide)

def finiteDataAsymptoticsStatement : TargetStatement :=
  mkBoundaryStatement FWR.Target.FiniteToAsymptotic
    "finite-data-asymptotics-boundary"
    "Finite-data-to-asymptotic transfer remains an external theorem boundary."
    (by decide)

def allTargetStatements : List TargetStatement :=
  [ rhStatement
  , modularityStatement
  , primeGapsStatement
  , navierStokesStatement
  , kakeyaStatement
  , analyticContinuationStatement
  , sieveTheoryStatement
  , automorphicFormsStatement
  , finiteDataAsymptoticsStatement
  ]

theorem allTargetStatements_count :
    allTargetStatements.length = 9 := by
  rfl

def TargetStatement.checked (s : TargetStatement) :
    Think.Checked s.formalClaim :=
  FWR.Checked.residue [s.residue]

theorem TargetStatement_checked_hasResidue (s : TargetStatement) :
    s.checked.hasResidue = true := by
  rfl

theorem TargetStatement_boundary_proved
    (s : TargetStatement) :
    s.formalClaim := by
  exact s.boundaryProof

end Think.Targets
```
