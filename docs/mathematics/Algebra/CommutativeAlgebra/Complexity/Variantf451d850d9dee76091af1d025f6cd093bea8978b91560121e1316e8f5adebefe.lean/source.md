# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Complexity.Variantf451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3e95c8dae3a878f031447cc17d3f5c75145f9aa` · SHA-256 `f451d850d9dee76091af1d025f6cd093bea8978b91560121e1316e8f5adebefe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Complexity.SmoothStream
import Folder.GrandChallenge.Complexity.GlitchObstruction
import Folder.GrandChallenge.Complexity.BinaryMatrixArrangement
import Folder.GrandChallenge.Complexity.BinaryCompressionRecursion
import Folder.GrandChallenge.Complexity.DegaussSurgery
import Folder.GrandChallenge.Complexity.LeanFrameConnectivity
import Folder.GrandChallenge.Complexity.UniformPivotCompleteness
import Folder.GrandChallenge.Complexity.RobinMassGapGlitchResolution
import Folder.GrandChallenge.Complexity.SpheroidalShellPivot
import Folder.GrandChallenge.Complexity.InductionScalingControl
import Folder.GrandChallenge.Complexity.KakeyaNeedleSmoothing
import Folder.GrandChallenge.Complexity.MirzakhaniKakeyaSmoothing
import Folder.GrandChallenge.Complexity.RecursiveRuleClosure
import Folder.GrandChallenge.Complexity.TaoKakeyaSmoothing
import Folder.GrandChallenge.Complexity.BinaryDeterminantLift

/-!
# Folder.Theorem.GrandChallenge.Complexity

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports complexity branch contract facts.
Ontology: proof.grand_challenge_complexity
Pivot role: complexity
Zero typology: reconstruction-obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem complexity_polynomial_verification_if_supplied
    (C : Folder.GrandChallenge.Complexity.CertificateSystem) :
    C.polynomialVerification :=
  Folder.GrandChallenge.Complexity.complexity_polynomial_verification_if_supplied C

theorem complexity_smooth_stream_reconstructs_if_supplied
    (S : Folder.GrandChallenge.Complexity.SmoothStream) :
    S.deterministicReconstructionCompatible :=
  Folder.GrandChallenge.Complexity.complexity_smooth_stream_reconstructs_if_supplied S

theorem complexity_glitch_obstruction_if_supplied
    (G : Folder.GrandChallenge.Complexity.GlitchObstruction) :
    G.obstructionToPolynomialReconstruction :=
  Folder.GrandChallenge.Complexity.complexity_glitch_obstruction_if_supplied G

theorem elliptic_torsion_is_analogy_only
    (G : Folder.GrandChallenge.Complexity.GlitchObstruction) :
    G.ellipticTorsionAnalogyOnly :=
  Folder.GrandChallenge.Complexity.elliptic_torsion_is_analogy_only G

theorem ruleset_compression_optimal_if_supplied
    (R : Folder.GrandChallenge.Complexity.CompressionRuleset) :
    R.compressionOptimal :=
  Folder.GrandChallenge.Complexity.ruleset_compression_optimal_if_supplied R

theorem ruleset_deterministic_if_supplied
    (R : Folder.GrandChallenge.Complexity.CompressionRuleset) :
    R.decompressionDeterministic :=
  Folder.GrandChallenge.Complexity.ruleset_deterministic_if_supplied R

theorem arrangement_classified_if_supplied
    (A : Folder.GrandChallenge.Complexity.ArrangementTheoremTarget) :
    Folder.GrandChallenge.Complexity.SmoothRuleset A.optimalRuleset ∨
      Folder.GrandChallenge.Complexity.GlitchedRuleset A.optimalRuleset :=
  Folder.GrandChallenge.Complexity.arrangement_classified_if_supplied A

theorem p_equals_np_target_if_supplied
    (T : Folder.GrandChallenge.Complexity.PEqualsNPTarget)
    (R : Folder.GrandChallenge.Complexity.CompressionRuleset)
    (h : Folder.GrandChallenge.Complexity.GlitchedRuleset R) :
    ∃ R' : Folder.GrandChallenge.Complexity.CompressionRuleset,
      Folder.GrandChallenge.Complexity.SmoothRuleset R' :=
  Folder.GrandChallenge.Complexity.p_equals_np_target_if_supplied T R h

theorem p_not_equals_np_target_if_supplied
    (T : Folder.GrandChallenge.Complexity.PNotEqualsNPTarget) :
    ∃ R : Folder.GrandChallenge.Complexity.CompressionRuleset,
      Folder.GrandChallenge.Complexity.GlitchedRuleset R ∧
      ¬ ∃ R' : Folder.GrandChallenge.Complexity.CompressionRuleset,
        Folder.GrandChallenge.Complexity.SmoothRuleset R' :=
  Folder.GrandChallenge.Complexity.p_not_equals_np_target_if_supplied T

theorem glitched_stream_requires_backtracking_if_supplied
    (B : Folder.GrandChallenge.Complexity.BinaryCompressionRecursion)
    {S : B.program.State}
    (h : B.glitchedStream S) :
    Folder.GrandChallenge.Complexity.RequiresBacktracking S :=
  Folder.GrandChallenge.Complexity.glitched_stream_requires_backtracking_if_supplied B h

theorem binary_recursion_forbidden_escape_obstructed
    (B : Folder.GrandChallenge.Complexity.BinaryCompressionRecursion)
    {I : B.program.Invariant}
    {S : B.program.State}
    (hcompat : B.program.compatible I S)
    (hescape : B.program.ForbiddenEscape S) :
    B.program.obstruction I S :=
  Folder.GrandChallenge.Complexity.binary_recursion_forbidden_escape_obstructed
    B hcompat hescape

theorem finite_frame_if_supplied
    (F : Folder.GrandChallenge.Complexity.LeanProjectFiniteFrame) :
    F.finiteFrame :=
  Folder.GrandChallenge.Complexity.finite_frame_if_supplied F

theorem halo_rearranges_if_supplied
    (A : Folder.GrandChallenge.Complexity.HaloArrangement) :
    A.rearrangesToHalo :=
  Folder.GrandChallenge.Complexity.halo_rearranges_if_supplied A

theorem degauss_arrangement_classified_if_supplied
    (A : Folder.GrandChallenge.Complexity.BinaryMatrixStreamArrangementTheoremTarget) :
    (∃ S : Folder.GrandChallenge.Complexity.SmoothDegaussRuleset,
        S.moveClass = A.moveClass) ∨
      (∃ G : Folder.GrandChallenge.Complexity.GlitchedDegaussRuleset,
        G.moveClass = A.moveClass) :=
  Folder.GrandChallenge.Complexity.degauss_arrangement_classified_if_supplied A

theorem degauss_residue_smoothable_if_supplied
    (D : Folder.GrandChallenge.Complexity.DegaussForkTheoremTarget) :
    D.residueSmoothable :=
  Folder.GrandChallenge.Complexity.degauss_residue_smoothable_if_supplied D

theorem degauss_residue_irreducible_if_supplied
    (D : Folder.GrandChallenge.Complexity.DegaussForkTheoremTarget) :
    D.residueIrreducible :=
  Folder.GrandChallenge.Complexity.degauss_residue_irreducible_if_supplied D

theorem degauss_p_equals_np_target_if_supplied
    (T : Folder.GrandChallenge.Complexity.DegaussPEqualsNPTarget)
    (G : Folder.GrandChallenge.Complexity.GlitchedDegaussRuleset) :
    ∃ S : Folder.GrandChallenge.Complexity.SmoothDegaussRuleset,
      S.moveClass = G.moveClass :=
  Folder.GrandChallenge.Complexity.degauss_p_equals_np_target_if_supplied T G

theorem degauss_p_not_equals_np_target_if_supplied
    (T : Folder.GrandChallenge.Complexity.DegaussPNotEqualsNPTarget) :
    ∃ G : Folder.GrandChallenge.Complexity.GlitchedDegaussRuleset,
      Folder.GrandChallenge.Complexity.IrreducibleDegaussGlitch G :=
  Folder.GrandChallenge.Complexity.degauss_p_not_equals_np_target_if_supplied T

theorem dependency_path_if_supplied
    {G : Folder.GrandChallenge.Complexity.TheoremTraversalGraph}
    {source target : Folder.GrandChallenge.Complexity.TheoremNode}
    (C :
      Folder.GrandChallenge.Complexity.DependencyTraversalCertificate
        G source target) :
    G.pathExists source target :=
  Folder.GrandChallenge.Complexity.dependency_path_if_supplied C

theorem decompression_reconstructs_graph_if_supplied
    {G : Folder.GrandChallenge.Complexity.TheoremTraversalGraph}
    (V : Folder.GrandChallenge.Complexity.DecompressionVerifier G) :
    V.reconstructsOriginalGraph :=
  Folder.GrandChallenge.Complexity.decompression_reconstructs_graph_if_supplied V

theorem compression_preserves_traversal_if_supplied
    (C : Folder.GrandChallenge.Complexity.BinaryMatrixCompression) :
    C.preservesTraversal :=
  Folder.GrandChallenge.Complexity.compression_preserves_traversal_if_supplied C

theorem glitched_traversal_has_no_path
    (G : Folder.GrandChallenge.Complexity.GlitchedTraversal) :
    ¬ G.graph.pathExists G.source G.target :=
  Folder.GrandChallenge.Complexity.glitched_traversal_has_no_path G

theorem smooth_repair_polynomial_if_supplied
    (R : Folder.GrandChallenge.Complexity.SmoothTraversalRepair) :
    R.polynomialRepair :=
  Folder.GrandChallenge.Complexity.smooth_repair_polynomial_if_supplied R

theorem sticky_boundary_no_polynomial_repair_if_supplied
    {G : Folder.GrandChallenge.Complexity.GlitchedTraversal}
    (S : Folder.GrandChallenge.Complexity.StickyBoundaryObstruction G) :
    ¬ ∃ R : Folder.GrandChallenge.Complexity.SmoothTraversalRepair,
      R.glitch = G ∧ R.polynomialRepair :=
  Folder.GrandChallenge.Complexity.sticky_boundary_no_polynomial_repair_if_supplied S

theorem connectivity_classifies_pairs_if_supplied
    (T : Folder.GrandChallenge.Complexity.BinaryMatrixStreamConnectivityTarget)
    (a b : Folder.GrandChallenge.Complexity.TheoremNode) :
    T.compression.graph.pathExists a b ∨
      ∃ G : Folder.GrandChallenge.Complexity.GlitchedTraversal,
        G.graph = T.compression.graph ∧ G.source = a ∧ G.target = b :=
  Folder.GrandChallenge.Complexity.connectivity_classifies_pairs_if_supplied T a b

theorem connectivity_repair_or_sticky_if_supplied
    (T : Folder.GrandChallenge.Complexity.BinaryMatrixStreamConnectivityTarget)
    (G : Folder.GrandChallenge.Complexity.GlitchedTraversal) :
    (∃ R : Folder.GrandChallenge.Complexity.SmoothTraversalRepair,
        R.glitch = G ∧ R.polynomialRepair) ∨
      Folder.GrandChallenge.Complexity.StickyBoundaryObstruction G :=
  Folder.GrandChallenge.Complexity.connectivity_repair_or_sticky_if_supplied T G

theorem grh_style_uniformity_bounds_if_supplied
    (G : Folder.GrandChallenge.Complexity.GRHStyleUniformityContract) :
    G.supportsUniformFrameBounds :=
  Folder.GrandChallenge.Complexity.grh_style_uniformity_bounds_if_supplied G

theorem uniform_pivot_covers_frame_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformPivotCompleteness)
    (n : Nat)
    (F : U.Frame n) :
    U.coversFrame n F :=
  Folder.GrandChallenge.Complexity.uniform_pivot_covers_frame_if_supplied U n F

theorem uniform_pivot_fixed_points_act_as_pivots_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformPivotCompleteness)
    (n : Nat)
    (F : U.Frame n) :
    U.fixedPointsActAsPivots n F :=
  Folder.GrandChallenge.Complexity.uniform_pivot_fixed_points_act_as_pivots_if_supplied
    U n F

theorem uniform_pivot_trace_faithful_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformPivotCompleteness)
    (n : Nat)
    (F : U.Frame n) :
    U.traceFaithful n F :=
  Folder.GrandChallenge.Complexity.uniform_pivot_trace_faithful_if_supplied U n F

theorem uniform_pivot_trace_rejects_false_paths_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformPivotCompleteness)
    (n : Nat)
    (F : U.Frame n) :
    U.traceRejectsFalsePaths n F :=
  Folder.GrandChallenge.Complexity.uniform_pivot_trace_rejects_false_paths_if_supplied
    U n F

theorem uniform_pivot_every_path_classified_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformPivotCompleteness)
    (n : Nat)
    (F : U.Frame n) :
    U.everyPathClassified n F :=
  Folder.GrandChallenge.Complexity.uniform_pivot_every_path_classified_if_supplied
    U n F

theorem uniform_pivot_decidable_classification_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformPivotCompleteness)
    (n : Nat)
    (F : U.Frame n) :
    U.decidableClassification n F :=
  Folder.GrandChallenge.Complexity.uniform_pivot_decidable_classification_if_supplied
    U n F

theorem grh_fixed_point_uniformity_supports_pivot_if_supplied
    (B : Folder.GrandChallenge.Complexity.GRHFixedPointPivotBridge) :
    B.uniformitySupportsPivotCompleteness :=
  Folder.GrandChallenge.Complexity.grh_fixed_point_uniformity_supports_pivot_if_supplied B

theorem grh_fixed_point_trace_supports_faithfulness_if_supplied
    (B : Folder.GrandChallenge.Complexity.GRHFixedPointPivotBridge) :
    B.fixedPointTraceSupportsFaithfulness :=
  Folder.GrandChallenge.Complexity.grh_fixed_point_trace_supports_faithfulness_if_supplied B

theorem polynomial_smoothness_decompression_if_supplied
    (P : Folder.GrandChallenge.Complexity.PolynomialSmoothness) :
    P.polynomialDecompression :=
  Folder.GrandChallenge.Complexity.polynomial_smoothness_decompression_if_supplied P

theorem polynomial_smoothness_no_external_disambiguator_if_supplied
    (P : Folder.GrandChallenge.Complexity.PolynomialSmoothness) :
    P.noExternalDisambiguator :=
  Folder.GrandChallenge.Complexity.polynomial_smoothness_no_external_disambiguator_if_supplied P

theorem irreducible_glitch_super_polynomial_if_supplied
    (G : Folder.GrandChallenge.Complexity.IrreducibleGlitchFamily) :
    G.superPolynomialDisambiguationRequired :=
  Folder.GrandChallenge.Complexity.irreducible_glitch_super_polynomial_if_supplied G

theorem robin_boundary_passes_if_supplied
    (R : Folder.GrandChallenge.Complexity.RobinBoundaryCertificate) :
    R.passesRobinTypeBoundary :=
  Folder.GrandChallenge.Complexity.robin_boundary_passes_if_supplied R

theorem robin_boundary_sharp_or_failed_if_supplied
    (R : Folder.GrandChallenge.Complexity.RobinBoundaryCertificate) :
    R.boundarySharpOrFailed :=
  Folder.GrandChallenge.Complexity.robin_boundary_sharp_or_failed_if_supplied R

theorem mass_gap_positive_if_supplied
    (M : Folder.GrandChallenge.Complexity.MassGapStickyBoundary) :
    M.positiveGap :=
  Folder.GrandChallenge.Complexity.mass_gap_positive_if_supplied M

theorem mass_gap_cannot_decay_if_supplied
    (M : Folder.GrandChallenge.Complexity.MassGapStickyBoundary) :
    M.cannotDecayToZero :=
  Folder.GrandChallenge.Complexity.mass_gap_cannot_decay_if_supplied M

theorem smooth_resolution_polynomial_if_supplied
    (S : Folder.GrandChallenge.Complexity.SmoothResolution) :
    S.polynomialInternalSmoothing :=
  Folder.GrandChallenge.Complexity.smooth_resolution_polynomial_if_supplied S

theorem sticky_obstruction_robin_boundary_if_supplied
    (O : Folder.GrandChallenge.Complexity.StickyObstruction) :
    O.robinBoundaryFailsOrIsSharp :=
  Folder.GrandChallenge.Complexity.sticky_obstruction_robin_boundary_if_supplied O

theorem sticky_obstruction_mass_gap_if_supplied
    (O : Folder.GrandChallenge.Complexity.StickyObstruction) :
    O.massGapBoundarySticky :=
  Folder.GrandChallenge.Complexity.sticky_obstruction_mass_gap_if_supplied O

theorem sticky_obstruction_no_internal_polynomial_smoothing_if_supplied
    (O : Folder.GrandChallenge.Complexity.StickyObstruction) :
    O.noInternalPolynomialSmoothingKnown :=
  Folder.GrandChallenge.Complexity.sticky_obstruction_no_internal_polynomial_smoothing_if_supplied
    O

theorem robin_mass_gap_glitch_classified_if_supplied
    (R : Folder.GrandChallenge.Complexity.RobinMassGapGlitchResolution) :
    (∃ S : Folder.GrandChallenge.Complexity.SmoothResolution,
        S.residue = R.residue) ∨
      (∃ O : Folder.GrandChallenge.Complexity.StickyObstruction,
        O.residue = R.residue) :=
  Folder.GrandChallenge.Complexity.robin_mass_gap_glitch_classified_if_supplied R

theorem spheroidal_shell_surrounds_glitch_if_supplied
    (P : Folder.GrandChallenge.Complexity.SpheroidalShellPivot) :
    P.surroundsGlitch :=
  Folder.GrandChallenge.Complexity.spheroidal_shell_surrounds_glitch_if_supplied P

theorem spheroidal_shell_enough_room_if_supplied
    (P : Folder.GrandChallenge.Complexity.SpheroidalShellPivot) :
    P.enoughRoomForNeedleAction :=
  Folder.GrandChallenge.Complexity.spheroidal_shell_enough_room_if_supplied P

theorem induction_scaling_decreases_glitch_if_supplied
    (S : Folder.GrandChallenge.Complexity.InductionScalingControl) :
    S.decreasesGlitchMeasure :=
  Folder.GrandChallenge.Complexity.induction_scaling_decreases_glitch_if_supplied S

theorem induction_scaling_polynomial_move_bound_if_supplied
    (S : Folder.GrandChallenge.Complexity.InductionScalingControl) :
    S.polynomialMoveBound :=
  Folder.GrandChallenge.Complexity.induction_scaling_polynomial_move_bound_if_supplied S

theorem kakeya_control_preserves_verifier_if_supplied
    (K : Folder.GrandChallenge.Complexity.KakeyaNeedleControl) :
    K.preservesVerifier :=
  Folder.GrandChallenge.Complexity.kakeya_control_preserves_verifier_if_supplied K

theorem kakeya_control_preserves_decompression_if_supplied
    (K : Folder.GrandChallenge.Complexity.KakeyaNeedleControl) :
    K.preservesDecompressionCorrectness :=
  Folder.GrandChallenge.Complexity.kakeya_control_preserves_decompression_if_supplied
    K

theorem kakeya_needle_smoothing_if_supplied
    (K : Folder.GrandChallenge.Complexity.KakeyaNeedleSmoothingContract)
    (hV : K.control.preservesVerifier)
    (hD : K.control.preservesDecompressionCorrectness)
    (hM : K.scaling.decreasesGlitchMeasure)
    (hP : K.scaling.polynomialMoveBound) :
    K.polynomialSmoothing :=
  Folder.GrandChallenge.Complexity.kakeya_needle_smoothing_if_supplied
    K hV hD hM hP

theorem uniform_kakeya_nonsticky_pivots_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformKakeyaNeedleSmoothingRoute) :
    U.everyGlitchedFrameHasNonStickyPivot :=
  Folder.GrandChallenge.Complexity.uniform_kakeya_nonsticky_pivots_if_supplied U

theorem uniform_kakeya_controls_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformKakeyaNeedleSmoothingRoute) :
    U.everyGlitchedFrameHasKakeyaControl :=
  Folder.GrandChallenge.Complexity.uniform_kakeya_controls_if_supplied U

theorem uniform_kakeya_polynomial_growth_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformKakeyaNeedleSmoothingRoute) :
    U.uniformPolynomialMoveGrowth :=
  Folder.GrandChallenge.Complexity.uniform_kakeya_polynomial_growth_if_supplied U

theorem smoothing_boundary_decomposes_if_supplied
    (B : Folder.GrandChallenge.Complexity.SmoothingBoundaryDecomposition) :
    B.boundaryDecomposes :=
  Folder.GrandChallenge.Complexity.smoothing_boundary_decomposes_if_supplied B

theorem mirzakhani_volume_recursion_if_supplied
    (V : Folder.GrandChallenge.Complexity.MirzakhaniStyleVolumeRecursion) :
    V.volumeRecursionHolds :=
  Folder.GrandChallenge.Complexity.mirzakhani_volume_recursion_if_supplied V

theorem mirzakhani_boundary_decomposition_if_supplied
    (V : Folder.GrandChallenge.Complexity.MirzakhaniStyleVolumeRecursion) :
    V.boundaryDecompositionHolds :=
  Folder.GrandChallenge.Complexity.mirzakhani_boundary_decomposition_if_supplied V

theorem nonsticky_sticky_boundary_controlled_if_supplied
    (N : Folder.GrandChallenge.Complexity.NonStickySmoothingExistence) :
    N.stickyBoundaryControlled :=
  Folder.GrandChallenge.Complexity.nonsticky_sticky_boundary_controlled_if_supplied N

theorem nonsticky_path_exists_if_supplied
    (N : Folder.GrandChallenge.Complexity.NonStickySmoothingExistence) :
    N.nonStickyPathExists :=
  Folder.GrandChallenge.Complexity.nonsticky_path_exists_if_supplied N

theorem nonsticky_polynomial_path_bound_if_supplied
    (N : Folder.GrandChallenge.Complexity.NonStickySmoothingExistence) :
    N.polynomialPathBound :=
  Folder.GrandChallenge.Complexity.nonsticky_polynomial_path_bound_if_supplied N

theorem mirzakhani_kakeya_smoothing_if_supplied
    (T : Folder.GrandChallenge.Complexity.MirzakhaniKakeyaSmoothingTarget) :
    T.smoothingConclusion :=
  Folder.GrandChallenge.Complexity.mirzakhani_kakeya_smoothing_if_supplied T

theorem recursive_ruleset_polynomial_growth_if_supplied
    (R : Folder.GrandChallenge.Complexity.RecursiveRuleset) :
    R.polynomialGrowth :=
  Folder.GrandChallenge.Complexity.recursive_ruleset_polynomial_growth_if_supplied R

theorem workspace_enough_zero_boundary_if_supplied
    (W : Folder.GrandChallenge.Complexity.WorkspaceDensityCertificate) :
    W.enoughZeroBoundary :=
  Folder.GrandChallenge.Complexity.workspace_enough_zero_boundary_if_supplied W

theorem workspace_balanced_bits_if_supplied
    (W : Folder.GrandChallenge.Complexity.WorkspaceDensityCertificate) :
    W.balancedBitDistribution :=
  Folder.GrandChallenge.Complexity.workspace_balanced_bits_if_supplied W

theorem workspace_enough_room_if_supplied
    (W : Folder.GrandChallenge.Complexity.WorkspaceDensityCertificate) :
    W.enoughRoomForDecompression :=
  Folder.GrandChallenge.Complexity.workspace_enough_room_if_supplied W

theorem workspace_nonsticky_if_supplied
    (W : Folder.GrandChallenge.Complexity.WorkspaceDensityCertificate) :
    W.nonStickyWorkspace :=
  Folder.GrandChallenge.Complexity.workspace_nonsticky_if_supplied W

theorem recursive_closure_preserves_verifier_if_supplied
    (C : Folder.GrandChallenge.Complexity.RecursiveRuleClosure) :
    C.preservesVerifier :=
  Folder.GrandChallenge.Complexity.recursive_closure_preserves_verifier_if_supplied C

theorem recursive_closure_preserves_decompression_if_supplied
    (C : Folder.GrandChallenge.Complexity.RecursiveRuleClosure) :
    C.preservesDecompressionCorrectness :=
  Folder.GrandChallenge.Complexity.recursive_closure_preserves_decompression_if_supplied C

theorem recursive_closure_rule_growth_polynomial_if_supplied
    (C : Folder.GrandChallenge.Complexity.RecursiveRuleClosure) :
    C.ruleGrowthPolynomial :=
  Folder.GrandChallenge.Complexity.recursive_closure_rule_growth_polynomial_if_supplied C

theorem uniform_recursive_compresses_to_polynomial_word_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformRecursiveCompressionSmoothing) :
    U.allFramesCompressToPolynomialWord :=
  Folder.GrandChallenge.Complexity.uniform_recursive_compresses_to_polynomial_word_if_supplied
    U

theorem uniform_recursive_rule_growth_polynomial_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformRecursiveCompressionSmoothing) :
    U.allRuleGrowthPolynomial :=
  Folder.GrandChallenge.Complexity.uniform_recursive_rule_growth_polynomial_if_supplied U

theorem uniform_recursive_workspaces_nonsticky_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformRecursiveCompressionSmoothing) :
    U.allWorkspacesNonSticky :=
  Folder.GrandChallenge.Complexity.uniform_recursive_workspaces_nonsticky_if_supplied U

theorem uniform_recursive_moves_tracked_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformRecursiveCompressionSmoothing) :
    U.everyMoveTrackedByRuleLog :=
  Folder.GrandChallenge.Complexity.uniform_recursive_moves_tracked_if_supplied U

theorem uniform_recursive_glitches_smoothable_or_classified_if_supplied
    (U : Folder.GrandChallenge.Complexity.UniformRecursiveCompressionSmoothing) :
    U.everyGlitchSmoothableOrClassified :=
  Folder.GrandChallenge.Complexity.uniform_recursive_glitches_smoothable_or_classified_if_supplied
    U

theorem tao_critical_norm_bounded_if_supplied
    (T : Folder.GrandChallenge.Complexity.TaoCriticalControl) :
    T.criticalNormBounded :=
  Folder.GrandChallenge.Complexity.tao_critical_norm_bounded_if_supplied T

theorem tao_preserves_true_nonlinearity_if_supplied
    (T : Folder.GrandChallenge.Complexity.TaoCriticalControl) :
    T.preservesTrueNonlinearity :=
  Folder.GrandChallenge.Complexity.tao_preserves_true_nonlinearity_if_supplied T

theorem tao_quantitative_regularity_if_supplied
    (T : Folder.GrandChallenge.Complexity.TaoCriticalControl) :
    T.quantitativeRegularity :=
  Folder.GrandChallenge.Complexity.tao_quantitative_regularity_if_supplied T

theorem kakeya_full_dimensional_volume_if_supplied
    (K : Folder.GrandChallenge.Complexity.Kakeya3DWorkspaceControl) :
    K.fullDimensionalVolume :=
  Folder.GrandChallenge.Complexity.kakeya_full_dimensional_volume_if_supplied K

theorem kakeya_needle_routing_room_if_supplied
    (K : Folder.GrandChallenge.Complexity.Kakeya3DWorkspaceControl) :
    K.needleRoutingRoom :=
  Folder.GrandChallenge.Complexity.kakeya_needle_routing_room_if_supplied K

theorem kakeya_sticky_boundary_excluded_if_supplied
    (K : Folder.GrandChallenge.Complexity.Kakeya3DWorkspaceControl) :
    K.stickyBoundaryExcluded :=
  Folder.GrandChallenge.Complexity.kakeya_sticky_boundary_excluded_if_supplied K

theorem encoding_bridge_critical_norm_polynomial_if_supplied
    (B : Folder.GrandChallenge.Complexity.PolynomialEncodingBridge) :
    B.bitComplexityToCriticalNormPolynomial :=
  Folder.GrandChallenge.Complexity.encoding_bridge_critical_norm_polynomial_if_supplied B

theorem encoding_bridge_routing_moves_polynomial_if_supplied
    (B : Folder.GrandChallenge.Complexity.PolynomialEncodingBridge) :
    B.volumeToRoutingMovesPolynomial :=
  Folder.GrandChallenge.Complexity.encoding_bridge_routing_moves_polynomial_if_supplied B

theorem encoding_bridge_preserves_verifier_if_supplied
    (B : Folder.GrandChallenge.Complexity.PolynomialEncodingBridge) :
    B.preservesVerifierSemantics :=
  Folder.GrandChallenge.Complexity.encoding_bridge_preserves_verifier_if_supplied B

theorem tao_kakeya_smoothing_if_supplied
    (T : Folder.GrandChallenge.Complexity.TaoKakeyaNonStickySmoothing) :
    T.polynomialNonStickySmoothing :=
  Folder.GrandChallenge.Complexity.tao_kakeya_smoothing_if_supplied T

theorem binary_determinant_atlas_local_data_if_supplied
    (A : Folder.GrandChallenge.Complexity.BinarySpectralDeterminantAtlas) :
    A.precomputedLocalData :=
  Folder.GrandChallenge.Complexity.binary_determinant_atlas_local_data_if_supplied A

theorem binary_determinant_atlas_move_log_if_supplied
    (A : Folder.GrandChallenge.Complexity.BinarySpectralDeterminantAtlas) :
    A.moveLogCompatible :=
  Folder.GrandChallenge.Complexity.binary_determinant_atlas_move_log_if_supplied A

theorem binary_determinant_atlas_path_independent_if_supplied
    (A : Folder.GrandChallenge.Complexity.BinarySpectralDeterminantAtlas) :
    A.pivotPathIndependent :=
  Folder.GrandChallenge.Complexity.binary_determinant_atlas_path_independent_if_supplied A

theorem binary_determinant_atlas_regularization_if_supplied
    (A : Folder.GrandChallenge.Complexity.BinarySpectralDeterminantAtlas) :
    A.regularizationCompatible :=
  Folder.GrandChallenge.Complexity.binary_determinant_atlas_regularization_if_supplied A

theorem binary_determinant_quasi_iso_lift_exists_if_supplied
    (L : Folder.GrandChallenge.Complexity.BinaryDeterminantQuasiIsoLift) :
    L.quasiIsoLiftExists :=
  Folder.GrandChallenge.Complexity.binary_determinant_quasi_iso_lift_exists_if_supplied L

theorem binary_determinant_lift_if_supplied
    (L : Folder.GrandChallenge.Complexity.BinaryDeterminantQuasiIsoLift) :
    L.atlasAndQuasiIsoAgree :=
  Folder.GrandChallenge.Complexity.binary_determinant_lift_if_supplied L

theorem binary_determinant_glitch_detected_if_supplied
    (L : Folder.GrandChallenge.Complexity.BinaryDeterminantQuasiIsoLift) :
    L.determinantGlitchDetected :=
  Folder.GrandChallenge.Complexity.binary_determinant_glitch_detected_if_supplied L

end GrandChallenge
end Theorem
end Folder
```
