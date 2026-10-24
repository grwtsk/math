# Homology.standardFinitePrismaticSurfaceModel2Refined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffc53c82113d6e5dfcfb88d5d48daf83445c7801391ce9ad7e9a4955ab28e08a",
  "kind": "def",
  "lexical_name": "Homology.standardFinitePrismaticSurfaceModel2Refined",
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
  "slug": "homology-standardfiniteprismaticsurfacemodel2refined--a7a93091a82f89a0896330f2",
  "source": {
    "blob": "3537078c8c6ebb6688d406a90952cea79950f0e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 112,
    "path": "GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7a93091a82f89a0896330f26fb3742e9fa8937576fd2bafa07daf9de358b933",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffc53c82113d6e5dfcfb88d5d48daf83445c7801391ce9ad7e9a4955ab28e08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homology.standardFinitePrismaticSurfaceModel2Refined :
    Homology.RefinedFinitePrismaticSurfaceModel 2 where
  base := Homology.standardFinitePrismaticSurfaceModel2
  prismaticPrime := 2
  boundedPrism :=
    { prism := Surface.Prismatic.unitBoundedPrism 2
      boundary := [
        "Boolean homology wrapper around Surface.Prismatic.unitBoundedPrism."
      ] }
  deltaRing :=
    { deltaRing := (Surface.Prismatic.unitBoundedPrism 2).A
      boundary := [
        "Boolean homology wrapper around the bounded prism δ-ring."
      ] }
  deltaRing_matches_prism := rfl
  distinguished :=
    { distinguished := Surface.Prismatic.unitDistinguishedElement 2
      boundary := [
        "Distinguished element supplied by Surface.Prismatic."
      ] }
  frobenius :=
    { phi := Homology.standardFinitePrismaticSurfaceModel2.frob_phi
      phi_is_lift :=
        (Surface.Prismatic.unitBoundedPrism 2).A
          |>.phi_lifts_frobenius_mod_p_certified
      phi_respects_ideal := True
      phi_respects_ideal_certified := trivial
      phi_semilinear := True
      phi_semilinear_certified := trivial
      boundary := [
        "Finite matrix Frobenius lift is linked to the Surface.Prismatic δ-ring.",
        "This does not prove a comparison theorem."
      ] }
  filtration :=
    { qrsp := Surface.Prismatic.unitQRSP 2
      nygaard := Surface.Prismatic.unitNygaardFiltration 2
      comparison? := none
      boundary := [
        "Nygaard filtration supplied through Surface.Prismatic.",
        "No Nygaard/conjugate comparison certificate is supplied here."
      ] }
  frobenius_matrix_matches := rfl
  frobenius_bounded := by
    intro i j
    exact
      Homology.FinitePrismaticSurfaceModel.frob_phi_bound
        Homology.standardFinitePrismaticSurfaceModel2 i j

/--
Under the present finite symbolic certificates, the standard finite prismatic surface model is
not yet prism-ready.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3537078c8c6ebb6688d406a90952cea79950f0e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
