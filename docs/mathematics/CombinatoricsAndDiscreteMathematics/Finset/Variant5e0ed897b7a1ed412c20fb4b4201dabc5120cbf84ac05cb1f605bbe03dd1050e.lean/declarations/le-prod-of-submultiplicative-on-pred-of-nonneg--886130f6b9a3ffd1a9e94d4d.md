# le_prod_of_submultiplicative_on_pred_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdfa598c-7c4c-b1ba-795a-11a3f2384f46",
  "kind": "theorem",
  "lexical_name": "le_prod_of_submultiplicative_on_pred_of_nonneg",
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
  "slug": "le-prod-of-submultiplicative-on-pred-of-nonneg--886130f6b9a3ffd1a9e94d4d",
  "source": {
    "blob": "37c0742304ab18b06dae30191ed820f9a0907bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:886130f6b9a3ffd1a9e94d4d8fa0f560a1002c27751d924dfa99b854a6ace969",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdfa598c-7c4c-b1ba-795a-11a3f2384f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_prod_of_submultiplicative_on_pred_of_nonneg {M : Type*} [CommMonoid M] (f : M → R)
    (p : M → Prop) (h_nonneg : ∀ a, 0 ≤ f a) (h_one : f 1 ≤ 1)
    (h_mul : ∀ a b, p a → p b → f (a * b) ≤ f a * f b) (hp_mul : ∀ a b, p a → p b → p (a * b))
    (s : Finset ι) (g : ι → M) (hps : ∀ a, a ∈ s → p (g a)) :
    f (∏ i ∈ s, g i) ≤ ∏ i ∈ s, f (g i) := by
  apply le_trans (Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg f p h_nonneg h_one
    h_mul hp_mul _ ?_) (by simp [Multiset.map_map])
  intro _ ha
  obtain ⟨i, hi, rfl⟩ := Multiset.mem_map.mp ha
  exact hps i hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c0742304ab18b06dae30191ed820f9a0907bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
