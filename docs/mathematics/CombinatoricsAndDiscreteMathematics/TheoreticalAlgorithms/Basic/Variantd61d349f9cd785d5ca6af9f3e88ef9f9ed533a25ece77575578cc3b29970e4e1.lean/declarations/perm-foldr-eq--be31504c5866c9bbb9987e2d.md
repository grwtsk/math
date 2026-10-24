# Perm.foldr_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "923c1c300d4a3065d5bb567287cee78a3fb0cccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c8e2978-fbe1-b463-7145-16066cc1d84b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a71c30ef-5d09-0764-9a96-a6898806eff2",
  "kind": "theorem",
  "lexical_name": "Perm.foldr_eq",
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
  "slug": "perm-foldr-eq--be31504c5866c9bbb9987e2d",
  "source": {
    "blob": "923c1c300d4a3065d5bb567287cee78a3fb0cccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be31504c5866c9bbb9987e2da4bef526e153840d267a7a75cfa8a8cd4a6bcfc9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71c30ef-5d09-0764-9a96-a6898806eff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Perm.foldr_eq {f : α → β → β} {l₁ l₂ : List α} [lcomm : LeftCommutative f] (p : l₁ ~ l₂) :
    ∀ b, foldr f b l₁ = foldr f b l₂ := by
  intro b
  induction p using Perm.recOnSwap' generalizing b with
  | nil => rfl
  | cons _ _ r  => simp [r b]
  | swap' _ _ _ r => simp only [foldr_cons]; rw [lcomm.left_comm, r b]
  | trans _ _ r₁ r₂ => exact Eq.trans (r₁ b) (r₂ b)

section

variable {op : α → α → α} [IA : Std.Associative op] [IC : Std.Commutative op]

local notation a " * " b => op a b

local notation l " <*> " a => foldl op a l

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `923c1c300d4a3065d5bb567287cee78a3fb0cccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
