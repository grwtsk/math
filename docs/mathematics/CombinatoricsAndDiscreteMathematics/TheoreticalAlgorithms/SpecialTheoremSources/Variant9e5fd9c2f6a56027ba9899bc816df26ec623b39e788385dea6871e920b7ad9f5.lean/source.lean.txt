import Think.SourceTree.Legacy.Arithmetic.BSDRankIdentity

set_option autoImplicit false

namespace Think.Arithmetic.SpecialTheoremSources

inductive ArithmeticSourceKind where
  | mordellWeil
  | hasseWeilLFunction
  | bsdSpecialCase
  | modularity
  | averageRank
  | parity
  | iwasawa
deriving Repr, DecidableEq

inductive SourceAuthorityStatus where
  | sourceMathematicalTheorem
  | statementSurfaceOnly
  | externalTheoremNotImported
  | bridgeObligation
  | checkedImportAvailable
  | importedTheorem
deriving Repr, DecidableEq

structure ArithmeticTheoremSource where
  sourceId : String
  sourceKind : ArithmeticSourceKind
  theoremLabel : String
  statementSummary : String
  dependencyChain : List String
  authorityStatus : SourceAuthorityStatus
  residueAtoms : List String
deriving Repr, DecidableEq

/-
Each source is a pure-mathematical theorem surface. In this pass its proof
authority is not imported. It is available as a source surface and bridge
target.
-/

def mordell1922 : ArithmeticTheoremSource := {
  sourceId := "mordell_1922"
  sourceKind := ArithmeticSourceKind.mordellWeil
  theoremLabel := "Mordell finite-generation theorem surface for elliptic curves over Q"
  statementSummary :=
    "Rational points on an elliptic curve over Q form a finitely generated abelian group"
  dependencyChain := [
    "elliptic curve group law",
    "rational point surface",
    "torsion subgroup surface",
    "rank surface"
  ]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "elliptic_curve.group_law.statement",
    "mordell_weil.rational_point_group_surface",
    "mordell_weil.torsion_subgroup_surface",
    "mordell_weil.rank_surface",
    "mordell_theorem.totality_bridge_pending"
  ]
}

def coatesWiles1977 : ArithmeticTheoremSource := {
  sourceId := "coates_wiles_1977"
  sourceKind := ArithmeticSourceKind.bsdSpecialCase
  theoremLabel := "Coates-Wiles BSD-related CM rank-zero theorem surface"
  statementSummary := "Special BSD-related result for CM elliptic curves under stated hypotheses"
  dependencyChain := ["CM elliptic curve", "Hasse-Weil L-function", "nonvanishing condition"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.coates_wiles",
    "bsd.algebraic_rank_surface",
    "bsd.analytic_rank_surface",
    "coates_wiles.proof_import_obligation"
  ]
}

def arthaud1978 : ArithmeticTheoremSource := {
  sourceId := "arthaud_1978"
  sourceKind := ArithmeticSourceKind.bsdSpecialCase
  theoremLabel := "Arthaud BSD-related theorem surface"
  statementSummary := "Special BSD-related arithmetic theorem surface retained as a bridge target"
  dependencyChain := ["elliptic curve surface", "BSD special-case hypotheses"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.arthaud",
    "bsd.rank_bridge.special_case_surface",
    "arthaud.proof_import_obligation"
  ]
}

def grossZagier1986 : ArithmeticTheoremSource := {
  sourceId := "gross_zagier_1986"
  sourceKind := ArithmeticSourceKind.bsdSpecialCase
  theoremLabel := "Gross-Zagier Heegner points and derivatives of L-series"
  statementSummary := "Derivative of L-series related to heights of Heegner points"
  dependencyChain := ["modularity surface", "Heegner hypothesis", "height pairing", "L-series derivative"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.gross_zagier",
    "bsd.order_of_vanishing_surface",
    "bsd.height_pairing_surface",
    "gross_zagier.proof_import_obligation"
  ]
}

def kolyvagin1989 : ArithmeticTheoremSource := {
  sourceId := "kolyvagin_1989"
  sourceKind := ArithmeticSourceKind.bsdSpecialCase
  theoremLabel := "Kolyvagin Euler system BSD rank zero/one consequences"
  statementSummary := "Special rank and Sha finiteness consequences under analytic rank hypotheses"
  dependencyChain := ["modularity surface", "Euler systems", "Heegner points", "rank hypothesis"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.kolyvagin",
    "bsd.euler_system_surface",
    "bsd.rank_bridge.special_case_surface",
    "kolyvagin.proof_import_obligation"
  ]
}

def rubin1991 : ArithmeticTheoremSource := {
  sourceId := "rubin_1991"
  sourceKind := ArithmeticSourceKind.iwasawa
  theoremLabel := "Rubin CM main conjecture BSD-related theorem surface"
  statementSummary := "CM elliptic curve Iwasawa-theoretic BSD-related bridge target"
  dependencyChain := ["CM elliptic curve", "Iwasawa theory", "p-adic L-function"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.rubin",
    "bsd.iwasawa_surface",
    "bsd.p_adic_lfunction_surface",
    "rubin.proof_import_obligation"
  ]
}

def wiles1995SemistableModularity : ArithmeticTheoremSource := {
  sourceId := "wiles_1995"
  sourceKind := ArithmeticSourceKind.modularity
  theoremLabel := "Semistable modularity theorem surface"
  statementSummary := "Semistable elliptic curves over Q are modular"
  dependencyChain := ["elliptic curve over Q", "semistability", "modular form surface"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "wiles.source_surface",
    "wiles.elliptic_curve_over_Q_surface",
    "wiles.semistable_predicate_surface",
    "wiles.modular_form_surface",
    "wiles.modularity_predicate_surface",
    "wiles.galois_representation_surface",
    "wiles.deformation_ring_surface",
    "wiles.hecke_algebra_surface",
    "wiles.r_equals_t_surface",
    "wiles.modularity_lifting_surface",
    "wiles.semistable_modularity.statement",
    "wiles.semistable_modularity.proof_import"
  ]
}

def bcdt2001Modularity : ArithmeticTheoremSource := {
  sourceId := "bcdt_2001"
  sourceKind := ArithmeticSourceKind.modularity
  theoremLabel := "Modularity theorem for elliptic curves over Q surface"
  statementSummary := "All elliptic curves over Q are modular"
  dependencyChain := ["elliptic curve over Q", "Galois representation", "modular form surface"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bcdt.source_surface",
    "bcdt.elliptic_curve_over_Q_surface",
    "bcdt.full_modularity.statement",
    "bcdt.galois_representation_surface",
    "bcdt.modular_form_surface",
    "bcdt.proof_import"
  ]
}

def nekovar2009 : ArithmeticTheoremSource := {
  sourceId := "nekovar_2009"
  sourceKind := ArithmeticSourceKind.parity
  theoremLabel := "Nekovar parity theorem surface"
  statementSummary := "Selmer complex and parity bridge target for elliptic curves"
  dependencyChain := ["Selmer complex", "parity statement", "elliptic curve surface"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.parity_surface.nekovar",
    "bsd.selmer_complex_surface",
    "nekovar.proof_import_obligation"
  ]
}

def dokchitserDokchitser2010 : ArithmeticTheoremSource := {
  sourceId := "dokchitser_dokchitser_2010"
  sourceKind := ArithmeticSourceKind.parity
  theoremLabel := "Dokchitser-Dokchitser parity theorem surface"
  statementSummary := "Parity result for elliptic curves retained as external theorem target"
  dependencyChain := ["root number surface", "Selmer rank parity", "elliptic curve surface"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.parity_surface.dokchitser_dokchitser",
    "bsd.root_number_surface",
    "dokchitser_dokchitser.proof_import_obligation"
  ]
}

def skinnerUrban2014 : ArithmeticTheoremSource := {
  sourceId := "skinner_urban_2014"
  sourceKind := ArithmeticSourceKind.iwasawa
  theoremLabel := "Skinner-Urban Iwasawa main conjecture BSD-related theorem surface"
  statementSummary := "Iwasawa-theoretic bridge target for BSD-related rank implications"
  dependencyChain := ["Iwasawa main conjecture", "modularity surface", "p-adic L-function"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.iwasawa_surface.skinner_urban",
    "bsd.p_adic_lfunction_surface",
    "skinner_urban.proof_import_obligation"
  ]
}

def bhargavaShankar2015 : ArithmeticTheoremSource := {
  sourceId := "bhargava_shankar_2015"
  sourceKind := ArithmeticSourceKind.averageRank
  theoremLabel := "Bhargava-Shankar average rank theorem surface"
  statementSummary := "Average rank bounds for elliptic curves retained as external theorem target"
  dependencyChain := ["elliptic curve family", "height ordering", "average rank surface"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.average_rank_surface.bhargava_shankar",
    "bsd.height_ordering_surface",
    "bhargava_shankar.proof_import_obligation"
  ]
}

def allArithmeticSources : List ArithmeticTheoremSource := [
  mordell1922,
  coatesWiles1977,
  arthaud1978,
  grossZagier1986,
  kolyvagin1989,
  rubin1991,
  wiles1995SemistableModularity,
  bcdt2001Modularity,
  nekovar2009,
  dokchitserDokchitser2010,
  skinnerUrban2014,
  bhargavaShankar2015
]

theorem allArithmeticSources_count :
    allArithmeticSources.length = 12 := by
  rfl

theorem allArithmeticSources_no_imported_authority :
    ∀ s ∈ allArithmeticSources,
      s.authorityStatus ≠ SourceAuthorityStatus.importedTheorem := by
  intro s hs
  simp [allArithmeticSources] at hs
  rcases hs with h | h | h | h | h | h | h | h | h | h | h | h <;>
    subst s <;>
    simp [
      mordell1922,
      coatesWiles1977,
      arthaud1978,
      grossZagier1986,
      kolyvagin1989,
      rubin1991,
      wiles1995SemistableModularity,
      bcdt2001Modularity,
      nekovar2009,
      dokchitserDokchitser2010,
      skinnerUrban2014,
      bhargavaShankar2015
    ]

end Think.Arithmetic.SpecialTheoremSources
