# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d67b4cf1d5dff30d40b457ad66a0bfc68e6d26ab34a80609169f0a0020bb6e7",
  "kind": "macro_rules",
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
  "slug": "macro-rules--d7fcbadec9ac914a482be136",
  "source": {
    "blob": "cd0e1de2ee80ed727790e8b1a3275b186fa0a7a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd8dd2f979cc8a6626596ddae2b19928d540b7b63aa0e51db569852b73164ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7fcbadec9ac914a482be13657c9f8c0fe615a2978f911abc42c89ea03474933",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd8dd2f979cc8a6626596ddae2b19928d540b7b63aa0e51db569852b73164ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d67b4cf1d5dff30d40b457ad66a0bfc68e6d26ab34a80609169f0a0020bb6e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped macro_rules
  | `($X:term _⦋$m:term⦌$n:subscript) =>
    -- try `decide` before `get_elem_tactic` because it is faster for goals with literals.
    `(($X : CategoryTheory.SimplicialObject.Truncated _ $n).obj
      (Opposite.op ⟨SimplexCategory.mk $m, by first | decide | get_elem_tactic |
      fail "Failed to prove truncation property. Try writing `X _⦋m, by ...⦌ₙ`."⟩))
  | `($X:term _⦋$m:term, $p:term⦌$n:subscript) =>
    `(($X : CategoryTheory.SimplicialObject.Truncated _ $n).obj
      (Opposite.op ⟨SimplexCategory.mk $m, $p⟩))

variable (C) in
/-- Further truncation of truncated simplicial objects. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd8dd2f979cc8a6626596ddae2b19928d540b7b63aa0e51db569852b73164ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd8dd2f979cc8a6626596ddae2b19928d540b7b63aa0e51db569852b73164ee6.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd0e1de2ee80ed727790e8b1a3275b186fa0a7a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
