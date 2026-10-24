# newton_contraction_unique_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbb40da7-55ee-2db4-80c4-baf0e058f7cf",
  "kind": "theorem",
  "lexical_name": "newton_contraction_unique_root",
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
  "slug": "newton-contraction-unique-root--c6f74387fabd28674af9f2ea",
  "source": {
    "blob": "61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 385,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f74387fabd28674af9f2ea794d62c124901bc5a6fdcea876c41e4b191b671e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbb40da7-55ee-2db4-80c4-baf0e058f7cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_contraction_unique_root (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I N : IntervalRat)
    (hN : newtonStepTM e I 0 1 = some N ∨ newtonStepSimple e I 0 = some N)
    (hContract : N.lo > I.lo ∧ N.hi < I.hi)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi)) :
    ∃! x, x ∈ I ∧ Expr.eval (fun _ => x) e = 0 := by
  obtain ⟨x₀, hx₀_mem, hx₀_root⟩ := newton_contraction_has_root e hsupp hvar0 I N hN hContract hCont
  have hx₀_in_I : x₀ ∈ I := by
    simp only [IntervalRat.mem_def] at hx₀_mem ⊢
    constructor
    · have h1 : (I.lo : ℝ) < N.lo := by exact_mod_cast hContract.1
      linarith [hx₀_mem.1]
    · have h2 : (N.hi : ℝ) < I.hi := by exact_mod_cast hContract.2
      linarith [hx₀_mem.2]
  use x₀
  constructor
  · exact ⟨hx₀_in_I, hx₀_root⟩
  · intro y ⟨hy_in_I, hy_root⟩
    -- Use newton_step_at_most_one_root
    have hNewtonExists : (∃ M, newtonStepTM e I 0 1 = some M) ∨ (∃ M, newtonStepSimple e I 0 = some M) := by
      rcases hN with h | h
      · left; exact ⟨N, h⟩
      · right; exact ⟨N, h⟩
    exact (newton_step_at_most_one_root e hsupp hvar0 I hNewtonExists hCont x₀ y hx₀_in_I hy_in_I hx₀_root hy_root).symm

/-! ### Newton iteration loop correctness -/

/-- If a root exists in J and Newton iteration doesn't return noRoot, the root is preserved.
    Key lemma for proving noRoot correctness.

    Note: Uses newton_preserves_root which puts x in both J and N -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variante51f207bbc3ced29d5ac1d0f9bcddc92f656940deba1913dc3552afa3dba0435.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b5dd30cab0f9e3b56e1fa631f7f2dd63d23839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
