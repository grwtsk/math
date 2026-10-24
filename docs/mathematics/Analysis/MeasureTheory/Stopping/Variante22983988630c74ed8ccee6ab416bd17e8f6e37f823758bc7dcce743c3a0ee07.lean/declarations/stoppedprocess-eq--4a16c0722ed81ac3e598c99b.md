# stoppedProcess_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97b0b96f-2e3e-364f-65dc-01137973cc1a",
  "kind": "theorem",
  "lexical_name": "stoppedProcess_eq'",
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
  "slug": "stoppedprocess-eq--4a16c0722ed81ac3e598c99b",
  "source": {
    "blob": "fd95734aac8ff9650c4beba0d74e2339ae49b40b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 996,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a16c0722ed81ac3e598c99bee4028ab86eb786348dd8fb266a4dd8da00c7b69",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97b0b96f-2e3e-364f-65dc-01137973cc1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedProcess_eq' (n : ℕ) : stoppedProcess u τ n = Set.indicator {a | n + 1 ≤ τ a} (u n) +
    ∑ i ∈ Finset.range (n + 1), Set.indicator {a | τ a = i} (u i) := by
  have : {a | n ≤ τ a}.indicator (u n) =
      {a | n + 1 ≤ τ a}.indicator (u n) + {a | τ a = n}.indicator (u n) := by
    ext x
    rw [add_comm, Pi.add_apply, ← Set.indicator_union_of_notMem_inter]
    · simp_rw [@eq_comm _ _ n, @le_iff_eq_or_lt _ _ n, Nat.succ_le_iff, Set.setOf_or]
    · rintro ⟨h₁, h₂⟩
      rw [Set.mem_setOf] at h₁ h₂
      exact (Nat.succ_le_iff.1 h₂).ne h₁.symm
  rw [stoppedProcess_eq, this, Finset.sum_range_succ_comm, ← add_assoc]

end AddCommMonoid

end Nat

section PiecewiseConst

variable [Preorder ι] {𝒢 : Filtration ι m} {τ η : Ω → ι} {i j : ι} {s : Set Ω}
  [DecidablePred (· ∈ s)]

/-- Given stopping times `τ` and `η` which are bounded below, `Set.piecewise s τ η` is also
a stopping time with respect to the same filtration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variante22983988630c74ed8ccee6ab416bd17e8f6e37f823758bc7dcce743c3a0ee07.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd95734aac8ff9650c4beba0d74e2339ae49b40b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
