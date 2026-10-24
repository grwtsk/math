# localAlgHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834c6ceb-b61a-a19e-c18e-30396cb060fb",
  "kind": "lemma",
  "lexical_name": "localAlgHom_apply",
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
  "slug": "localalghom-apply--158cd04737120af967e1f30c",
  "source": {
    "blob": "31f9a7a8cc78ab3ff24305094374c01bf85e7c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 321,
    "path": "GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:158cd04737120af967e1f30cfb2894aaef273816f43193190e27386e6d89038a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834c6ceb-b61a-a19e-c18e-30396cb060fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma localAlgHom_apply [Algebra R P] (I : Ideal S) [I.IsPrime] (J : Ideal P) [J.IsPrime]
    (f : S →ₐ[R] P) (hIJ : I = J.comap f) (x) :
    localAlgHom I J f hIJ x = localRingHom I J f.toRingHom hIJ x := rfl

variable {S} in
/-- Isomorphic algebras have isomorphic localizations.

See `localAlgEquiv'` for a variant where the base ring is also localized. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f9a7a8cc78ab3ff24305094374c01bf85e7c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
