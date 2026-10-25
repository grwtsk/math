# iunfoldr_getLsbD'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:740bcc5f-95dd-4582-eaf3-38659ab12dc1",
  "kind": "theorem",
  "lexical_name": "iunfoldr_getLsbD'",
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
  "slug": "iunfoldr-getlsbd--b0bd63c87f2553b93be49963",
  "source": {
    "blob": "e23a6264858745dbc3124ff4a04d979bb370b32f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0bd63c87f2553b93be49963813198fd1fd9c92bab81a85dac4323081a2a14de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:740bcc5f-95dd-4582-eaf3-38659ab12dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iunfoldr_getLsbD' {f : Fin w → α → α × Bool} (state : Nat → α)
    (ind : ∀(i : Fin w), (f i (state i.val)).fst = state (i.val+1)) :
  (∀ i : Fin w, getLsbD (iunfoldr f (state 0)).snd i.val = (f i (state i.val)).snd)
  ∧ (iunfoldr f (state 0)).fst = state w := by
  unfold iunfoldr
  simp
  apply Fin.hIterate_elim
        (fun j (p : α × BitVec j) => (hj : j ≤ w) →
         (∀ i : Fin j,  getLsbD p.snd i.val = (f ⟨i.val, Nat.lt_of_lt_of_le i.isLt hj⟩ (state i.val)).snd)
          ∧ p.fst = state j)
  case hj => simp
  case init =>
    intro
    apply And.intro
    · intro i
      have := Fin.pos i
      contradiction
    · rfl
  case step =>
    intro j ⟨s, v⟩ ih hj
    apply And.intro
    case left =>
      intro i
      simp only [getLsbD_cons]
      have hj2 : j.val ≤ w := by simp
      cases (Nat.lt_or_eq_of_le (Nat.lt_succ_iff.mp i.isLt)) with
      | inl h3 => simp [(Nat.ne_of_lt h3)]
                  exact (ih hj2).1 ⟨i.val, h3⟩
      | inr h3 => simp [h3]
                  cases (Nat.eq_zero_or_pos j.val) with
                  | inl hj3 => congr
                               rw [← (ih hj2).2]
                  | inr hj3 => congr
                               exact (ih hj2).2
    case right =>
      simp
      have hj2 : j.val ≤ w := by simp
      rw [← ind j, ← (ih hj2).2]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantf42268a5bc3c055803e03d1ce10f17c8f97b6a516130f72319aa0654b294c579.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23a6264858745dbc3124ff4a04d979bb370b32f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
