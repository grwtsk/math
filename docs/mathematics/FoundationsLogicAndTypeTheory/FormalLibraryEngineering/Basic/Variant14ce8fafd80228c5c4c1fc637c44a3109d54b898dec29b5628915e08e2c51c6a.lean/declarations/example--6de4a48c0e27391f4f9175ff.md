# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15ca4fdccc00c4e2ad1eea5c3f43d76ab302bd1576f82e48d5371b0fa6734b91",
  "kind": "example",
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
  "slug": "example--6de4a48c0e27391f4f9175ff",
  "source": {
    "blob": "ea1663d2c101eff2bee70cfcfb08e654db3f25be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant14ce8fafd80228c5c4c1fc637c44a3109d54b898dec29b5628915e08e2c51c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6de4a48c0e27391f4f9175ffe4101c9aef4ff1371ba7a5a3d09f0d76a3f31e9f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant14ce8fafd80228c5c4c1fc637c44a3109d54b898dec29b5628915e08e2c51c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15ca4fdccc00c4e2ad1eea5c3f43d76ab302bd1576f82e48d5371b0fa6734b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (xs ys : List α) : (xs ++ ys).length = ys.length + xs.length := by
  rw_search

-- This worked in previous versions, but for now doesn't.
-- There are of course better tools for AC rewriting, but it would be nice if `rw_search`
-- could do a little of it in the course of a longer rewrite.
set_option linter.style.longLine false in
/-!
-- /-
-- info: Try this: rw [← add_assoc, add_right_comm, add_assoc, add_add_add_comm, ← add_assoc, add_right_comm]
-- -/
-- #guard_msgs (drop info) in
-- example [AddCommMonoid α] {a b c d : α} : (a + b) + (c + d) = a + d + c + b := by
--   rw_search
-/

/--
info: Try this: rw [List.length_append, List.length_append, Nat.two_mul, add_rotate]
-- no goals
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant14ce8fafd80228c5c4c1fc637c44a3109d54b898dec29b5628915e08e2c51c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant14ce8fafd80228c5c4c1fc637c44a3109d54b898dec29b5628915e08e2c51c6a.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1663d2c101eff2bee70cfcfb08e654db3f25be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
