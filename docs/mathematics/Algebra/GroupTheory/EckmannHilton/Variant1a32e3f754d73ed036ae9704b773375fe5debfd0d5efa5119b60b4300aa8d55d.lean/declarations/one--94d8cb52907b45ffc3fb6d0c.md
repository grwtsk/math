# one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42970b12-ec4c-a4ed-972a-e377d9790eab",
  "kind": "theorem",
  "lexical_name": "one",
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
  "slug": "one--94d8cb52907b45ffc3fb6d0c",
  "source": {
    "blob": "1c3749775b0197f63a47ae74584e11f1f4764680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 65,
    "path": "GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94d8cb52907b45ffc3fb6d0cca2f3a20ad59381776c13239a0d6cce009b6fa07",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42970b12-ec4c-a4ed-972a-e377d9790eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one : e₁ = e₂ := by
  simpa only [h₁.left_id, h₁.right_id, h₂.left_id, h₂.right_id] using distrib e₂ e₁ e₁ e₂
#align eckmann_hilton.one EckmannHilton.one

/-- If a type carries two unital binary operations that distribute over each other,
then these operations are equal.

In fact, they give a commutative monoid structure, see `eckmann_hilton.CommMonoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3749775b0197f63a47ae74584e11f1f4764680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
