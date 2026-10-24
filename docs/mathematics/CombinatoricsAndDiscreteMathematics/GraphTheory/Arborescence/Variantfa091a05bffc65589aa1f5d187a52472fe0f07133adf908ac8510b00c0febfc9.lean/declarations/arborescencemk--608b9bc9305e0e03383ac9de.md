# arborescenceMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f54e2c76da3f94d6c318e629a0de2e3ca75c9174015714d6cdde829af32d8d0c",
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
  "slug": "arborescencemk--608b9bc9305e0e03383ac9de",
  "source": {
    "blob": "44f2fe930821c342ff0c80cc1d351aeb4513a176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:608b9bc9305e0e03383ac9de80c992a798fcd17c3903bb2900e39d33f0c99989",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f54e2c76da3f94d6c318e629a0de2e3ca75c9174015714d6cdde829af32d8d0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def arborescenceMk {V : Type u} [Quiver V] (r : V) (height : V → ℕ)
    (height_lt : ∀ ⦃a b⦄, (a ⟶ b) → height a < height b)
    (unique_arrow : ∀ ⦃a b c : V⦄ (e : a ⟶ c) (f : b ⟶ c), a = b ∧ HEq e f)
    (root_or_arrow : ∀ b, b = r ∨ ∃ a, Nonempty (a ⟶ b)) :
    Arborescence V where
  root := r
  uniquePath b :=
    ⟨Classical.inhabited_of_nonempty (by
      rcases show ∃ n, height b < n from ⟨_, Nat.lt.base _⟩ with ⟨n, hn⟩
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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f2fe930821c342ff0c80cc1d351aeb4513a176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
