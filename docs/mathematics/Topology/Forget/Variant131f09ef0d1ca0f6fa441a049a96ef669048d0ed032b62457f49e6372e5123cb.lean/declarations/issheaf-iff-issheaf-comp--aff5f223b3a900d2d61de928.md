# isSheaf_iff_isSheaf_comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd084d7c-8c3c-3dcc-8afb-9df38fa50e06",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheaf_comp'",
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
  "slug": "issheaf-iff-issheaf-comp--aff5f223b3a900d2d61de928",
  "source": {
    "blob": "b53aa965f7b6e9c7e5caf4032a2245cef47d67ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff5f223b3a900d2d61de928874d139296282aed6c891f090a99527630c9cc32",
  "verification": {
    "reference": "docs/verification/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd084d7c-8c3c-3dcc-8afb-9df38fa50e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheaf_comp' {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
    (G : C ⥤ D) [G.ReflectsIsomorphisms] [HasLimitsOfSize.{v, v} C] [PreservesLimitsOfSize.{v, v} G]
    {X : TopCat.{v}} (F : Presheaf C X) : Presheaf.IsSheaf F ↔ Presheaf.IsSheaf (F ⋙ G) :=
  Presheaf.isSheaf_iff_isSheaf_comp _ F G

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53aa965f7b6e9c7e5caf4032a2245cef47d67ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
