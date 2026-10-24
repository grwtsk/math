# arborescenceMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfecb355f1d0bb03579098b7a51c8284894da28dd9a0bea70dc40f6066dc76b2",
  "kind": "def",
  "lexical_name": "arborescenceMk",
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
  "slug": "arborescencemk--c7ae5f3df9075d42cf001f68",
  "source": {
    "blob": "6c3618c088d2dc87b55711501d976090a0e0e943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7ae5f3df9075d42cf001f68f428f0fd0bd4dc47a6c80e85a6444a0248b7c503",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfecb355f1d0bb03579098b7a51c8284894da28dd9a0bea70dc40f6066dc76b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def arborescenceMk {V : Type u} [Quiver V] (r : V) (height : V → ℕ)
    (height_lt : ∀ ⦃a b⦄, (a ⟶ b) → height a < height b)
    (unique_arrow : ∀ ⦃a b c : V⦄ (e : a ⟶ c) (f : b ⟶ c), a = b ∧ e ≍ f)
    (root_or_arrow : ∀ b, b = r ∨ ∃ a, Nonempty (a ⟶ b)) :
    Arborescence V where
  root := r
  uniquePath b :=
    ⟨Classical.inhabited_of_nonempty (by
      rcases show ∃ n, height b < n from ⟨_, Nat.lt_add_one _⟩ with ⟨n, hn⟩
      induction n generalizing b with
      | zero => exact False.elim (Nat.not_lt_zero _ hn)
      | succ n ih =>
      rcases root_or_arrow b with (⟨⟨⟩⟩ | ⟨a, ⟨e⟩⟩)
      · exact ⟨Path.nil⟩
      · rcases ih a (lt_of_lt_of_le (height_lt e) (Nat.lt_succ_iff.mp hn)) with ⟨p⟩
        exact ⟨p.cons e⟩), by
      have height_le : ∀ {a b}, Path a b → height a ≤ height b := by
        intro a b p
        induction p with
        | nil => rfl
        | cons _ e ih => exact le_of_lt (lt_of_le_of_lt ih (height_lt e))
      suffices ∀ p q : Path r b, p = q by
        intro p
        apply this
      intro p q
      induction p with
      | nil =>
        rcases q with _ | ⟨q, f⟩
        · rfl
        · exact False.elim (lt_irrefl _ (lt_of_le_of_lt (height_le q) (height_lt f)))
      | cons p e ih =>
        rcases q with _ | ⟨q, f⟩
        · exact False.elim (lt_irrefl _ (lt_of_le_of_lt (height_le p) (height_lt e)))
        · rcases unique_arrow e f with ⟨⟨⟩, ⟨⟩⟩
          rw [ih]⟩

/-- `RootedConnected r` means that there is a path from `r` to any other vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantc9f8859d65513624f58fb85a3797a5f658eb107e6d03aa09a2681c8ecf09c870.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3618c088d2dc87b55711501d976090a0e0e943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
