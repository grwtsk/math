# MathlibPullbackSheafOfRingsAdapter.usableForFinalTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b6924d39402626106d0c31e8033d105a5d7ec6f73a93d7b2669d90b2b067e85",
  "kind": "def",
  "lexical_name": "MathlibPullbackSheafOfRingsAdapter.usableForFinalTheorem",
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
  "slug": "mathlibpullbacksheafofringsadapter-usableforfinaltheorem--0d23809513a8257f84214712",
  "source": {
    "blob": "a7e6d4aa6f87c564c47116b143baaa4ac8b504e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapters/Varianted32dbd134e118a6faf18fe70ee4459a81a1ff9535ab3f672a4a6895aa4c82de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d23809513a8257f842147128d2d69bcdbbb0d85787e357dcdd97ac28b62e4f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapters/Varianted32dbd134e118a6faf18fe70ee4459a81a1ff9535ab3f672a4a6895aa4c82de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b6924d39402626106d0c31e8033d105a5d7ec6f73a93d7b2669d90b2b067e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MathlibPullbackSheafOfRingsAdapter.usableForFinalTheorem
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {S : CertifiedPullbackStructureSheafOfRings P X}
    (A : MathlibPullbackSheafOfRingsAdapter S) :
    Prop :=
  A.backend.usableForFinalTheorem ∧
    A.categoryAdapter.usableForFinalTheorem ∧
    S.usableForFinalTheorem ∧
    (∀ U : PrismaticSiteObject P X,
      (A.sectionRingAdapter U).usableForFinalTheorem) ∧
    A.presheafFunctorTransferred ∧
    A.pullbackSheafConditionTransferred ∧
    A.usesActualDependentSections ∧
    A.usesPullbackCertifiedOverlaps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapters/Varianted32dbd134e118a6faf18fe70ee4459a81a1ff9535ab3f672a4a6895aa4c82de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapters/Varianted32dbd134e118a6faf18fe70ee4459a81a1ff9535ab3f672a4a6895aa4c82de.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e6d4aa6f87c564c47116b143baaa4ac8b504e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
