# selection_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c248979a-5c94-45c6-e4ab-1033e3d0cbac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55a8f0e8-fc92-2ee2-cea7-b31e54c90b1b",
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
  "slug": "selection-lower--ec40ad8dd0ab8b93c1378455",
  "source": {
    "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec40ad8dd0ab8b93c1378455416a703570e50fa13942507b16d08b28521f69a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a8f0e8-fc92-2ee2-cea7-b31e54c90b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b71f7d822fccafd5eca181717f14ce8a4d4317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
