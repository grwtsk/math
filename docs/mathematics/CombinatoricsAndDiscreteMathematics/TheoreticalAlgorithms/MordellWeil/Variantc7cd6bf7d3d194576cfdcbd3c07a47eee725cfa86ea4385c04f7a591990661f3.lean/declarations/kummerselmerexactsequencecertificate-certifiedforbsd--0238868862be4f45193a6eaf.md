# KummerSelmerExactSequenceCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20837627acd9e4af7c54a1e0d9246678ec40eba2cc1d8a4c0d0fc208d4fbe6ae",
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
  "slug": "kummerselmerexactsequencecertificate-certifiedforbsd--0238868862be4f45193a6eaf",
  "source": {
    "blob": "0c46f379bb6aae2ad8617b3bc53b376ecfccfe05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 436,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0238868862be4f45193a6eaf2d8466d8391543d641604bc2112cac06ad574cff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20837627acd9e4af7c54a1e0d9246678ec40eba2cc1d8a4c0d0fc208d4fbe6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–470.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c46f379bb6aae2ad8617b3bc53b376ecfccfe05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
