# isExtrOn_T_real_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e072ca8-3252-0ad8-3f66-e1435dedd1d1",
  "kind": "theorem",
  "lexical_name": "isExtrOn_T_real_iff",
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
  "slug": "isextron-t-real-iff--d7d78c4f444a27b8eca32a61",
  "source": {
    "blob": "43664163643071b24f6d0306d899056246a5b894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 304,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d78c4f444a27b8eca32a6163566ac12ea4397ec141b3b2d3f27fe36fa254ea",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e072ca8-3252-0ad8-3f66-e1435dedd1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isExtrOn_T_real_iff {n : ℕ} (hn : n ≠ 0) {x : ℝ} (hx : x ∈ Set.Icc (-1) 1) :
    IsExtrOn (T ℝ n).eval (Set.Icc (-1) 1) x ↔
    ∃ k ≤ n, x = cos (k * π / n) := by
  constructor
  · intro h
    apply (abs_eval_T_real_eq_one_iff hn x).mp
    apply eq_of_le_of_ge (abs_eval_T_real_le_one n (by grind))
    refine h.elim (fun h => ?_) (fun h => ?_)
    · refine le_abs.mpr (.inr (le_neg_of_le_neg ?_))
      have := isMinOn_iff.mp h (cos (1 * π / n)) (by grind [abs_cos_le_one])
      rwa [(eval_T_real_eq_neg_one_iff hn (cos (1 * π / n))).mpr ⟨1, Nat.one_le_iff_ne_zero.mpr hn,
        by simp⟩] at this
    · refine le_abs.mpr (.inl ?_)
      have := isMaxOn_iff.mp h (cos (0 * π / n)) (by simp)
      rwa [(eval_T_real_eq_one_iff hn _).mpr ⟨0, by simp, by simp⟩] at this
  · rintro ⟨k, hk, hx⟩
    rw [hx]
    exact isExtrOn_T_real hn hk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43664163643071b24f6d0306d899056246a5b894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
