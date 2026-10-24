# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ba050083966e8b1e4b0505114dc0014eb3e3d6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:470be298-53fd-d0aa-6bdb-35739bf1fdad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca29b85b-2cd5-257e-da8a-d0746339a118",
  "kind": "theorem",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--ea263af49d7d2b15a9a5ec39",
  "source": {
    "blob": "2ba050083966e8b1e4b0505114dc0014eb3e3d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 551,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea263af49d7d2b15a9a5ec39d0dc201b4019c8c08197833e7a6e786a7b775f70",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca29b85b-2cd5-257e-da8a-d0746339a118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp (p q : R[X]) : map f (p.comp q) = (map f p).comp (map f q) :=
  Polynomial.induction_on p (by simp only [map_C, forall_const, C_comp, eq_self_iff_true])
    (by
      simp +contextual only [Polynomial.map_add, add_comp, forall_const,
        imp_true_iff, eq_self_iff_true])
    (by
      simp +contextual only [pow_succ, ← mul_assoc, comp, forall_const,
        eval₂_mul_X, imp_true_iff, eq_self_iff_true, map_X, Polynomial.map_mul])

end Map

end Semiring

section CommSemiring

section Eval

section

variable [CommSemiring R] {p q : R[X]} {x : R} [CommSemiring S] (f : R →+* S)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant965b7d68771fc29497a850bfd9d230b700180983705f60b6e1b9be5e66b5fe4b.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ba050083966e8b1e4b0505114dc0014eb3e3d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
