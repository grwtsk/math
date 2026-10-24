# eq_mk_of_is_sol_of_eq_init'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c287adaf-4c3d-bded-5639-278f17bac5aa",
  "kind": "theorem",
  "lexical_name": "eq_mk_of_is_sol_of_eq_init'",
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
  "slug": "eq-mk-of-is-sol-of-eq-init--51e348a2afb61dfa84157cd8",
  "source": {
    "blob": "f570caaf7b0fefbb63bd3e911dc15d73f35df2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51e348a2afb61dfa84157cd87f66273d25c39f124b54b87c6272e3804eb53454",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c287adaf-4c3d-bded-5639-278f17bac5aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_mk_of_is_sol_of_eq_init' {u : ℕ → α} {init : Fin E.order → α} (h : E.IsSolution u)
    (heq : ∀ n : Fin E.order, u n = init n) : u = E.mkSol init :=
  funext (E.eq_mk_of_is_sol_of_eq_init h heq)
#align linear_recurrence.eq_mk_of_is_sol_of_eq_init' LinearRecurrence.eq_mk_of_is_sol_of_eq_init'

/-- The space of solutions of `E`, as a `Submodule` over `α` of the module `ℕ → α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variantb6a56a03887502dc5c8c8c23bfe4b86e42b0fc384893289f3c740b6cc1a67ad1.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f570caaf7b0fefbb63bd3e911dc15d73f35df2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
