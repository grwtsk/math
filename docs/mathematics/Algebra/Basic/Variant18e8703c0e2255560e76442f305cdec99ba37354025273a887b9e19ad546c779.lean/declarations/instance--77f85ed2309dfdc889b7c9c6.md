# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd5347884202aba93bdeb29ac7a9538eea315b53042c5c2f12047c48c3a3e86c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--77f85ed2309dfdc889b7c9c6",
  "source": {
    "blob": "d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77f85ed2309dfdc889b7c9c68ee60a58b1c3eb3fd052674a3cc954222a08d9c4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd5347884202aba93bdeb29ac7a9538eea315b53042c5c2f12047c48c3a3e86c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R₀} [CommRing R₀] [Algebra R₀ R] [Algebra R₀ S] [IsScalarTower R₀ R S]
    {R₁} [CommRing R₁] [Algebra R₁ R] [Algebra R₁ S] [IsScalarTower R₁ R S]
    [Algebra R₀ R₁] [IsScalarTower R₀ R₁ R] :
    IsScalarTower R₀ R₁ P.Ring := IsScalarTower.of_algebraMap_eq' <| by
  rw [IsScalarTower.algebraMap_eq R₀ R, IsScalarTower.algebraMap_eq R₁ R,
    RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq R₀ R₁ R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
