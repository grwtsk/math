# sq_sum_div_le_sum_sq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:504d00c7-f737-b0ea-1c49-e30b0a819a09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18086d02-de85-decd-ef7e-3ee58ce8b9bd",
  "kind": "theorem",
  "lexical_name": "sq_sum_div_le_sum_sq_div",
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
  "slug": "sq-sum-div-le-sum-sq-div--32d4150070a7bfa8afd0c442",
  "source": {
    "blob": "c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d4150070a7bfa8afd0c442d563f9a7f96d85c9446d330795c38bad34561d24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18086d02-de85-decd-ef7e-3ee58ce8b9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_sum_div_le_sum_sq_div [Semifield R] [LinearOrder R] [IsStrictOrderedRing R]
    [ExistsAddOfLE R] (s : Finset ι)
    (f : ι → R) {g : ι → R} (hg : ∀ i ∈ s, 0 < g i) :
    (∑ i ∈ s, f i) ^ 2 / ∑ i ∈ s, g i ≤ ∑ i ∈ s, f i ^ 2 / g i := by
  have hg' : ∀ i ∈ s, 0 ≤ g i := fun i hi ↦ (hg i hi).le
  have H : ∀ i ∈ s, 0 ≤ f i ^ 2 / g i := fun i hi ↦ div_nonneg (sq_nonneg _) (hg' i hi)
  refine div_le_of_le_mul₀ (sum_nonneg hg') (sum_nonneg H)
    (sum_sq_le_sum_mul_sum_of_sq_le_mul _ H hg' fun i hi ↦ ?_)
  rw [div_mul_cancel₀]
  exact (hg i hi).ne'

end Finset

/-! ### Absolute values -/

section AbsoluteValue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
