# isIso_toBasicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca8a5fd01f9ac7308d9013b55cd9a0d3ddb806291f8649e751cac268a51bef9f",
  "kind": "instance",
  "lexical_name": "isIso_toBasicOpen",
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
  "slug": "isiso-tobasicopen--6ce88596091ee4c3c827294b",
  "source": {
    "blob": "b2b8f88a0a3366a26e204ada4a5f97b22cc22de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 837,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ce88596091ee4c3c827294b2282432aa7a4af6f319315179fc9bc482efb83c2",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca8a5fd01f9ac7308d9013b55cd9a0d3ddb806291f8649e751cac268a51bef9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_toBasicOpen (f : R) :
    IsIso (CommRingCat.ofHom (toBasicOpen R f)) :=
  haveI : IsIso ((forget CommRingCat).map (CommRingCat.ofHom (toBasicOpen R f))) :=
    (isIso_iff_bijective _).mpr ⟨toBasicOpen_injective R f, toBasicOpen_surjective R f⟩
  isIso_of_reflects_iso _ (forget CommRingCat)

/-- The ring isomorphism between the structure sheaf on `basicOpen f` and the localization of `R`
at the submonoid of powers of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b8f88a0a3366a26e204ada4a5f97b22cc22de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
