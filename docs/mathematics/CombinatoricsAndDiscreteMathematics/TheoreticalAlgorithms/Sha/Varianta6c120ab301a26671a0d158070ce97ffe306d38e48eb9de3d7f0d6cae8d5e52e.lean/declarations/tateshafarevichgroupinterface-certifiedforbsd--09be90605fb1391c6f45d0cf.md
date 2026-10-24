# TateShafarevichGroupInterface.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:798758c606749a841824b95d6224d10f0b535d93e6e617984ee1cbd96bd5f5ce",
  "kind": "def",
  "lexical_name": "TateShafarevichGroupInterface.certifiedForBSD",
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
  "slug": "tateshafarevichgroupinterface-certifiedforbsd--09be90605fb1391c6f45d0cf",
  "source": {
    "blob": "a1d77bddeb8ddb6ba3d5425b539bd321a5cabc70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09be90605fb1391c6f45d0cf45be649ee1c70b3251496b6b153ea5bed10e1773",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:798758c606749a841824b95d6224d10f0b535d93e6e617984ee1cbd96bd5f5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TateShafarevichGroupInterface.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (T : TateShafarevichGroupInterface M) :
    Prop :=
  T.shaData.weilChateletTorsorsRepresented ∧
  T.shaData.locallyTrivial T.shaData.zero ∧
  (∀ x y : T.shaData.groupCarrier,
    T.shaData.locallyTrivial x →
    T.shaData.locallyTrivial y →
      T.shaData.locallyTrivial (T.shaData.add x y)) ∧
  (∀ x : T.shaData.groupCarrier,
    T.shaData.locallyTrivial x →
      T.shaData.locallyTrivial (T.shaData.neg x)) ∧
  (∀ x : T.shaData.groupCarrier,
    T.shaData.locallyTrivial x ↔
      ∀ place : T.shaData.finiteCohomologyProblem.V,
        GaloisCohomology.resFiniteH1
          (T.shaData.finiteCohomologyProblem.ιv place)
          (T.shaData.classToFiniteH1 x) =
            GaloisCohomology.FiniteH1.zero
              (T.shaData.finiteCohomologyProblem.Gv place)
              T.shaData.finiteCohomologyProblem.A
              (T.shaData.finiteCohomologyProblem.ρv place)) ∧
  T.shaData.localSolubilityControlsLocallyTriviality ∧
  T.shaData.compatibleWithBaseNumberField ∧
  T.shaData.compatibleWithSmoothCurve ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d77bddeb8ddb6ba3d5425b539bd321a5cabc70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
