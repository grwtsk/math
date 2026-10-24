# exists_nonDegenerate_max_dim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bea4ec59295cc1a946de44d07dcfc20b287a138",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49fc88c1-2cff-9055-731a-b0dd67c7fbca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce6cae1b-ab0a-e7fd-401f-b297df0a8d75",
  "kind": "lemma",
  "lexical_name": "exists_nonDegenerate_max_dim",
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
  "slug": "exists-nondegenerate-max-dim--994613b07fc380437ed38883",
  "source": {
    "blob": "8bea4ec59295cc1a946de44d07dcfc20b287a138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:994613b07fc380437ed38883610951dff11d761796c35abdc871a257b8206111",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce6cae1b-ab0a-e7fd-401f-b297df0a8d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nonDegenerate_max_dim {d : ℕ}
    (x : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate d) {n : ℕ} (hn : p + q = n) :
    ∃ (y : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate n),
      x.val ∈ (Subcomplex.ofSimplex y.val).obj _ := by
  subst hn
  obtain ⟨i, hi⟩ := Nat.le.dest (Nat.le_of_lt_succ (dim_lt_of_nonDegenerate _ x (p + q + 1)))
  induction i generalizing d with
  | zero =>
    obtain rfl : d = p + q := by lia
    exact ⟨x, Subcomplex.mem_ofSimplex_obj _⟩
  | succ d' hd' =>
    obtain ⟨y, hy⟩ := exists_nonDegenerate_max_dim_aux x (by lia)
    obtain ⟨z, hz⟩ := hd' y (by lia)
    rw [← Subcomplex.ofSimplex_le_iff] at hz
    exact ⟨z, hz _ hy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variant2d6b298cfcb039c0dedb681b96feb2af226674348441a5bdf8a73db83a064ab1.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bea4ec59295cc1a946de44d07dcfc20b287a138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
