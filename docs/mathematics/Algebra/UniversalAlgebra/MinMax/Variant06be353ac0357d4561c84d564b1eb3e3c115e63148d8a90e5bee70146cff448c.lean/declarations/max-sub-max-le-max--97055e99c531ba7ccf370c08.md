# max_sub_max_le_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00ae3564-3260-65c6-9b6a-6a607788a085",
  "kind": "theorem",
  "lexical_name": "max_sub_max_le_max",
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
  "slug": "max-sub-max-le-max--97055e99c531ba7ccf370c08",
  "source": {
    "blob": "b9a7a05fc2951ffd6d5d768aabcc7ca3fc3fd788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97055e99c531ba7ccf370c0814fb425c732f79bc9418cb75cbda17cc3d99e1ec",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00ae3564-3260-65c6-9b6a-6a607788a085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max_sub_max_le_max (a b c d : α) : max a b - max c d ≤ max (a - c) (b - d) := by
  simp only [sub_le_iff_le_add, max_le_iff]; constructor
  · calc
    a = a - c + c := (sub_add_cancel a c).symm
    _ ≤ max (a - c) (b - d) + max c d := add_le_add (le_max_left _ _) (le_max_left _ _)
  · calc
    b = b - d + d := (sub_add_cancel b d).symm
    _ ≤ max (a - c) (b - d) + max c d := add_le_add (le_max_right _ _) (le_max_right _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a7a05fc2951ffd6d5d768aabcc7ca3fc3fd788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
