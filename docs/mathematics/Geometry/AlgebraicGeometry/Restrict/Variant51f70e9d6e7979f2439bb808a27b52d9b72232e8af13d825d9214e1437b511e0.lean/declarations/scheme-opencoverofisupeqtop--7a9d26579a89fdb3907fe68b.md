# Scheme.openCoverOfISupEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c35f7de66f9e0c789fcbe842008bc0528e078bc9cffb026430a2c9bb1a7cbe11",
  "kind": "def",
  "lexical_name": "Scheme.openCoverOfISupEqTop",
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
  "slug": "scheme-opencoverofisupeqtop--7a9d26579a89fdb3907fe68b",
  "source": {
    "blob": "afb1d69f0544a201f67f5f0154920085573c869d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 166,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a9d26579a89fdb3907fe68b0422853db87535377ce46cf8e8c647f508e937f6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c35f7de66f9e0c789fcbe842008bc0528e078bc9cffb026430a2c9bb1a7cbe11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Scheme.openCoverOfISupEqTop {s : Type*} (X : Scheme.{u}) (U : s → X.Opens)
    (hU : ⨆ i, U i = ⊤) : X.OpenCover where
  J := s
  obj i := U i
  map i := (U i).ι
  f x :=
    haveI : x ∈ ⨆ i, U i := hU.symm ▸ show x ∈ (⊤ : X.Opens) by trivial
    (Opens.mem_iSup.mp this).choose
  covers x := by
    erw [Subtype.range_coe]
    have : x ∈ ⨆ i, U i := hU.symm ▸ show x ∈ (⊤ : X.Opens) by trivial
    exact (Opens.mem_iSup.mp this).choose_spec

/-- The open sets of an open subscheme corresponds to the open sets containing in the subset. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb1d69f0544a201f67f5f0154920085573c869d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
