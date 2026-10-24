# toInvariantForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9141705cef5e323c7e1bca783d619cc0e54621aa7c43cf40c0b7d859becd4da3",
  "kind": "def",
  "lexical_name": "toInvariantForm",
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
  "slug": "toinvariantform--781fc44f8f88e782a08977af",
  "source": {
    "blob": "748a63ae02d53070be37838da1c5b48f1329e4be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:781fc44f8f88e782a08977afded245418cbe28b83cac8e3ab6829515232f116b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9141705cef5e323c7e1bca783d619cc0e54621aa7c43cf40c0b7d859becd4da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def toInvariantForm : InvariantForm P where
  form := B.form
  symm := B.symm
  ne_zero := B.form_apply_root_ne_zero
  isOrthogonal_reflection := B.isOrthogonal_reflection

omit [Module S M] [IsScalarTower S R M] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootPositive/Variant13dff9619cfbe026d5f0398b1862acba6d26974340b19c6ea2db9c0f60b83bb0.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748a63ae02d53070be37838da1c5b48f1329e4be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
