# isIso_toBasicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65470656456231f50ae6ac4a6cb3e64704ab310b1631fd0da8765110c75941ae",
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
  "slug": "isiso-tobasicopen--fba4b3b4287dcf1e85df2d80",
  "source": {
    "blob": "9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 829,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fba4b3b4287dcf1e85df2d806e5676419c5997d37e6f8572810d18b81cae96e0",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65470656456231f50ae6ac4a6cb3e64704ab310b1631fd0da8765110c75941ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–836.

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

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
