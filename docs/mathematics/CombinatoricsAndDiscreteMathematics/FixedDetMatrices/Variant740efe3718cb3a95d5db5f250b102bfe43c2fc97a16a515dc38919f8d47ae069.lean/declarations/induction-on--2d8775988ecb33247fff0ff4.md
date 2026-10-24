# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae79df5c-276d-6331-0ac3-7d140007ed44",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--2d8775988ecb33247fff0ff4",
  "source": {
    "blob": "4e4c109daecc1be7b9449c2925286a1c235bfd40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 249,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8775988ecb33247fff0ff4af0a11eea6e1a771a1eca5df0b879c0ce98ee547",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae79df5c-276d-6331-0ac3-7d140007ed44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on {C : Δ m → Prop} {A : Δ m} (hm : m ≠ 0)
    (h0 : ∀ A : Δ m, A.1 1 0 = 0 → 0 < A.1 0 0 → 0 ≤ A.1 0 1 → |(A.1 0 1)| < |(A.1 1 1)| → C A)
    (hS : ∀ B, C B → C (S • B)) (hT : ∀ B, C B → C (T • B)) : C A := by
  have h_reduce : C (reduce A) := by
    rcases reduce_mem_reps hm A with ⟨H1, H2, H3, H4⟩
    exact h0 _ H1 H2 H3 H4
  suffices ∀ A : Δ m, C (reduce A) → C A from this _ h_reduce
  apply reduce_rec
  · intro A h
    by_cases h1 : 0 < A.1 0 0
    · simp only [reduce_of_pos h h1, prop_red_T_pow hS hT, imp_self]
    · simp only [reduce_of_not_pos h h1, prop_red_T_pow hS hT, prop_red_S hS, imp_self]
  intro A hc ih hA
  rw [← reduce_reduceStep hc] at hA
  simpa only [reduceStep, prop_red_S hS, prop_red_T_pow hS hT] using ih hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4c109daecc1be7b9449c2925286a1c235bfd40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
