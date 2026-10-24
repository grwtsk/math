# PowerObjectCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18eed2d8d2dee221a3c473aa4f88c7d65e480abdd4d1eedd51e83403469b00b8",
  "kind": "structure",
  "lexical_name": "PowerObjectCertificate",
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
  "slug": "powerobjectcertificate--8c21939984e837c8c741aeb5",
  "source": {
    "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2929,
    "line": 2913,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c21939984e837c8c741aeb51f41a31d5b625a0748f70b6b8edc4a763a913f11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18eed2d8d2dee221a3c473aa4f88c7d65e480abdd4d1eedd51e83403469b00b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2913–2929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PowerObjectCertificate
    (S : Site.{u, v})
    (sliceCert :
      (X : S.C.Obj) →
        ExponentialSheaves.SliceTopologyCertificate S X)
    (products : ExponentialSheaves.SheafProductData.{u, v, max u v} S)
    (omegaCert : OmegaTypeCertificate S)
    (A : InternalType S) where
  powerType : InternalType S
  omegaExp :
    ExponentialSheaves.ExponentialSheafCertificate
      sliceCert products A.carrier omegaCert.omegaSheaf
  power_eq :
    powerType.carrier = omegaExp.expSheaf
  membershipPredicate : InternalFormula (products.prod A.carrier powerType.carrier)
  boundary : InternalBoundary

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean#L2913).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ba50ffb78e7492c58eec2fea7836045fb759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
