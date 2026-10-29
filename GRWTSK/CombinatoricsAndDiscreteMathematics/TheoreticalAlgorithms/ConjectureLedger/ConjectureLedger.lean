import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.M546172676574732f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=11011100|role=proof_code_atom|slug=targets-conjectureledger|owner=canonical_owner|core=Targets/ConjectureLedger.lean|leaf=M546172676574732f436f6e6a6563747572654c65646765722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Targets.ConjectureLedger

/-
External open-problem recall ledger.

These records are target metadata, not theorem imports.  Each record is checked
by residue unless a later module supplies an exact Lean statement translation
and a proof artifact.
-/

inductive TargetStatus where
  | openStatus
  | solvedReference
  | partialStatus
  | disputed
  | unknownStatus
deriving DecidableEq, Repr

inductive TargetFamily where
  | millennium
  | hilbert
  | erdos
  | numberTheory
  | lFunctions
  | complexity
  | pde
  | geometryTopology
  | algebraicGeometry
  | combinatorics
  | physics
deriving DecidableEq, Repr

inductive ResidueDisposition where
  | conjecturalAtom
  | solvedReferenceOnly
  | partialProgressAtom
  | mutableStatusAtom
deriving DecidableEq, Repr

structure OpenTargetRecord where
  targetId : String
  family : TargetFamily
  canonicalName : String
  status : TargetStatus
  ambientObjects : List String
  statementAtoms : List String
  hypothesisAtoms : List String
  conclusionAtoms : List String
  knownPartialResults : List String
  forbiddenOverclaims : List String
  residueDisposition : ResidueDisposition
  clearsBy : String
  sourceRefs : List String
deriving Repr

def targetClaim (_target : OpenTargetRecord) : Prop :=
  True

def residueKindFor : ResidueDisposition -> FWR.ResidueKind
  | .conjecturalAtom => FWR.ResidueKind.conjecturalAtom
  | .solvedReferenceOnly => FWR.ResidueKind.externalTheoremNotImported
  | .partialProgressAtom => FWR.ResidueKind.missingAsymptoticTransfer
  | .mutableStatusAtom => FWR.ResidueKind.externalTheoremNotImported

def targetResidue (target : OpenTargetRecord) : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := target.targetId
    kind := residueKindFor target.residueDisposition
    blocks := "external open-target record is metadata and does not transfer theorem authority"
    clearsBy := target.clearsBy }

def targetChecked (target : OpenTargetRecord) :
    Think.Checked (targetClaim target) :=
  FWR.Checked.residue [targetResidue target]

theorem targetChecked_hasResidue (target : OpenTargetRecord) :
    (targetChecked target).hasResidue = true := by
  rfl

theorem targetResidue_target (target : OpenTargetRecord) :
    (targetResidue target).target = FWR.Target.OpenConjectureLedger := by
  rfl

def sourceClayMillennium : String :=
  "https://www.claymath.org/millennium-problems/"

def sourceHilbertEight : String :=
  "https://en.wikipedia.org/wiki/Hilbert%27s_eighth_problem"

def sourceErdosGemini : String :=
  "https://arxiv.org/abs/2601.22401"

def sourceErdosUnitDistanceNews : String :=
  "https://www.theguardian.com/technology/2026/may/21/openai-paul-erdos-maths-problem-breakthrough"

def sourceLandauProblems : String :=
  "https://en.wikipedia.org/wiki/Landau%27s_problems"

def mk
    (targetId : String)
    (family : TargetFamily)
    (canonicalName : String)
    (status : TargetStatus)
    (ambientObjects statementAtoms hypothesisAtoms conclusionAtoms
      knownPartialResults forbiddenOverclaims : List String)
    (residueDisposition : ResidueDisposition)
    (clearsBy : String)
    (sourceRefs : List String) : OpenTargetRecord :=
  { targetId
    family
    canonicalName
    status
    ambientObjects
    statementAtoms
    hypothesisAtoms
    conclusionAtoms
    knownPartialResults
    forbiddenOverclaims
    residueDisposition
    clearsBy
    sourceRefs }

def clearsByOpen : String :=
  "exact statement translation plus proof artifact, or retained open-status annotation"

def standardForbiddenOverclaims : List String := [
  "survey entry is not theorem authority",
  "finite witness is not target settlement",
  "AI/computational evidence is not proof authority"
]

def millenniumTargets : List OpenTargetRecord := [
  mk "millennium.rh" .millennium "Riemann Hypothesis" .openStatus
    ["Riemann zeta function", "nontrivial zeros"]
    ["all nontrivial zeros have real part one half"]
    ["analytic zeta object", "zero predicate", "critical line predicate"]
    ["universal critical-line conclusion"]
    ["prime number theorem as average distribution background"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.bsd" .millennium "Birch and Swinnerton-Dyer Conjecture" .openStatus
    ["elliptic curve", "L-function", "Mordell-Weil group"]
    ["rank equals order of vanishing"]
    ["elliptic curve over a number field", "analytic continuation of L-function"]
    ["rank/order equality"]
    ["experimental evidence", "known cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.hodge" .millennium "Hodge Conjecture" .openStatus
    ["smooth projective complex variety", "Hodge classes", "algebraic cycles"]
    ["Hodge classes are algebraic"]
    ["cycle class map", "rational cohomology"]
    ["algebraicity of selected cohomology classes"]
    ["known in special dimensions and cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.navier_stokes" .millennium "Navier-Stokes existence and smoothness" .openStatus
    ["incompressible Navier-Stokes equation", "initial data", "fluid velocity"]
    ["global smooth solution or finite-time breakdown alternative"]
    ["weak solution", "energy inequality", "regularity predicate"]
    ["existence/smoothness conclusion"]
    ["weak solution theory"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.p_vs_np" .millennium "P versus NP" .openStatus
    ["languages", "verifiers", "polynomial-time algorithms"]
    ["P equals NP or P differs from NP"]
    ["formal model of computation", "polynomial bound"]
    ["class equality or separation"]
    ["many conditional and relativized results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.yang_mills" .millennium "Yang-Mills existence and mass gap" .openStatus
    ["quantum Yang-Mills theory", "compact gauge group", "mass spectrum"]
    ["constructive existence and positive mass gap"]
    ["axioms for QFT", "gauge field formalization"]
    ["existence plus mass gap positivity"]
    ["physical and numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.poincare" .millennium "Poincare Conjecture" .solvedReference
    ["closed simply connected three-manifold"]
    ["three-sphere characterization"]
    ["topological manifold hypotheses"]
    ["reference-only solved control target"]
    ["Perelman proof via geometrization"]
    ["solved reference is not imported Lean proof"]
    .solvedReferenceOnly
    "verified Lean formalization or explicit external import policy for the solved theorem"
    [sourceClayMillennium]
]

def hilbertTargets : List OpenTargetRecord := [
  mk "hilbert.6.physics_axiomatization" .hilbert "Hilbert 6 physics axiomatization" .openStatus
    ["probability", "statistical mechanics", "quantum field theory"]
    ["axiomatize physical theories"]
    ["chosen physical formalism", "mathematical semantics"]
    ["formal foundation target"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "hilbert.8.rh" .hilbert "Hilbert 8 Riemann Hypothesis" .openStatus
    ["Riemann zeta function"]
    ["RH component of Hilbert 8"]
    ["zeta zeros", "critical line"]
    ["critical-line conclusion"]
    ["weaker zero-density and critical-line proportion results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "hilbert.8.goldbach_twin_prime" .hilbert "Hilbert 8 additive prime equations" .openStatus
    ["prime variables", "linear Diophantine equations"]
    ["Goldbach and twin-prime-style special cases"]
    ["coprime integral coefficients", "prime solution predicate"]
    ["prime solution existence"]
    ["bounded prime gaps as a special partial direction"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "hilbert.8.dedekind_zeta" .hilbert "Hilbert 8 Dedekind zeta prime distribution" .openStatus
    ["number field", "Dedekind zeta function", "prime ideals"]
    ["transfer prime distribution methods to number fields"]
    ["ideal norm", "Dedekind zeta analytic setup"]
    ["prime ideal distribution conclusion"]
    ["analytic continuation and functional equation known as background"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "hilbert.12.explicit_class_field_theory" .hilbert "Hilbert 12 explicit class field theory" .openStatus
    ["abelian extensions", "special values", "class fields"]
    ["explicit generators beyond known cases"]
    ["base field", "reciprocity law"]
    ["explicit class-field construction"]
    ["known Kronecker-Weber and CM cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "hilbert.16.real_algebraic_curves" .hilbert "Hilbert 16 real algebraic curves" .partialStatus
    ["real algebraic curves", "ovals", "degree"]
    ["topological classification by degree"]
    ["curve degree", "real locus"]
    ["classification constraints"]
    ["many degree-specific results"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [],
  mk "hilbert.16.limit_cycles" .hilbert "Hilbert 16 limit cycles" .openStatus
    ["polynomial vector fields", "limit cycles"]
    ["uniform finiteness and bounds"]
    ["degree bound", "planar polynomial system"]
    ["limit-cycle count conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "hilbert.23.variational_methods" .hilbert "Hilbert 23 variational-method program" .unknownStatus
    ["calculus of variations", "variational methods"]
    ["programmatic method-development target"]
    ["selected variational problem"]
    ["method/residue classification"]
    ["broad program rather than single theorem"]
    ["do not package as one theorem"]
    .mutableStatusAtom clearsByOpen []
]

def erdosTargets : List OpenTargetRecord := [
  mk "erdos.hajnal" .erdos "Erdos-Hajnal conjecture" .openStatus
    ["forbidden induced subgraph", "hereditary graph class"]
    ["large clique or independent set lower bound"]
    ["fixed forbidden graph", "finite graph family"]
    ["polynomial-size homogeneous set"]
    []
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.distinct_distances" .erdos "Erdos distinct distances" .partialStatus
    ["finite point set", "Euclidean distance set"]
    ["sharp asymptotic lower bound"]
    ["planar point configuration"]
    ["distance-set growth"]
    ["major partial progress and solved-order variants"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.unit_distances" .erdos "Erdos unit distances" .openStatus
    ["finite planar point set", "unit-distance graph"]
    ["sharp extremal growth rate"]
    ["point configuration", "unit-distance predicate"]
    ["unit edge count bound"]
    ["recent AI-assisted updates are metadata only"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini, sourceErdosUnitDistanceNews],
  mk "erdos.szekeres_happy_ending" .erdos "Erdos-Szekeres happy ending problem" .partialStatus
    ["general-position point sets", "convex polygons"]
    ["convex polygon forcing number"]
    ["number of points", "polygon size"]
    ["least forcing threshold"]
    []
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.straus" .erdos "Erdos-Straus conjecture" .openStatus
    ["positive integers", "Egyptian fractions"]
    ["4/n = 1/x + 1/y + 1/z"]
    ["n greater than one"]
    ["existence of x y z"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.moser" .erdos "Erdos-Moser equation" .openStatus
    ["exponential Diophantine equation"]
    ["classification of solutions"]
    ["integer solution predicates"]
    ["nonexistence or complete solution set"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.turan_additive_bases" .erdos "Erdos-Turan additive bases" .openStatus
    ["additive basis", "representation function"]
    ["representation growth residue"]
    ["basis order", "counting function"]
    ["growth lower/upper behavior"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.faber_lovasz" .erdos "Erdos-Faber-Lovasz conjecture" .solvedReference
    ["linear hypergraph", "edge coloring"]
    ["chromatic index bound"]
    ["finite linear hypergraph"]
    ["edge-coloring conclusion"]
    ["solved reference target; not imported here"]
    ["solved reference is not active Lean proof"]
    .solvedReferenceOnly clearsByOpen [sourceErdosGemini],
  mk "erdos.matching" .erdos "Erdos matching conjecture" .partialStatus
    ["extremal set family", "matching number"]
    ["maximum size of family with bounded matching number"]
    ["uniform family", "matching constraint"]
    ["extremal bound"]
    []
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.ginzburg_ziv_variants" .erdos "Erdos-Ginzburg-Ziv variants" .partialStatus
    ["finite abelian group", "zero-sum subsequence"]
    ["zero-sum length and variant thresholds"]
    ["sequence over group"]
    ["zero-sum subsequence conclusion"]
    ["base theorem solved; variants remain target-specific"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini]
]

def numberTheoryTargets : List OpenTargetRecord := [
  mk "nt.prime_distribution" .numberTheory "Prime distribution frontier" .openStatus
    ["zeta zeros", "prime counting functions"]
    ["RH/GRH, zero-density, GUE, pair-correlation residues"]
    ["analytic L-function framework"]
    ["prime distribution error bounds"]
    ["PNT and many weaker results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium, sourceHilbertEight],
  mk "nt.additive_primes" .numberTheory "Additive primes" .openStatus
    ["prime sums", "representation functions"]
    ["Goldbach, weak/strong/ternary and constrained variants"]
    ["integer parity/size hypotheses"]
    ["prime representation"]
    ["weak Goldbach solved; strong variants open"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.prime_gaps" .numberTheory "Prime gaps" .openStatus
    ["consecutive primes", "prime tuples"]
    ["twin prime, Polignac, Hardy-Littlewood prime tuples"]
    ["admissible tuple hypotheses"]
    ["infinitely many requested gaps/tuples"]
    ["bounded gaps known, exact twin-prime gap open"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.goldbach" .numberTheory "Landau Goldbach problem" .openStatus
    ["even integers", "prime sums"]
    ["every even integer greater than two is sum of two primes"]
    ["even integer greater than two"]
    ["two-prime representation"]
    ["weak Goldbach and Chen-type partial results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.twin_prime" .numberTheory "Landau twin prime problem" .openStatus
    ["prime numbers"]
    ["infinitely many prime pairs with difference two"]
    ["prime pair predicate"]
    ["infinitude conclusion"]
    ["bounded gaps partial progress"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.legendre" .numberTheory "Landau Legendre problem" .openStatus
    ["consecutive squares", "prime intervals"]
    ["prime between every pair of consecutive squares"]
    ["positive integer n"]
    ["existence of prime in interval"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.n2_plus_one" .numberTheory "Landau n squared plus one primes" .openStatus
    ["quadratic polynomial", "prime values"]
    ["infinitely many primes of form n^2 + 1"]
    ["integer n"]
    ["prime-value infinitude"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.polynomial_primes" .numberTheory "Polynomial prime conjectures" .openStatus
    ["integer polynomials", "prime values"]
    ["Bunyakovsky, Schinzel H, Bateman-Horn"]
    ["local obstruction conditions"]
    ["prime-value density or infinitude"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "nt.elliptic_arithmetic" .numberTheory "Elliptic and arithmetic geometry conjectures" .openStatus
    ["elliptic curves", "Shafarevich-Tate group", "L-functions"]
    ["BSD, Tate, Sha-finiteness, modularity generalizations"]
    ["arithmetic variety hypotheses"]
    ["rank/cycle/modularity conclusions"]
    ["many special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "nt.class_field_iwasawa" .numberTheory "Class field and Iwasawa targets" .openStatus
    ["number fields", "Iwasawa modules"]
    ["Leopoldt, Vandiver, Greenberg"]
    ["prime and field hypotheses"]
    ["rank, class, or Iwasawa invariant conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "nt.langlands" .numberTheory "Langlands program targets" .openStatus
    ["automorphic representations", "Galois representations"]
    ["functoriality, reciprocity, compatibility beyond known cases"]
    ["local/global fields", "representation data"]
    ["correspondence or transfer conclusion"]
    ["large families of proven cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "nt.diophantine_geometry" .numberTheory "Diophantine geometry conjectures" .openStatus
    ["varieties", "height functions", "rational points"]
    ["abc, Vojta, Bombieri-Lang"]
    ["field and variety hypotheses"]
    ["height/rational-point bound"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "nt.algebraic_cycles" .numberTheory "Algebraic cycle conjectures" .openStatus
    ["cycles", "cohomology", "motives"]
    ["Hodge, Tate, standard, Bloch-Beilinson"]
    ["smooth projective variety hypotheses"]
    ["cycle/cohomology comparison"]
    ["known special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium]
]

def lFunctionTargets : List OpenTargetRecord := [
  mk "lfunc.rh_grh" .lFunctions "RH and GRH for L-functions" .openStatus
    ["L-functions", "nontrivial zeros"]
    ["zeros lie on the critical line"]
    ["analytic continuation", "functional equation"]
    ["critical-line conclusion"]
    ["many verified finite-height checks"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium, sourceHilbertEight],
  mk "lfunc.montgomery_pair_correlation" .lFunctions "Montgomery pair correlation" .openStatus
    ["zeta zeros", "scaled spacings"]
    ["pair correlation has GUE form"]
    ["zero statistics and limiting process"]
    ["limiting correlation kernel"]
    ["conditional and numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "lfunc.gue_statistics" .lFunctions "GUE statistics for zeros" .openStatus
    ["L-function zero ensembles"]
    ["random matrix statistics for zero spacings"]
    ["family of L-functions"]
    ["limiting distribution"]
    ["numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "lfunc.zero_density" .lFunctions "Zero-density strengthening targets" .partialStatus
    ["zeros of L-functions", "critical strip"]
    ["density estimates strong enough for target applications"]
    ["height and real-part ranges"]
    ["zero-density bound"]
    ["classical zero-density results"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceHilbertEight],
  mk "lfunc.analytic_continuation" .lFunctions "Analytic continuation interfaces" .partialStatus
    ["Dirichlet series", "automorphic L-functions"]
    ["continuation and functional equation interfaces"]
    ["chosen L-function class"]
    ["meromorphic or entire continuation"]
    ["known for many standard L-functions"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceHilbertEight],
  mk "lfunc.special_values" .lFunctions "Special-value arithmetic targets" .openStatus
    ["L-values", "periods", "regulators"]
    ["special values encode arithmetic invariants"]
    ["motive or arithmetic object hypotheses"]
    ["value/invariant formula"]
    ["many known formulas in special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

def complexityTargets : List OpenTargetRecord := [
  mk "complexity.p_vs_np" .complexity "P versus NP" .openStatus
    ["languages", "polynomial-time machines", "verifiers"]
    ["P equals NP or P differs from NP"]
    ["encoding model", "polynomial bound"]
    ["class equality/separation"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "complexity.np_vs_conp" .complexity "NP versus coNP" .openStatus
    ["languages", "certificates", "complements"]
    ["NP differs from coNP or equality"]
    ["verification predicates"]
    ["proof/certificate asymmetry"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.pspace_exptime" .complexity "PSPACE and EXPTIME variants" .openStatus
    ["complexity classes", "resource bounds"]
    ["hierarchy separations and refinements"]
    ["machine model", "space/time bound"]
    ["class separation"]
    ["some hierarchy theorems known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.permanent_determinant" .complexity "Permanent versus determinant" .openStatus
    ["algebraic circuits", "Valiant classes"]
    ["permanent requires large determinant representation"]
    ["field and representation model"]
    ["lower-bound conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.circuit_lower_bounds" .complexity "Circuit lower bounds" .openStatus
    ["AC0", "TC0", "NC", "P/poly"]
    ["explicit functions require large circuits"]
    ["circuit class and uniformity hypotheses"]
    ["lower-bound conclusion"]
    ["many restricted lower bounds known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.unique_games" .complexity "Unique Games Conjecture" .openStatus
    ["constraint graph", "label cover"]
    ["hardness threshold behavior"]
    ["alphabet size and completeness/soundness parameters"]
    ["approximation hardness conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.eth_seth" .complexity "ETH and SETH" .openStatus
    ["satisfiability", "time lower bounds"]
    ["no subexponential or improved exponential algorithms"]
    ["SAT variant and encoding size"]
    ["time lower-bound hypothesis"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.derandomization" .complexity "Derandomization targets" .openStatus
    ["BPP", "P", "pseudorandom generators"]
    ["randomness can or cannot be removed efficiently"]
    ["PRG assumptions or circuit lower bounds"]
    ["class containment/separation"]
    ["conditional derandomization results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.quantum" .complexity "Quantum complexity targets" .openStatus
    ["BQP", "QMA", "quantum PCP"]
    ["quantum class separations and PCP behavior"]
    ["quantum verification model"]
    ["separation or hardness conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

def pdeTargets : List OpenTargetRecord := [
  mk "pde.navier_stokes" .pde "Navier-Stokes regularity" .openStatus
    ["Navier-Stokes equation", "fluid velocity"]
    ["existence, smoothness, uniqueness, blow-up obstruction"]
    ["initial data", "energy inequality"]
    ["global regularity or counterexample"]
    ["weak solution theory"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "pde.euler_regularity" .pde "Euler regularity" .openStatus
    ["Euler equation", "fluid velocity"]
    ["finite-time singularity or global regularity"]
    ["initial data class"]
    ["singularity/global conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.yang_mills_mass_gap" .pde "Yang-Mills mass gap" .openStatus
    ["Yang-Mills fields", "gauge group"]
    ["constructive QFT existence and mass gap"]
    ["axiomatic quantum field theory setup"]
    ["existence and positivity conclusion"]
    ["numerical and physical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "pde.constructive_qft" .pde "Constructive QFT" .openStatus
    ["Wightman axioms", "Osterwalder-Schrader axioms", "interacting fields"]
    ["construct interacting quantum fields"]
    ["dimension and model hypotheses"]
    ["axiomatic field construction"]
    ["many low-dimensional constructions"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.turbulence" .pde "Turbulence regularity and dissipation" .openStatus
    ["fluid flow", "inertial range", "energy cascade"]
    ["regularity and anomalous dissipation behavior"]
    ["scaling regime hypotheses"]
    ["law or regularity conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.wave_maps" .pde "Wave maps and harmonic maps" .partialStatus
    ["wave maps", "harmonic maps"]
    ["singularity and global regularity fragments"]
    ["domain, target, energy class"]
    ["global or blow-up classification"]
    ["many dimension/energy-dependent results"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [],
  mk "pde.schrodinger_operators" .pde "Schrodinger operator spectral transitions" .openStatus
    ["Schrodinger operators", "random or quasiperiodic potentials"]
    ["Anderson localization and spectral transition residues"]
    ["operator family and potential hypotheses"]
    ["localization/delocalization conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.free_boundary" .pde "Fluid free-boundary problems" .openStatus
    ["free boundaries", "fluid interfaces"]
    ["regularity and singularity atoms"]
    ["boundary condition and initial surface"]
    ["regularity or singularity conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

def geometryTopologyTargets : List OpenTargetRecord := [
  mk "gt.smooth_4d_poincare" .geometryTopology "Smooth 4D Poincare conjecture" .openStatus
    ["smooth four-manifolds", "homotopy four-sphere"]
    ["smooth four-sphere characterization"]
    ["smooth closed simply connected hypotheses"]
    ["diffeomorphism conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.surgery_theory" .geometryTopology "Surgery-theory residues" .openStatus
    ["manifolds", "surgery obstruction groups"]
    ["classification and obstruction vanishing targets"]
    ["dimension and category hypotheses"]
    ["classification conclusion"]
    ["many high-dimensional results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.triangulation" .geometryTopology "Triangulation variants" .partialStatus
    ["topological manifolds", "simplicial complexes"]
    ["triangulability and uniqueness variants"]
    ["dimension/category hypotheses"]
    ["triangulation conclusion"]
    ["some variants solved or refuted"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [],
  mk "gt.novikov" .geometryTopology "Novikov conjecture" .openStatus
    ["higher signatures", "fundamental groups"]
    ["homotopy invariance of higher signatures"]
    ["closed oriented manifold", "group cohomology class"]
    ["invariance conclusion"]
    ["many group classes known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.baum_connes" .geometryTopology "Baum-Connes conjecture" .openStatus
    ["C*-algebras", "K-theory", "groups"]
    ["assembly map isomorphism"]
    ["locally compact group hypotheses"]
    ["K-theoretic isomorphism"]
    ["many known cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.farrell_jones" .geometryTopology "Farrell-Jones conjecture" .openStatus
    ["group rings", "K-theory", "L-theory"]
    ["assembly map behavior"]
    ["group family hypotheses"]
    ["isomorphism conclusion"]
    ["many known cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.cannon" .geometryTopology "Cannon conjecture" .openStatus
    ["hyperbolic groups", "sphere boundary"]
    ["group acts geometrically on hyperbolic three-space"]
    ["Gromov hyperbolic group with S2 boundary"]
    ["Kleinian/geometric action conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.hopf_curvature" .geometryTopology "Hopf curvature conjecture" .openStatus
    ["Riemannian manifolds", "sectional curvature", "Euler characteristic"]
    ["curvature/topology constraints"]
    ["even-dimensional compact manifold"]
    ["Euler-characteristic sign conclusion"]
    ["known in special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

def algebraicGeometryTargets : List OpenTargetRecord := [
  mk "ag.hodge" .algebraicGeometry "Hodge conjecture" .openStatus
    ["smooth projective complex varieties", "Hodge classes"]
    ["Hodge classes arise from algebraic cycles"]
    ["rational Hodge class"]
    ["algebraic cycle existence"]
    ["known special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "ag.tate" .algebraicGeometry "Tate conjecture" .openStatus
    ["varieties over finitely generated fields", "Galois representations"]
    ["cycle classes match fixed cohomology"]
    ["prime and variety hypotheses"]
    ["cycle/cohomology comparison"]
    ["known special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.standard_conjectures" .algebraicGeometry "Grothendieck standard conjectures" .openStatus
    ["algebraic cycles", "Weil cohomology"]
    ["positivity and Lefschetz-type algebraicity"]
    ["smooth projective variety"]
    ["cycle operator conclusions"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.resolution_positive_characteristic" .algebraicGeometry "Resolution in positive characteristic" .openStatus
    ["singular varieties", "positive characteristic"]
    ["resolution of singularities"]
    ["dimension and field hypotheses"]
    ["regular model existence"]
    ["known in low dimensions"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.jacobian" .algebraicGeometry "Jacobian conjecture" .openStatus
    ["polynomial maps", "affine space"]
    ["constant nonzero Jacobian determinant implies invertibility"]
    ["field characteristic zero", "polynomial map"]
    ["polynomial inverse conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.cancellation" .algebraicGeometry "Affine cancellation problems" .openStatus
    ["affine varieties", "product with affine line"]
    ["cancellation of affine factors"]
    ["isomorphism after product"]
    ["base variety isomorphism conclusion"]
    ["some counterexamples and restricted positive results"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen []
]

def combinatoricsTargets : List OpenTargetRecord := [
  mk "comb.hadwiger" .combinatorics "Hadwiger conjecture" .openStatus
    ["graph minors", "chromatic number"]
    ["chromatic number forces complete minor"]
    ["finite graph", "chromatic threshold"]
    ["complete minor existence"]
    ["known for small cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.erdos_hajnal" .combinatorics "Erdos-Hajnal" .openStatus
    ["hereditary graph classes", "homogeneous sets"]
    ["forbidden induced subgraph yields polynomial homogeneous set"]
    ["fixed graph H"]
    ["clique or independent set lower bound"]
    []
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini],
  mk "comb.caccetta_haggkvist" .combinatorics "Caccetta-Haggkvist conjecture" .openStatus
    ["directed graph", "minimum outdegree", "directed cycles"]
    ["short directed cycle forced by outdegree"]
    ["finite digraph and outdegree bound"]
    ["cycle length conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.union_closed" .combinatorics "Frankl union-closed sets conjecture" .openStatus
    ["finite union-closed family", "elements"]
    ["some element occurs in at least half the sets"]
    ["nonempty finite union-closed family"]
    ["frequent element conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.rota_basis" .combinatorics "Rota basis conjecture" .openStatus
    ["matroids", "bases"]
    ["arrange bases into transversal bases"]
    ["rank n matroid with n bases"]
    ["transversal basis arrangement"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.graceful_tree" .combinatorics "Graceful tree conjecture" .openStatus
    ["trees", "graph labeling"]
    ["every tree is graceful"]
    ["finite tree"]
    ["graceful labeling existence"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.ryser_brualdi_stein" .combinatorics "Ryser-Brualdi-Stein" .openStatus
    ["Latin squares", "transversals"]
    ["large transversal exists"]
    ["Latin square order hypotheses"]
    ["transversal size conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.zarankiewicz_incidence" .combinatorics "Zarankiewicz and incidence variants" .openStatus
    ["bipartite graphs", "incidence structures"]
    ["forbidden-subgraph extremal bounds"]
    ["finite incidence or graph hypotheses"]
    ["edge/incidence bound"]
    ["many special bounds known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.cap_set_refinements" .combinatorics "Cap set refinements" .partialStatus
    ["finite vector spaces", "progression-free sets"]
    ["growth-rate refinements"]
    ["finite field and dimension hypotheses"]
    ["cardinality bound"]
    ["major cap-set theorem known"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [],
  mk "comb.sunflower_refinements" .combinatorics "Sunflower refinements" .partialStatus
    ["set systems", "sunflowers"]
    ["sharp threshold and growth refinements"]
    ["uniform family hypotheses"]
    ["sunflower existence bound"]
    ["improved bounds known"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen []
]

def physicsTargets : List OpenTargetRecord := [
  mk "physics.yang_mills_mass_gap" .physics "Yang-Mills mass gap" .openStatus
    ["gauge theory", "quantum fields"]
    ["existence and positive mass gap"]
    ["compact gauge group", "axiomatic QFT setup"]
    ["mass gap conclusion"]
    ["physical and numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "physics.constructive_qft" .physics "Constructive quantum field theory" .openStatus
    ["interacting fields", "Euclidean measures"]
    ["construct rigorous interacting models"]
    ["dimension and interaction hypotheses"]
    ["formal-law satisfaction"]
    ["known low-dimensional constructions"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "physics.statistical_mechanics_foundations" .physics "Statistical mechanics foundations" .openStatus
    ["many-particle systems", "thermodynamic limit"]
    ["derive macroscopic laws from microscopic dynamics"]
    ["scaling and limit hypotheses"]
    ["limit law conclusion"]
    ["many model-specific theorems"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "physics.turbulence" .physics "Turbulence" .openStatus
    ["fluid equations", "energy cascade"]
    ["inertial-range and dissipation laws"]
    ["Reynolds/scaling regime"]
    ["statistical law conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "physics.quantum_pcp" .physics "Quantum PCP conjecture" .openStatus
    ["local Hamiltonians", "quantum proofs"]
    ["constant-factor approximation remains hard"]
    ["Hamiltonian locality and promise gap"]
    ["hardness conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

def allTargets : List OpenTargetRecord :=
  millenniumTargets ++
  hilbertTargets ++
  erdosTargets ++
  numberTheoryTargets ++
  lFunctionTargets ++
  complexityTargets ++
  pdeTargets ++
  geometryTopologyTargets ++
  algebraicGeometryTargets ++
  combinatoricsTargets ++
  physicsTargets

theorem millenniumTargets_count :
    millenniumTargets.length = 7 := by
  rfl

theorem hilbertTargets_count :
    hilbertTargets.length = 8 := by
  rfl

theorem erdosTargets_count :
    erdosTargets.length = 10 := by
  rfl

theorem numberTheoryTargets_count :
    numberTheoryTargets.length = 13 := by
  rfl

theorem lFunctionTargets_count :
    lFunctionTargets.length = 6 := by
  rfl

theorem complexityTargets_count :
    complexityTargets.length = 9 := by
  rfl

theorem pdeTargets_count :
    pdeTargets.length = 8 := by
  rfl

theorem geometryTopologyTargets_count :
    geometryTopologyTargets.length = 8 := by
  rfl

theorem algebraicGeometryTargets_count :
    algebraicGeometryTargets.length = 6 := by
  rfl

theorem combinatoricsTargets_count :
    combinatoricsTargets.length = 10 := by
  rfl

theorem physicsTargets_count :
    physicsTargets.length = 5 := by
  rfl

theorem allTargets_count :
    allTargets.length = 90 := by
  rfl

def allTargetResidues : List Think.Residue :=
  allTargets.map targetResidue

theorem allTargetResidues_count :
    allTargetResidues.length = 90 := by
  rfl

theorem allTargetResidues_target :
    ∀ r ∈ allTargetResidues,
      r.target = FWR.Target.OpenConjectureLedger := by
  intro r hr
  rw [allTargetResidues] at hr
  rcases List.mem_map.mp hr with ⟨target, _ht, rfl⟩
  exact targetResidue_target target

theorem allTargets_checked_hasResidue :
    ∀ target ∈ allTargets, (targetChecked target).hasResidue = true := by
  intro target _h
  exact targetChecked_hasResidue target

theorem clay_millennium_target_count :
    (millenniumTargets.filter
      (fun target => sourceClayMillennium ∈ target.sourceRefs)).length = 7 := by
  rfl

theorem poincare_is_solved_reference_only :
    ∃ target ∈ millenniumTargets,
      target.targetId = "millennium.poincare" ∧
      target.status = TargetStatus.solvedReference ∧
      target.residueDisposition = ResidueDisposition.solvedReferenceOnly := by
  refine ⟨
    mk "millennium.poincare" .millennium "Poincare Conjecture" .solvedReference
      ["closed simply connected three-manifold"]
      ["three-sphere characterization"]
      ["topological manifold hypotheses"]
      ["reference-only solved control target"]
      ["Perelman proof via geometrization"]
      ["solved reference is not imported Lean proof"]
      .solvedReferenceOnly
      "verified Lean formalization or explicit external import policy for the solved theorem"
      [sourceClayMillennium],
    ?_, rfl, rfl, rfl⟩
  simp [millenniumTargets]

end Think.Targets.ConjectureLedger
