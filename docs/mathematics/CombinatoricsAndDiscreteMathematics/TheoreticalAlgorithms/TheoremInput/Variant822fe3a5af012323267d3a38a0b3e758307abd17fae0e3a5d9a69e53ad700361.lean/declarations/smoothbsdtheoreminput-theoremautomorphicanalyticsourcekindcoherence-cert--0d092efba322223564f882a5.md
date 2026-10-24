# SmoothBSDTheoremInput.theoremAutomorphicAnalyticSourceKindCoherence_certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "625d88600494e21bf3064668d2f3d61d8682374b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37d767ea-82ef-0275-b68a-3d54d8fe2531",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad6e91ea-5173-371f-4b66-9f134e182dc2",
  "kind": "theorem",
  "lexical_name": "SmoothBSDTheoremInput.theoremAutomorphicAnalyticSourceKindCoherence_certifiedForBSD",
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
  "slug": "smoothbsdtheoreminput-theoremautomorphicanalyticsourcekindcoherence-cert--0d092efba322223564f882a5",
  "source": {
    "blob": "625d88600494e21bf3064668d2f3d61d8682374b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1441,
    "line": 1386,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d092efba322223564f882a5271a2bdc228ca3cb3a248407677d2e5b8b9709a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6e91ea-5173-371f-4b66-9f134e182dc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1386–1441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SmoothBSDTheoremInput.theoremAutomorphicAnalyticSourceKindCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                  S.conjecture S.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                      S.conjecture S.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                          S.conjecture S.input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                            S.conjecture S.input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD ∧
                            ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
                              S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP Knd,
                              Src.certifiedForBSD ∧
                              ∃ AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
                                S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                                S.conjecture S.input T A U Q R AP Z SC Y Knd W V Src,
                                AS.certifiedForBSD :=
  S.theoremAutomorphicAnalyticSourceKindCoherenceCertifiedForBSD

/-- The smooth BSD input carries nonzero discriminant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean#L1386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625d88600494e21bf3064668d2f3d61d8682374b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
