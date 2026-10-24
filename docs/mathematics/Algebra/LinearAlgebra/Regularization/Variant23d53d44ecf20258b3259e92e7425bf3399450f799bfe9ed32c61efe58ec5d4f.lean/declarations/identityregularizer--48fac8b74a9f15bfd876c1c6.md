# identityRegularizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04e1b4be63889b601f9b11e0a3f091eb1ed6b668fe0292d1f4d1f9174f81304e",
  "kind": "def",
  "lexical_name": "identityRegularizer",
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
  "slug": "identityregularizer--48fac8b74a9f15bfd876c1c6",
  "source": {
    "blob": "24f3dc429f88cde0cf944d1bf7d2fde936e0456c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48fac8b74a9f15bfd876c1c64616fd0768a25a355e2ca0f6c12698f93ea1b0dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04e1b4be63889b601f9b11e0a3f091eb1ed6b668fe0292d1f4d1f9174f81304e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identityRegularizer (epsilon : ℝ) : Matrix Index Index ℂ :=
  Matrix.diagonal fun _ ↦ (epsilon : ℂ)

/-- A positive real diagonal is positive definite over the complex field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Regularization/Variant23d53d44ecf20258b3259e92e7425bf3399450f799bfe9ed32c61efe58ec5d4f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24f3dc429f88cde0cf944d1bf7d2fde936e0456c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
