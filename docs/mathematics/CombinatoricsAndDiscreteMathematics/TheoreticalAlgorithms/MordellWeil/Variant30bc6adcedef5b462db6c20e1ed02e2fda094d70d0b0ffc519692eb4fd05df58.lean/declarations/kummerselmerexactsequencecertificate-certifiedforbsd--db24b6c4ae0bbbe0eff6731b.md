# KummerSelmerExactSequenceCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26310c44d55e602c77e0fb126102c2b7f8dd9e667a46e552360a2b471ca7eecc",
  "kind": "def",
  "lexical_name": "KummerSelmerExactSequenceCertificate.certifiedForBSD",
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
  "slug": "kummerselmerexactsequencecertificate-certifiedforbsd--db24b6c4ae0bbbe0eff6731b",
  "source": {
    "blob": "416768821aa54767a123cfa871d4c9afd63099de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db24b6c4ae0bbbe0eff6731ba9cab90e6f08ccf17c8e349432048bec2bfafb3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26310c44d55e602c77e0fb126102c2b7f8dd9e667a46e552360a2b471ca7eecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KummerSelmerExactSequenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n) :
  Prop :=
  K.rationalPointLocus.certifiedForBSD ∧
  K.descentLevelAtLeastTwo ∧
  K.kummerDescent.multiplicationByLevelMatchesN ∧
  K.kummerDescent.quotientByMultiplicationIdentified ∧
  (∀ x, K.kummerDescent.kummerClass x =
    K.finiteKummerSelmer.globalKummer.toH1 x) ∧
  K.kummerDescent.kummerKernelIsMultiplicationImage ∧
  K.finiteKummerSelmer.compatibleWithRestriction ∧
  K.finiteKummerSelmer.globalImageLandsInSelmer ∧
  (∀ x,
    K.finiteSelmerProblem.selmerSubgroup.carrier
      (K.constructedSelmerInjection.quotientToSelmerClass x)) ∧
  (∀ x y,
    K.constructedSelmerInjection.quotientToSelmerClass x =
      K.constructedSelmerInjection.quotientToSelmerClass y →
        x = y) ∧
  K.selmerFinite ∧
  K.kummerDescent.locallyTrivialObstructionMatchesSelmerKernel ∧
  (∀ c hc,
    K.constructedSelmerExactness.locallyTrivial c hc ↔
        ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
          K.finiteKummerSelmer.globalKummer.toH1 x = c) ∧
  (∀ c hc,
    K.kummerDescent.locallyTrivialObstruction c ↔
      K.constructedSelmerExactness.locallyTrivial c hc) ∧
  K.compatibleWithBaseNumberField ∧
  K.compatibleWithSmoothGroupLaw ∧
  K.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416768821aa54767a123cfa871d4c9afd63099de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
