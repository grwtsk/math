# vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f81f8ea20ff3277a44181182c7d60b3bd854dcbefc7f0c612c9fbaa876ba85e7",
  "kind": "instance",
  "lexical_name": "vsub",
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
  "slug": "vsub--1dcb449fdce1f49d32b725b7",
  "source": {
    "blob": "40d80ccb991e9755f8e681c5d5b5ed22c1f1e106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 236,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dcb449fdce1f49d32b725b74695e6d4b7f71c0b9123e05fd488b4b49ff4cd68",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f81f8ea20ff3277a44181182c7d60b3bd854dcbefc7f0c612c9fbaa876ba85e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance vsub : VSub (Set α) (Set β) where vsub := image2 (· -ᵥ ·)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant96ffa29be804a2816e9b0b6a61afc63af202dc22bef79a6cfa11245ae17c39ab.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d80ccb991e9755f8e681c5d5b5ed22c1f1e106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
