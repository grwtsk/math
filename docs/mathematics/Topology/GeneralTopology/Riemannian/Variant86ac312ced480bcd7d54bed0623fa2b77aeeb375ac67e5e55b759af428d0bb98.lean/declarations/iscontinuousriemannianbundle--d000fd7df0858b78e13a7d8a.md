# IsContinuousRiemannianBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6940b7004509175accd7259f824a38cbb77b8d1c828d3a58b935efd55baa4e37",
  "kind": "class",
  "lexical_name": "IsContinuousRiemannianBundle",
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
  "slug": "iscontinuousriemannianbundle--d000fd7df0858b78e13a7d8a",
  "source": {
    "blob": "1846c1475dfe7bb95a80b4497bdd70622b7f61bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d000fd7df0858b78e13a7d8a75b05a8e2bdd165574d71e5f8cfde4ac5cd8fc69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6940b7004509175accd7259f824a38cbb77b8d1c828d3a58b935efd55baa4e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsContinuousRiemannianBundle : Prop where
  /-- There exists a bilinear form, depending continuously on the basepoint and defining the
  inner product in the fibers. This is expressed as an existence statement so that it is Prop-valued
  in terms of existing data, the inner product on the fibers and the fiber bundle structure. -/
  exists_continuous : ∃ g : (Π x, E x →L[ℝ] E x →L[ℝ] ℝ),
    Continuous (fun (x : B) ↦ TotalSpace.mk' (F →L[ℝ] F →L[ℝ] ℝ) x (g x))
    ∧ ∀ (x : B) (v w : E x), ⟪v, w⟫ = g x v w

section Trivial

variable {F₁ : Type*} [NormedAddCommGroup F₁] [InnerProductSpace ℝ F₁]

/-- A trivial vector bundle, in which the model fiber has an inner product,
is a Riemannian bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1846c1475dfe7bb95a80b4497bdd70622b7f61bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
