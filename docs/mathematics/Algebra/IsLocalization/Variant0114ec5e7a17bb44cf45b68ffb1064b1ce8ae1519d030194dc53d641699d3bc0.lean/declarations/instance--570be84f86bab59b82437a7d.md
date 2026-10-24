# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f542997bed8ef18a5cd2f4162d40d4bf65efb683fcecd092504932212f7e3157",
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
  "slug": "instance--570be84f86bab59b82437a7d",
  "source": {
    "blob": "d30404dae678363873714863ac3f07e5692ec6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:570be84f86bab59b82437a7d75c70eacc5f4ffc0edefa961ba8a822f3bad1fb4",
  "verification": {
    "reference": "docs/verification/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f542997bed8ef18a5cd2f4162d40d4bf65efb683fcecd092504932212f7e3157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsLocalization (Algebra.algebraMapSubmonoid A S) Aₛ] :
    IsLocalizedModule S (IsScalarTower.toAlgHom R A Aₛ).toLinearMap :=
  isLocalizedModule_iff_isLocalization.mpr ‹_›

variable (A)

/-- `A` is a localization of a commutative semiring `R` with respect to `S` iff
the associated linear map `R →ₗ[R] A` is a localization of modules with respect to `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsLocalization/Variant0114ec5e7a17bb44cf45b68ffb1064b1ce8ae1519d030194dc53d641699d3bc0.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d30404dae678363873714863ac3f07e5692ec6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
