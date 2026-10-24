# not_isDiag_mk'_of_mem_offDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8c3047e-8e03-9ae9-e310-29607ca4529d",
  "kind": "theorem",
  "lexical_name": "not_isDiag_mk'_of_mem_offDiag",
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
  "slug": "not-isdiag-mk-of-mem-offdiag--1917f5d0cf3248edc58d54f8",
  "source": {
    "blob": "1fb43de6ddbc6eadc79c296212a041c3923673ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1917f5d0cf3248edc58d54f862b7461560a0114deec9bb7a35618dd03e9c1e9e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8c3047e-8e03-9ae9-e310-29607ca4529d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isDiag_mk'_of_mem_offDiag {a : α × α} (h : a ∈ s.offDiag) : ¬Sym2.IsDiag ⟦a⟧ := by
  rw [Sym2.isDiag_iff_proj_eq]
  exact (mem_offDiag.1 h).2.2
#align finset.not_is_diag_mk_of_mem_off_diag Finset.not_isDiag_mk'_of_mem_offDiag

section Sym2

variable {m : Sym2 α}

/-- Lifts a finset to `Sym2 α`. `s.sym2` is the finset of all pairs with elements in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variantd9b4999dd5d5532532afdc26b44de7abf84206e9fd76c47679533ede7265426d.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb43de6ddbc6eadc79c296212a041c3923673ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
