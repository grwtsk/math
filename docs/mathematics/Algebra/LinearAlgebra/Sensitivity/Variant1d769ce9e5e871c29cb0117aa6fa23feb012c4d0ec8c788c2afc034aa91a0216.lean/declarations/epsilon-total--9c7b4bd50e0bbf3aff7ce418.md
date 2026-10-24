# epsilon_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d672ca99eb3264b3c33e46ab82db687700e04f2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:145e5d17-b657-9d5a-352e-646186f24710",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e5b4b5b-1ff0-3325-3ef4-81be0ec1bcef",
  "kind": "theorem",
  "lexical_name": "epsilon_total",
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
  "slug": "epsilon-total--9c7b4bd50e0bbf3aff7ce418",
  "source": {
    "blob": "d672ca99eb3264b3c33e46ab82db687700e04f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 229,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7b4bd50e0bbf3aff7ce41891771a0f8991e88cc86987e3dbc8bd5fdfd166b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e5b4b5b-1ff0-3325-3ef4-81be0ec1bcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epsilon_total {v : V n} (h : ∀ p : Q n, (ε p) v = 0) : v = 0 := by
  induction' n with n ih
  · dsimp [ε] at h; exact h fun _ => true
  · cases' v with v₁ v₂
    ext <;> change _ = (0 : V n) <;> simp only <;> apply ih <;> intro p <;>
      [let q : Q n.succ := fun i => if h : i = 0 then true else p (i.pred h);
      let q : Q n.succ := fun i => if h : i = 0 then false else p (i.pred h)]
    all_goals
      specialize h q
      first
      | rw [ε, show q 0 = true from rfl, Bool.cond_true] at h
      | rw [ε, show q 0 = false from rfl, Bool.cond_false] at h
      rwa [show p = π q by ext; simp [Fin.succ_ne_zero, π]]
#align sensitivity.epsilon_total Sensitivity.epsilon_total

open Module

/-- `e` and `ε` are dual families of vectors. It implies that `e` is indeed a basis
and `ε` computes coefficients of decompositions of vectors on that basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d672ca99eb3264b3c33e46ab82db687700e04f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
