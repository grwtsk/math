# ofUnits_units_gci

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f52811347bfae5bb02abaf30dc04e5a05a5f6ac561c1f9738ec552c452e9db5d",
  "kind": "def",
  "lexical_name": "ofUnits_units_gci",
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
  "slug": "ofunits-units-gci--dab3c73851baeac4d54e7dee",
  "source": {
    "blob": "1b7ab074e2b19f533cffc3fd3114d406f38a32f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 80,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dab3c73851baeac4d54e7deeb4e8538aaba756042c69ebd2b4fa187069ac85ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f52811347bfae5bb02abaf30dc04e5a05a5f6ac561c1f9738ec552c452e9db5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofUnits_units_gci : GaloisCoinsertion (Subgroup.ofUnits (M := M)) (Submonoid.units) :=
  GaloisCoinsertion.monotoneIntro Submonoid.units_mono Subgroup.ofUnits_mono
  Submonoid.ofUnits_units_le Subgroup.units_ofUnits_eq

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7ab074e2b19f533cffc3fd3114d406f38a32f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
