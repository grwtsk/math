# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:983de77d3e0efe4a66cd0b2e56d0e3eb54888d550a0bac25759d493b7a665591",
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
  "slug": "instance--2fcdabfff8dc9dac88599145",
  "source": {
    "blob": "85cbeba7116078d4311bf5449c841f179664b029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fcdabfff8dc9dac88599145029c1048948dc934912d43af03f39fc5cf91bb51",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:983de77d3e0efe4a66cd0b2e56d0e3eb54888d550a0bac25759d493b7a665591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasAffineProperty (isomorphisms Scheme) fun X _ f _ ↦ IsAffine X ∧ IsIso (f.appTop) := by
  convert HasAffineProperty.of_isLocalAtTarget (isomorphisms Scheme) with X Y f hY
  exact ⟨fun ⟨_, _⟩ ↦ (arrow_mk_iso_iff (isomorphisms _) (arrowIsoSpecΓOfIsAffine f)).mpr
    (inferInstanceAs (IsIso (Spec.map (f.appTop)))),
    fun (_ : IsIso f) ↦ ⟨.of_isIso f, inferInstance⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85cbeba7116078d4311bf5449c841f179664b029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
