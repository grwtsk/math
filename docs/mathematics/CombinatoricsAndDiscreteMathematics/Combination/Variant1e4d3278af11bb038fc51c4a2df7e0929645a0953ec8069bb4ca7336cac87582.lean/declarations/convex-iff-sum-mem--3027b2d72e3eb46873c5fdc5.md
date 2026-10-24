# convex_iff_sum_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0076e291-4915-df9e-ecb0-1559245df8d0",
  "kind": "theorem",
  "lexical_name": "convex_iff_sum_mem",
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
  "slug": "convex-iff-sum-mem--3027b2d72e3eb46873c5fdc5",
  "source": {
    "blob": "abb84d7d7f8c8329734da741d0c555674487128c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3027b2d72e3eb46873c5fdc5250da96912338ed581de7c5b6f5020054e850e8e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0076e291-4915-df9e-ecb0-1559245df8d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convex_iff_sum_mem : Convex R s ↔ ∀ (t : Finset E) (w : E → R),
    (∀ i ∈ t, 0 ≤ w i) → ∑ i ∈ t, w i = 1 → (∀ x ∈ t, x ∈ s) → (∑ x ∈ t, w x • x) ∈ s := by
  classical
  refine ⟨fun hs t w hw₀ hw₁ hts => hs.sum_mem hw₀ hw₁ hts, ?_⟩
  intro h x hx y hy a b ha hb hab
  by_cases h_cases : x = y
  · rw [h_cases, ← add_smul, hab, one_smul]
    exact hy
  · convert! h { x, y } (fun z => if z = y then b else a) _ _ _
    · simp only [sum_pair h_cases, ite_eq_right h_cases, ite_eq_left trivial]
    · grind
    · simp only [sum_pair h_cases, ite_eq_right h_cases, ite_eq_left trivial, hab]
    · intro i hi
      simp only [Finset.mem_singleton, Finset.mem_insert] at hi
      cases hi <;> subst i <;> assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant1e4d3278af11bb038fc51c4a2df7e0929645a0953ec8069bb4ca7336cac87582.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb84d7d7f8c8329734da741d0c555674487128c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
