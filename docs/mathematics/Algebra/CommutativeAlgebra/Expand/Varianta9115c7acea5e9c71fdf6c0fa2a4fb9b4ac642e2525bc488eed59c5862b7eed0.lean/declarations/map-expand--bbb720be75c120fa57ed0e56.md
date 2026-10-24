# map_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dec1169-b4b7-0c8b-71ab-8d96de00c387",
  "kind": "theorem",
  "lexical_name": "map_expand",
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
  "slug": "map-expand--bbb720be75c120fa57ed0e56",
  "source": {
    "blob": "83498553c083f8aa864c2da0b1b887485be1386e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 186,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbb720be75c120fa57ed0e56ca0e99b1278f4d4f98709a158bbe6f5946a69e38",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dec1169-b4b7-0c8b-71ab-8d96de00c387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_expand {p : ℕ} {f : R →+* S} {q : R[X]} :
    map f (expand R p q) = expand S p (map f q) := by
  by_cases hp : p = 0
  · simp [hp]
  ext
  rw [coeff_map, coeff_expand (Nat.pos_of_ne_zero hp), coeff_expand (Nat.pos_of_ne_zero hp)]
  split_ifs <;> simp_all
#align polynomial.map_expand Polynomial.map_expand

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta9115c7acea5e9c71fdf6c0fa2a4fb9b4ac642e2525bc488eed59c5862b7eed0.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83498553c083f8aa864c2da0b1b887485be1386e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
