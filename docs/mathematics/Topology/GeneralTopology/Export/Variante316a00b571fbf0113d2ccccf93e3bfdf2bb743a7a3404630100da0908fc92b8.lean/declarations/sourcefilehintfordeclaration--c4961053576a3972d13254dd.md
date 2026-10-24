# sourceFileHintForDeclaration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:107e7dd7d8930459027be40c1889606698f932f9657dedecc1c9484a7a2d513d",
  "kind": "def",
  "lexical_name": "sourceFileHintForDeclaration",
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
  "slug": "sourcefilehintfordeclaration--c4961053576a3972d13254dd",
  "source": {
    "blob": "e1c14e0ed8d4faa652c4adde057726bbd6400fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 459,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4961053576a3972d13254ddd0fd9ceb8c5fb847fe4bfad8704428d94f0543c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:107e7dd7d8930459027be40c1889606698f932f9657dedecc1c9484a7a2d513d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceFileHintForDeclaration (name : String) : String :=
  if name ∈ mathematicalTheoremFacingWhitelistNames then
    "formal/Surface/Arithmetic/GaloisCohomology/Finite.lean"
  else if name.startsWith "Surface.Arithmetic.EllipticCurve.BSD" then
    "formal/Surface/Arithmetic/EllipticCurve/BSD"
  else if name.startsWith "Surface.Hilbert" then
    "formal/Surface/Hilbert"
  else if name.startsWith "Surface.Spectral" then
    "formal/Surface/Spectral"
  else if name.startsWith "Surface.Prismatic" then
    "formal/Surface/Prismatic"
  else if name.startsWith "Surface.Homology" then
    "formal/Surface/Homology"
  else if name.startsWith "Surface.Flow" then
    "formal/Surface/Flow"
  else if name.startsWith "Surface.Boolean" then
    "formal/Surface/Boolean"
  else
    "formal/Surface"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c14e0ed8d4faa652c4adde057726bbd6400fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
