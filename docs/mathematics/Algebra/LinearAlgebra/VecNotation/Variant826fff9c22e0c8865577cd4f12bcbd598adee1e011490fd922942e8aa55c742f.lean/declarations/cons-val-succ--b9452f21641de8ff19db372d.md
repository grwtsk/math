# cons_val_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e48dfd0c-53a1-3dbe-4d0e-e9485f0a011b",
  "kind": "theorem",
  "lexical_name": "cons_val_succ'",
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
  "slug": "cons-val-succ--b9452f21641de8ff19db372d",
  "source": {
    "blob": "1ffc3ff2cbea383e55ad6a2d352503a3cf50cd39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 141,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9452f21641de8ff19db372dcdb6db67a0a4fe72c5bc4495d487ec2a7fc42a5b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e48dfd0c-53a1-3dbe-4d0e-e9485f0a011b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_val_succ' {i : ℕ} (h : i.succ < m.succ) (x : α) (u : Fin m → α) :
    vecCons x u ⟨i.succ, h⟩ = u ⟨i, Nat.lt_of_succ_lt_succ h⟩ := by
  simp only [vecCons, Fin.cons, Fin.cases_succ']

section simprocs
open Lean Qq

/-- Parses a chain of `Matrix.vecCons` calls into elements, leaving everything else in the tail.

`let ⟨xs, tailn, tail⟩ ← matchVecConsPrefix n e` decomposes `e : Fin n → _` in the form
`vecCons x₀ <| ... <| vecCons xₙ <| tail` where `tail : Fin tailn → _`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ffc3ff2cbea383e55ad6a2d352503a3cf50cd39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
