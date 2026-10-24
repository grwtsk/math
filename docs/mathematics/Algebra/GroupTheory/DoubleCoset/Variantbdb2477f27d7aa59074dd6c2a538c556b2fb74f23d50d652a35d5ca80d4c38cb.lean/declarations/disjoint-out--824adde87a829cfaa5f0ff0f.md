# disjoint_out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c3980fb-8f3e-1742-dd3d-cfb80ed073a7",
  "kind": "theorem",
  "lexical_name": "disjoint_out",
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
  "slug": "disjoint-out--824adde87a829cfaa5f0ff0f",
  "source": {
    "blob": "d6fceaa0cc749a0ce8831c091cfce6afdd645f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 140,
    "path": "GRWTSK/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:824adde87a829cfaa5f0ff0f1903e7014557bf2fd54df614b26d8b4e2504780b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3980fb-8f3e-1742-dd3d-cfb80ed073a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_out {H K : Subgroup G} {a b : Quotient H K} :
    a ≠ b → Disjoint (doset a.out H K) (doset b.out (H : Set G) K) := by
  contrapose!
  intro h
  simpa [out_eq'] using mk_eq_of_doset_eq (eq_of_not_disjoint h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fceaa0cc749a0ce8831c091cfce6afdd645f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
