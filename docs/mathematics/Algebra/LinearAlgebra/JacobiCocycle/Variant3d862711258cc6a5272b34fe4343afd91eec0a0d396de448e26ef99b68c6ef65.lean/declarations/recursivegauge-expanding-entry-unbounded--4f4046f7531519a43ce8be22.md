# recursiveGauge_expanding_entry_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ad0dfb0-7168-8e2d-e55a-3eca7c5bb37f",
  "kind": "theorem",
  "lexical_name": "recursiveGauge_expanding_entry_unbounded",
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
  "slug": "recursivegauge-expanding-entry-unbounded--4f4046f7531519a43ce8be22",
  "source": {
    "blob": "fcf5fec08a2312282fde4a34f92ad440b230e08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f4046f7531519a43ce8be227d25e75eb1728a94bbd135a3ecd8dfc2106a5d5e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ad0dfb0-7168-8e2d-e55a-3eca7c5bb37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveGauge_expanding_entry_unbounded :
    ∀ C : ℚ, ∃ n : ℕ, C <
      (recursiveGauge (G := Matrix.SpecialLinearGroup (Fin 2) ℚ)
      (fun _ => expandingSL) (fun _ => 1) n :
        Matrix (Fin 2) (Fin 2) ℚ) 0 0 := by
  intro C
  obtain ⟨n, hn⟩ := add_one_pow_unbounded_of_pos C (show (0 : ℚ) < 1 by norm_num)
  refine ⟨n, ?_⟩
  rw [recursiveGauge_expanding_entry]
  simpa only [one_add_one_eq_two] using hn

/-- Hostile fixture: even determinant-one Schrödinger factors cannot silently be reversed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variant3d862711258cc6a5272b34fe4343afd91eec0a0d396de448e26ef99b68c6ef65.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf5fec08a2312282fde4a34f92ad440b230e08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
