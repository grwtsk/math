# enumerate_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dda7a520-3b0a-cca8-8fa8-8da6cd2c932a",
  "kind": "theorem",
  "lexical_name": "enumerate_inj",
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
  "slug": "enumerate-inj--0a1a2dc07d42b2d657d8276b",
  "source": {
    "blob": "5fddfad80f35073f809ff24c1ec1b2e7fcd93a2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a1a2dc07d42b2d657d8276b5819df9cff4dd8d1016c89e1020f82109740b189",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dda7a520-3b0a-cca8-8fa8-8da6cd2c932a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enumerate_inj {n₁ n₂ : ℕ} {a : α} {s : Set α} (h_sel : ∀ s a, sel s = some a → a ∈ s)
    (h₁ : enumerate sel s n₁ = some a) (h₂ : enumerate sel s n₂ = some a) : n₁ = n₂ := by
  /- porting note : The `rcase, on_goal, all_goals` has been used instead of
     the not-yet-ported `wlog` -/
  rcases le_total n₁ n₂ with (hn|hn)
  on_goal 2 => swap_var n₁ ↔ n₂, h₁ ↔ h₂
  all_goals
    rcases Nat.le.dest hn with ⟨m, rfl⟩
    clear hn
    induction n₁ generalizing s
    case zero =>
      cases m
      case zero => rfl
      case succ m =>
        have h' : enumerate sel (s \ {a}) m = some a := by
          simp_all only [enumerate, Nat.zero_eq, Nat.add_eq, zero_add]; exact h₂
        have : a ∈ s \ {a} := enumerate_mem sel h_sel h'
        simp_all [Set.mem_diff_singleton]
    case succ k ih =>
      cases h : sel s
      /- porting note : The original covered both goals with just `simp_all <;> tauto` -/
      case none =>
        simp_all only [add_comm, self_eq_add_left, Nat.add_succ, enumerate_eq_none_of_sel _ h]
      case some _ =>
        simp_all only [add_comm, self_eq_add_left, enumerate, Option.some.injEq,
                       Nat.add_succ, enumerate._eq_2, Nat.succ.injEq]
        exact ih h₁ h₂
#align set.enumerate_inj Set.enumerate_inj

end Enumerate

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fddfad80f35073f809ff24c1ec1b2e7fcd93a2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
