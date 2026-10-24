# residueSpecs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:009cd9811e737ee7ca322966d2f613e9ed7c2c7a17d16bcdf2c097d9c8ac6478",
  "kind": "def",
  "lexical_name": "residueSpecs",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "residuespecs--1e5cac41af887bbabb2dd854",
  "source": {
    "blob": "2be46e3b9b820c4918e4cfced2e658f759b6dd5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 827,
    "line": 517,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e5cac41af887bbabb2dd85401d192268d17a78758b065c19a6e88c04e8a5c16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:009cd9811e737ee7ca322966d2f613e9ed7c2c7a17d16bcdf2c097d9c8ac6478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residueSpecs : Phase -> List ResidueSpec
  | .requestBoundary => [
      { atomId := "request_ambiguous"
        kind := ResidueKind.missingDefinition
        blocks := "conversion of a request into a bounded finite task"
        clearsBy := "a precise bounded task statement" },
      { atomId := "scope_overclaim"
        kind := ResidueKind.authorityOverclaim
        blocks := "promotion of a request into a target theorem claim"
        clearsBy := "an explicit scope boundary and nonclaim ledger" }]
  | .targetSelection => [
      { atomId := "target_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "selection of a target class"
        clearsBy := "a declared target from the finite-witness target family" }]
  | .claimAtomization => [
      { atomId := "atom_split_incomplete"
        kind := ResidueKind.conjecturalAtom
        blocks := "smallest-atom decomposition of the target claim"
        clearsBy := "a complete atom list with one residue per bridge" }]
  | .authorityClassification => [
      { atomId := "authority_unclassified"
        kind := ResidueKind.authorityOverclaim
        blocks := "classification of atoms as finite, external, conjectural, or refused"
        clearsBy := "an authority ledger for every atom" }]
  | .finiteCarrierDeclaration => [
      { atomId := "carrier_missing"
        kind := ResidueKind.missingFiniteWitness
        blocks := "finite carrier declaration"
        clearsBy := "declared L_n, E_n, N_n, B_n, V_n, W_n, T_n, and C_n carriers" }]
  | .stageParameterization => [
      { atomId := "stage_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "stage and truncation parameters"
        clearsBy := "declared n, M_n, and finite bounds" }]
  | .inputSelection => [
      { atomId := "input_not_" ++ "ad" ++ "mitted"
        kind := ResidueKind.missingFiniteWitness
        blocks := "selection of a finite witness accepted by the stage"
        clearsBy := "a finite witness satisfying the stage policy" }]
  | .lFunctionQWaveEncoding => [
      { atomId := "lfunction_encoding_failed"
        kind := ResidueKind.missingDefinition
        blocks := "encoding of symbolic data as an L_n object"
        clearsBy := "a local L_n encoding proof" }]
  | .emlLowering => [
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "L_n to E_n lowering"
        clearsBy := "a total local lowering map" }]
  | .nandLowering => [
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "E_n to N_n lowering"
        clearsBy := "a total local lowering map" }]
  | .bitMatrixLowering => [
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "N_n to B_n lowering"
        clearsBy := "a total local lowering map" }]
  | .bitstreamAdmission => [
      { atomId := "bitstream_not_" ++ "ad" ++ "mitted"
        kind := ResidueKind.missingFiniteWitness
        blocks := "acceptance of the raw B_n bitstream"
        clearsBy := "a bitstream satisfying the stage policy" }]
  | .decoderPhase => [
      { atomId := "R_n.decode"
        kind := ResidueKind.missingDecode
        blocks := "decoding B_n into W_n"
        clearsBy := "a total decoder on accepted bitstreams" }]
  | .verbBasisValidation => [
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "validation of decoded symbols against V_n"
        clearsBy := "a verb-basis membership proof" }]
  | .traceOrderValidation => [
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "validation of ordered trace data"
        clearsBy := "an ordered-word proof in W_n" }]
  | .independenceRelationDeclaration => [
      { atomId := "independence_missing"
        kind := ResidueKind.missingTraceQuotient
        blocks := "declaration of I_n on V_n"
        clearsBy := "a validated independence relation" }]
  | .validatedFlipChecking => [
      { atomId := "invalid_flip"
        kind := ResidueKind.missingTraceQuotient
        blocks := "commutation of adjacent independent letters"
        clearsBy := "a zero-residue flip proof" }]
  | .traceQuotienting => [
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "formation of T_n from W_n"
        clearsBy := "a well-defined trace quotient" }]
  | .normalFormConstruction => [
      { atomId := "R_n.section"
        kind := ResidueKind.missingSection
        blocks := "construction of nf_n"
        clearsBy := "a canonical normal-form map" }]
  | .normalFormTerminationCheck => [
      { atomId := "normal_form_nonterminating"
        kind := ResidueKind.missingSection
        blocks := "termination of the normal-form rewrite system"
        clearsBy := "a termination certificate" }]
  | .normalFormConfluenceCheck => [
      { atomId := "normal_form_nonconfluent"
        kind := ResidueKind.missingSection
        blocks := "unique normal forms"
        clearsBy := "a confluence proof" }]
  | .canonicalEncoder => [
      { atomId := "R_n.section"
        kind := ResidueKind.missingSection
        blocks := "encoding nf_n(t) back to the bitstream quotient"
        clearsBy := "a sound canonical encoder" }]
  | .sectionConstruction => [
      { atomId := "section_missing"
        kind := ResidueKind.missingSection
        blocks := "construction of sigma_n"
        clearsBy := "a section from T_n to B_n modulo equivalence" }]
  | .rightRoundTripCheck => [
      { atomId := "right_inverse_failed"
        kind := ResidueKind.missingSection
        blocks := "right round-trip law"
        clearsBy := "a proof that Phi_bar_n (sigma_n t) = t" }]
  | .leftRoundTripCheck => [
      { atomId := "left_inverse_failed"
        kind := ResidueKind.missingSection
        blocks := "left round-trip law"
        clearsBy := "a proof that sigma_n (Phi_bar_n b) = b" }]
  | .finiteBijectionWitness => [
      { atomId := "bijection_unproved"
        kind := ResidueKind.missingSection
        blocks := "finite-stage bijection"
        clearsBy := "round-trip laws for the finite bridge" }]
  | .compactShellProjection => [
      { atomId := "R_n.authority"
        kind := ResidueKind.authorityOverclaim
        blocks := "compact-shell projection"
        clearsBy := "a projection proof that does not claim injectivity" }]
  | .orderErasureWarning => [
      { atomId := "compact_shell_overclaim"
        kind := ResidueKind.authorityOverclaim
        blocks := "treating C_n as an order-preserving target"
        clearsBy := "an explicit non-injectivity warning or a separate proof" }]
  | .transitionMapDeclaration => [
      { atomId := "R_n.transition"
        kind := ResidueKind.missingTransition
        blocks := "cross-stage transition maps"
        clearsBy := "declared rho maps for B, T, and C" }]
  | .forwardSquareCheck => [
      { atomId := "forward_square_failed"
        kind := ResidueKind.missingTransition
        blocks := "forward commuting square"
        clearsBy := "a proof of forward compatibility" }]
  | .sectionSquareCheck => [
      { atomId := "section_square_failed"
        kind := ResidueKind.missingTransition
        blocks := "section commuting square"
        clearsBy := "a proof of section compatibility" }]
  | .inverseLimitConstruction => [
      { atomId := "inverse_limit_missing"
        kind := ResidueKind.missingContinuumLimit
        blocks := "inverse-limit objects"
        clearsBy := "a compatible inverse-system construction" }]
  | .limitMapConstruction => [
      { atomId := "limit_map_missing"
        kind := ResidueKind.missingContinuumLimit
        blocks := "limit map construction"
        clearsBy := "a levelwise compatible limit map" }]
  | .limitBijectionCheck => [
      { atomId := "limit_bijection_unproved"
        kind := ResidueKind.missingContinuumLimit
        blocks := "limit bijection"
        clearsBy := "a proof from stage bijections and compatibility" }]
  | .classifierModuleSelection => [
      { atomId := "classifier_missing"
        kind := ResidueKind.missingSieveEstimate
        blocks := "finite classifier module selection"
        clearsBy := "a declared classifier module" }]
  | .admissibilityScoring => [
      { atomId := "admissibility_unchecked"
        kind := ResidueKind.missingSieveEstimate
        blocks := "admissibility score A(I)"
        clearsBy := "a finite admissibility certificate" }]
  | .distributionScoring => [
      { atomId := "distribution_unchecked"
        kind := ResidueKind.missingDistributionEstimate
        blocks := "distribution score D(I)"
        clearsBy := "a finite distribution certificate" }]
  | .weightScoring => [
      { atomId := "weight_unchecked"
        kind := ResidueKind.missingSieveEstimate
        blocks := "weight score W(I)"
        clearsBy := "a finite weight certificate" }]
  | .denseClusterScoring => [
      { atomId := "cluster_score_unchecked"
        kind := ResidueKind.missingSieveEstimate
        blocks := "dense-cluster score C(I)"
        clearsBy := "a finite dense-cluster certificate" }]
  | .parityBarrierScoring => [
      { atomId := "parity_barrier_unchecked"
        kind := ResidueKind.missingParityBarrierResolution
        blocks := "parity-barrier score P(I)"
        clearsBy := "a finite parity-barrier certificate" }]
  | .classifierResidueScoring => [
      { atomId := "classifier_residue_unchecked"
        kind := ResidueKind.conjecturalAtom
        blocks := "classifier residue score R(I)"
        clearsBy := "a finite unresolved-residue accounting proof" }]
  | .schedulerCarrierDeclaration => [
      { atomId := "R_n.scheduler"
        kind := ResidueKind.missingUniformBound
        blocks := "scheduler carriers X, D_P, and S_t"
        clearsBy := "declared finite scheduler carriers" }]
  | .coverageComputation => [
      { atomId := "coverage_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "coverage functional"
        clearsBy := "a finite coverage definition" }]
  | .energyComputation => [
      { atomId := "energy_undefined"
        kind := ResidueKind.missingUniformBound
        blocks := "energy functional"
        clearsBy := "a finite energy definition" }]
  | .moveScoring => [
      { atomId := "move_score_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "move-score functional"
        clearsBy := "a finite move-score definition" }]
  | .admissibleMoveSelection => [
      { atomId := "no_admissible_move"
        kind := ResidueKind.missingFiniteWitness
        blocks := "selection of the next scheduler move"
        clearsBy := "a move preserving finite bounds and residue policy" }]
  | .schedulerUpdate => [
      { atomId := "scheduler_update_failed"
        kind := ResidueKind.missingFiniteWitness
        blocks := "scheduler state update"
        clearsBy := "a finite update proof" }]
  | .schedulerGuardCheck => [
      { atomId := "R_n.scheduler"
        kind := ResidueKind.missingUniformBound
        blocks := "scheduler guard"
        clearsBy := "proof of the finite guard through T_max" }]
  | .monomialStateEncoding => [
      { atomId := "monomial_state_missing"
        kind := ResidueKind.missingDefinition
        blocks := "monomial state encoding"
        clearsBy := "a finite monomial-state definition" }]
  | .balanceMeasurement => [
      { atomId := "balance_metric_missing"
        kind := ResidueKind.missingDefinition
        blocks := "center balance measurement"
        clearsBy := "a finite balance metric" }]
  | .torsionMeasurement => [
      { atomId := "torsion_metric_missing"
        kind := ResidueKind.missingDefinition
        blocks := "torsion measurement"
        clearsBy := "a finite torsion metric" }]
  | .chebyshevEnvelopeComparison => [
      { atomId := "envelope_missing"
        kind := ResidueKind.missingDefinition
        blocks := "Chebyshev envelope comparison"
        clearsBy := "declared finite upper and lower envelopes" }]
  | .clusterClassification => [
      { atomId := "R_n.cluster"
        kind := ResidueKind.conjecturalAtom
        blocks := "cluster classification"
        clearsBy := "a finite cluster output map" }]
  | .outputAssembly => [
      { atomId := "output_incomplete"
        kind := ResidueKind.missingFiniteWitness
        blocks := "public finite witness output"
        clearsBy := "assembled checked artifacts" }]
  | .residueExtraction => [
      { atomId := "residue_extraction_failed"
        kind := ResidueKind.conjecturalAtom
        blocks := "active residue extraction"
        clearsBy := "a finite active-residue extraction map" }]
  | .residueContainment => [
      { atomId := "containment_failed"
        kind := ResidueKind.conjecturalAtom
        blocks := "cumulative residue ledger"
        clearsBy := "a containment proof for active residue" }]
  | .cleanProjection => [
      { atomId := "projection_failed"
        kind := ResidueKind.missingTraceQuotient
        blocks := "clean quotient trace projection"
        clearsBy := "a projection proof after residue removal" }]
  | .reverseSectionReplay => [
      { atomId := "reverse_section_failed"
        kind := ResidueKind.missingSection
        blocks := "reverse section replay"
        clearsBy := "a canonical reverse input proof" }]
  | .forwardReplay => [
      { atomId := "replay_failed"
        kind := ResidueKind.missingTransition
        blocks := "forward replay"
        clearsBy := "a replay proof producing the next output" }]
  | .fixedPointComparison => [
      { atomId := "not_stable"
        kind := ResidueKind.missingTransition
        blocks := "fixed-point comparison"
        clearsBy := "a stable comparison of active, contained, and clean components" }]
  | .boundaryReport => [
      { atomId := "boundary_report_missing"
        kind := ResidueKind.authorityOverclaim
        blocks := "boundary report and nonclaim profile"
        clearsBy := "a final report that keeps target-level claims as residue" }]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be46e3b9b820c4918e4cfced2e658f759b6dd5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
