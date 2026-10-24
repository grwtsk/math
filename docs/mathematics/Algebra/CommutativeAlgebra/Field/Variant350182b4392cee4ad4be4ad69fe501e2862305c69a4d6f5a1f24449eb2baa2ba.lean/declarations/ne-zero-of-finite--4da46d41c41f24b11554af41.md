# ne_zero_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf53f4f7e0af5eedaae6bb2c6a648deeda148025",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d928388-45a8-f98c-b4ae-b9a894dd44af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99995ab0-9769-f925-738f-9ad8a1b532e8",
  "kind": "theorem",
  "lexical_name": "ne_zero_of_finite",
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
  "slug": "ne-zero-of-finite--4da46d41c41f24b11554af41",
  "source": {
    "blob": "bf53f4f7e0af5eedaae6bb2c6a648deeda148025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4da46d41c41f24b11554af41a7ce7b7e694cc4c2336a1e6a49a0fa96c1285e23",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99995ab0-9769-f925-738f-9ad8a1b532e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_zero_of_finite (e : B) [FiniteDimensional A B] : minpoly A e ≠ 0 :=
  minpoly.ne_zero <| .of_finite A _

/-- The minimal polynomial of an element `x` is uniquely characterized by its defining property:
if there is another monic polynomial of minimal degree that has `x` as a root, then this polynomial
is equal to the minimal polynomial of `x`. See also `minpoly.IsIntegrallyClosed.Minpoly.unique`
which relaxes the assumptions on `A` in exchange for stronger assumptions on `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf53f4f7e0af5eedaae6bb2c6a648deeda148025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
