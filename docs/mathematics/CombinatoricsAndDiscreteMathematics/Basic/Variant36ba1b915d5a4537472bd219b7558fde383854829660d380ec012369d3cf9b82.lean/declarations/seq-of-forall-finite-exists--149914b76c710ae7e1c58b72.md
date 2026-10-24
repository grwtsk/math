# seq_of_forall_finite_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f502f954-362b-e937-48af-094d0c0efc5a",
  "kind": "theorem",
  "lexical_name": "seq_of_forall_finite_exists",
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
  "slug": "seq-of-forall-finite-exists--149914b76c710ae7e1c58b72",
  "source": {
    "blob": "29289d04195d93d1e3d4302a7e6539325c1280be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 776,
    "line": 762,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant36ba1b915d5a4537472bd219b7558fde383854829660d380ec012369d3cf9b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149914b76c710ae7e1c58b72a0984877a622980e41b96840ff95dc16d9aa0590",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant36ba1b915d5a4537472bd219b7558fde383854829660d380ec012369d3cf9b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f502f954-362b-e937-48af-094d0c0efc5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–776.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seq_of_forall_finite_exists {γ : Type*} {P : γ → Set γ → Prop}
    (h : ∀ t : Set γ, t.Finite → ∃ c, P c t) : ∃ u : ℕ → γ, ∀ n, P (u n) (u '' Iio n) := by
  have : Nonempty γ := (h ∅ finite_empty).nonempty
  choose! c hc using h
  set f : (n : ℕ) → (g : (m : ℕ) → m < n → γ) → γ := fun n g => c (range fun k : Iio n => g k.1 k.2)
  set u : ℕ → γ := fun n ↦ Nat.strongRecOn n f
  refine ⟨u, fun n ↦ ?_⟩
  convert! hc (u '' Iio n) ((finite_lt_nat _).image _)
  rw [image_eq_range]
  exact Nat.strongRecOn_eq f n

end

/-! ### Cardinality -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant36ba1b915d5a4537472bd219b7558fde383854829660d380ec012369d3cf9b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant36ba1b915d5a4537472bd219b7558fde383854829660d380ec012369d3cf9b82.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29289d04195d93d1e3d4302a7e6539325c1280be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
