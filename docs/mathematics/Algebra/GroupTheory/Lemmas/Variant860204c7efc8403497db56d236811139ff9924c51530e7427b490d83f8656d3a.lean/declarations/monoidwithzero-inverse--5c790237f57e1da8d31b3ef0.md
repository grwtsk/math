# MonoidWithZero.inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9cc1ace78d02ee42d695f040dc599a5388ab474430d6458cdaa5dfdc87946b8",
  "kind": "def",
  "lexical_name": "MonoidWithZero.inverse",
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
  "slug": "monoidwithzero-inverse--5c790237f57e1da8d31b3ef0",
  "source": {
    "blob": "0313751e6be6d84be29c51b23c11f3a75da03cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 253,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c790237f57e1da8d31b3ef0db798f4002c623c0e85aedbdef928f51b870a0af",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9cc1ace78d02ee42d695f040dc599a5388ab474430d6458cdaa5dfdc87946b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def MonoidWithZero.inverse {M : Type*} [CommMonoidWithZero M] :
    M →*₀ M where
  toFun := Ring.inverse
  map_zero' := Ring.inverse_zero _
  map_one' := Ring.inverse_one _
  map_mul' x y := (Ring.mul_inverse_rev x y).trans (mul_comm _ _)
#align monoid_with_zero.inverse MonoidWithZero.inverse

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0313751e6be6d84be29c51b23c11f3a75da03cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
