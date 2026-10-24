# liftOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52fb8585ac6ee380dc2bbaa8d9dae22419306fc6d1e642ac8ac17a7cf0a3c63e",
  "kind": "def",
  "lexical_name": "liftOne",
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
  "slug": "liftone--10c190d1f56ce6c956ce06d8",
  "source": {
    "blob": "ae16bb73f658f03d728903fd47fccf2649c84e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 174,
    "path": "GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10c190d1f56ce6c956ce06d83f48588bed2a0333350bbb71cff6c39cbd09d03e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52fb8585ac6ee380dc2bbaa8d9dae22419306fc6d1e642ac8ac17a7cf0a3c63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftOne {Y Z : C} (f : Y ⟶ Z) (P : ProjectiveResolution Y) (Q : ProjectiveResolution Z) :
    P.complex.X 1 ⟶ Q.complex.X 1 :=
  Exact.lift (P.complex.d 1 0 ≫ liftZero f P Q) (Q.complex.d 1 0) (Q.π.f 0) Q.exact₀
    (by simp [liftZero, P.exact₀.w_assoc])
set_option linter.uppercaseLean3 false in
#align category_theory.ProjectiveResolution.lift_f_one CategoryTheory.ProjectiveResolution.liftOne

/-- Auxiliary lemma for `lift`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae16bb73f658f03d728903fd47fccf2649c84e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
