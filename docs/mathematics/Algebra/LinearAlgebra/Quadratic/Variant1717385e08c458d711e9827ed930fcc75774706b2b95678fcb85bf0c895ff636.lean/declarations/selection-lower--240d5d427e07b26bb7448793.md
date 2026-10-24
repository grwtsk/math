# selection_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c29bb62-83d3-1d27-d2a9-2d0244e65095",
  "kind": "theorem",
  "lexical_name": "selection_lower",
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
  "slug": "selection-lower--240d5d427e07b26bb7448793",
  "source": {
    "blob": "40fcd297ecdfe347f54d9a9a0a47d2820827643e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:240d5d427e07b26bb74487933d58cab1b058aef65f8e3496c12d80e712efedc5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c29bb62-83d3-1d27-d2a9-2d0244e65095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selection_lower {n : ℕ} (r : Fin (n + 1) ↪o ℕ) (i : Fin (n + 1)) :
    r 0 + i.val ≤ r i := by
  have h : ∀ j (hj : j < n + 1), r 0 + j ≤ r ⟨j, hj⟩ := by
    intro j
    induction j with
    | zero => intro hj; simp
    | succ j ih =>
      intro hj
      have hj' : j < n + 1 := by omega
      have hp := ih hj'
      have hs := r.strictMono (show (⟨j, hj'⟩ : Fin (n + 1)) < ⟨j + 1, hj⟩ by
        change j < j + 1; omega)
      omega
  exact h i.val i.isLt

/-- Either the selections are consecutive, or there is a first genuine gap.
The prefix length is positive; gap data are values, not a chosen sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fcd297ecdfe347f54d9a9a0a47d2820827643e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
