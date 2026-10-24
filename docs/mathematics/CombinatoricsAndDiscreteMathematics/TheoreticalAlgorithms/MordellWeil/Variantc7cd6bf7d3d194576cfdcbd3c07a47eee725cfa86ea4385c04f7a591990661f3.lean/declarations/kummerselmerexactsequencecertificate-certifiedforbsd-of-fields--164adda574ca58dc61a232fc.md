# KummerSelmerExactSequenceCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7a15fac-ed51-10f7-7d04-d72d500f24a8",
  "kind": "theorem",
  "lexical_name": "KummerSelmerExactSequenceCertificate.certifiedForBSD_of_fields",
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
  "slug": "kummerselmerexactsequencecertificate-certifiedforbsd-of-fields--164adda574ca58dc61a232fc",
  "source": {
    "blob": "0c46f379bb6aae2ad8617b3bc53b376ecfccfe05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 471,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:164adda574ca58dc61a232fc42d73d977460b93e02e267c998d912d8859bc5d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7a15fac-ed51-10f7-7d04-d72d500f24a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KummerSelmerExactSequenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n)
    (hsource :
      K.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    K.certifiedForBSD := by
  exact
    ⟨K.rationalPointLocusCertified,
      K.descentLevelAtLeastTwoCertified,
      K.kummerDescent.multiplicationByLevelMatchesNCertified,
      K.kummerDescent.quotientByMultiplicationIdentifiedCertified,
      K.kummerDescent.kummerClass_eq_globalKummer,
      K.kummerDescent.kummerKernelIsMultiplicationImageCertified,
      K.finiteKummerSelmer.compatibleWithRestriction_of_field,
      K.finiteKummerSelmer.globalImageLandsInSelmer_of_local_conditions,
      K.constructedSelmerInjection.quotientToSelmerClass_mem,
      K.constructedSelmerInjection.injectiveIntoConstructedSelmer,
      K.selmerFiniteCertified,
      K.kummerDescent.locallyTrivialObstructionMatchesSelmerKernelCertified,
      K.constructedSelmerExactness.kernel_iff_kummerImage,
      K.constructedSelmerExactness.matchesDescentObstruction_iff,
      K.compatibleWithBaseNumberFieldCertified,
      K.compatibleWithSmoothGroupLawCertified,
      hsource⟩

/--
Typed finite-control data used by weak Mordell-Weil descent.

The quotient, its map from curve points, the injection into the finite Kummer
domain, and the local-solubility predicate are explicit data.  The certificate
fields state their mathematical compatibility with the Kummer/Selmer package.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c46f379bb6aae2ad8617b3bc53b376ecfccfe05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
