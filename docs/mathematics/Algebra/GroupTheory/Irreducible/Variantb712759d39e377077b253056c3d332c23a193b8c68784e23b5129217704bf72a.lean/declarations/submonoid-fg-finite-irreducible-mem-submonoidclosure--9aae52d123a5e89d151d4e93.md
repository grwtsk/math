# Submonoid.FG.finite_irreducible_mem_submonoidClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2949340-7433-9c24-6394-d61fb1a8af17",
  "kind": "lemma",
  "lexical_name": "Submonoid.FG.finite_irreducible_mem_submonoidClosure",
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
  "slug": "submonoid-fg-finite-irreducible-mem-submonoidclosure--9aae52d123a5e89d151d4e93",
  "source": {
    "blob": "3f210cc8fd07e86f4f86d714d002b31c553960d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aae52d123a5e89d151d4e93f23c3ae4d710e70f47978d580c4c7b066ddde5dd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2949340-7433-9c24-6394-d61fb1a8af17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submonoid.FG.finite_irreducible_mem_submonoidClosure {S : Submonoid M} (hS : S.FG) :
    {p ∈ S | Irreducible p}.Finite := by
  obtain ⟨T, hT⟩ := hS; exact T.finite_toSet.subset <| hT ▸ irreducible_mem_submonoidClosure_subset

variable [Monoid.FG M]

/-- A finitely generated monoid with a single unit has finitely many irreducible elements. -/
@[to_additive
/-- A finitely generated additive monoid with a single unit has finitely many irreducible
elements. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f210cc8fd07e86f4f86d714d002b31c553960d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
