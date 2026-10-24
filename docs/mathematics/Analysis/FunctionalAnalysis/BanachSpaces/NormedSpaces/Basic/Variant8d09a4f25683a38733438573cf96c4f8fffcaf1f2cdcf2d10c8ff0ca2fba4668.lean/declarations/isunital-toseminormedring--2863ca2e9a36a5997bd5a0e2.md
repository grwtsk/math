# IsUnital.toSeminormedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:029f5ff91b0b1d447dacc85421ea43ca8c1a8d9fb4b9eaabedb4a4e5919dc91d",
  "kind": "abbrev",
  "lexical_name": "IsUnital.toSeminormedRing",
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
  "slug": "isunital-toseminormedring--2863ca2e9a36a5997bd5a0e2",
  "source": {
    "blob": "0404cc81cfcfcd097f1257410f6957dc771ee174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1035,
    "line": 1026,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant8d09a4f25683a38733438573cf96c4f8fffcaf1f2cdcf2d10c8ff0ca2fba4668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2863ca2e9a36a5997bd5a0e2ed97e364f2402ebd8d91149b6be4f0bf200a7852",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant8d09a4f25683a38733438573cf96c4f8fffcaf1f2cdcf2d10c8ff0ca2fba4668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:029f5ff91b0b1d447dacc85421ea43ca8c1a8d9fb4b9eaabedb4a4e5919dc91d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1026–1035.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev IsUnital.toSeminormedRing {A : Type*} [NonUnitalSeminormedRing A]
    [IsUnital A] : SeminormedRing A where
  __ := ‹NonUnitalSeminormedRing A›
  __ := toSemiring

attribute [local instance] IsUnital.toSeminormedRing in
/-- A unital non-unital seminormed commutative ring is a seminormed commutative ring.

This constructor is primarily intended to be used within proofs since it creates bad definitional
equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant8d09a4f25683a38733438573cf96c4f8fffcaf1f2cdcf2d10c8ff0ca2fba4668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant8d09a4f25683a38733438573cf96c4f8fffcaf1f2cdcf2d10c8ff0ca2fba4668.lean#L1026).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0404cc81cfcfcd097f1257410f6957dc771ee174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
