# AdapterCorrespondenceProofWitness.closesGates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47f36b48a665d08a53e93ec9e7c96c301162ed198bdbb61006a14e008c74c114",
  "kind": "def",
  "lexical_name": "AdapterCorrespondenceProofWitness.closesGates",
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
  "slug": "adaptercorrespondenceproofwitness-closesgates--3cda40bce1a5bd20004f9e53",
  "source": {
    "blob": "c7caee20a22a50d30b20fd954122baa508192a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cda40bce1a5bd20004f9e53455e5ecf79cddd61be04dd92dd5a3c8a30fa7f67",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47f36b48a665d08a53e93ec9e7c96c301162ed198bdbb61006a14e008c74c114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AdapterCorrespondenceProofWitness.closesGates
    (w : AdapterCorrespondenceProofWitness) : AdapterToposGates where
  finiteSiteConstruction := w.finiteSiteConstruction
  sheafCondition := w.sheafification.localityDerived ∧ w.sheafification.gluingDerived
  finiteLimits := w.sliceTopos.finiteLimits
  exponentials := w.sliceTopos.exponentials
  subobjectClassifier := w.sliceTopos.subobjectClassifier
  adapterFactorization :=
    w.adjunction.homEquivalence ∧
    w.adjunction.uniqueExtension ∧
    w.adjunction.compatibleRawAdaptersArePresheafMaps ∧
    w.affine.affinePositive
  authorityInternalization :=
    w.authorityInternalization.authorityPredicateInternal ∧
    w.authorityInternalization.residuePredicateInternal ∧
    w.authorityInternalization.nonClaimPredicateInternal ∧
    w.authorityInternalization.trainingTargetPredicateInternal
  noExternalBypass :=
    w.noBypass.everyAuthorityClaimFactors ∧
    w.noBypass.rawProjectionWithoutFactorizationRefused

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdapterCorrespondenceTopos/Variant12795fddcdaeb0f2c18594bc5f30dcecc2f15200011089fab03edf4875ed217d.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7caee20a22a50d30b20fd954122baa508192a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
