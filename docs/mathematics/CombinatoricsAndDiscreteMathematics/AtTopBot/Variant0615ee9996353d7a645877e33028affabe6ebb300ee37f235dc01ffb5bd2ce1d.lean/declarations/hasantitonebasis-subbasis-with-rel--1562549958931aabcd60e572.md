# HasAntitoneBasis.subbasis_with_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ee3f26-9ebd-477b-b402-0fcf8b2638b3",
  "kind": "theorem",
  "lexical_name": "HasAntitoneBasis.subbasis_with_rel",
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
  "slug": "hasantitonebasis-subbasis-with-rel--1562549958931aabcd60e572",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1872,
    "line": 1857,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1562549958931aabcd60e572365006783058210d299e3e9133d888c7dfd13628",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ee3f26-9ebd-477b-b402-0fcf8b2638b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1857–1872.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasAntitoneBasis.subbasis_with_rel {f : Filter α} {s : ℕ → Set α}
    (hs : f.HasAntitoneBasis s) {r : ℕ → ℕ → Prop} (hr : ∀ m, ∀ᶠ n in atTop, r m n) :
    ∃ φ : ℕ → ℕ, StrictMono φ ∧ (∀ ⦃m n⦄, m < n → r (φ m) (φ n)) ∧ f.HasAntitoneBasis (s ∘ φ) := by
  -- porting note: use `rsuffices`
  suffices : ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ m n, m < n → r (φ m) (φ n)
  · rcases this with ⟨φ, hφ, hrφ⟩
    exact ⟨φ, hφ, hrφ, hs.comp_strictMono hφ⟩
  have : ∀ t : Set ℕ, t.Finite → ∀ᶠ n in atTop, ∀ m ∈ t, m < n ∧ r m n := fun t ht =>
    (eventually_all_finite ht).2 fun m _ => (eventually_gt_atTop m).and (hr _)
  rcases seq_of_forall_finite_exists fun t ht => (this t ht).exists with ⟨φ, hφ⟩
  simp only [ball_image_iff, forall_and, mem_Iio] at hφ
  exact ⟨φ, forall_swap.2 hφ.1, forall_swap.2 hφ.2⟩
#align filter.has_antitone_basis.subbasis_with_rel Filter.HasAntitoneBasis.subbasis_with_rel

/-- If `f` is a nontrivial countably generated filter, then there exists a sequence that converges
to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L1857).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
