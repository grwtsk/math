# linearIndependent_iff'ₛ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:632302f7-a9e0-d578-2587-232a988ca118",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ee4f58e-0eeb-745f-1122-2583670e1e0e",
  "kind": "theorem",
  "lexical_name": "linearIndependent_iff'ₛ",
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
  "slug": "linearindependent-iff--e179f9d0300d5dafc53b8958",
  "source": {
    "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e179f9d0300d5dafc53b89587ba128e4d2e3be98200eff17eaca99a75a0e4ced",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ee4f58e-0eeb-745f-1122-2583670e1e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_iff'ₛ :
    LinearIndependent R v ↔
      ∀ s : Finset ι, ∀ f g : ι → R, ∑ i ∈ s, f i • v i = ∑ i ∈ s, g i • v i → ∀ i ∈ s, f i = g i :=
  linearIndependent_iffₛ.trans
    ⟨fun hv s f g eq i his ↦ by
      have h :=
        hv (∑ i ∈ s, Finsupp.single i (f i)) (∑ i ∈ s, Finsupp.single i (g i)) <| by
          simpa only [map_sum, Finsupp.linearCombination_single] using eq
      have (f : ι → R) : f i = (∑ j ∈ s, Finsupp.single j (f j)) i :=
        calc
          f i = (Finsupp.lapply i : (ι →₀ R) →ₗ[R] R) (Finsupp.single i (f i)) := by
            { rw [Finsupp.lapply_apply, Finsupp.single_eq_same] }
          _ = ∑ j ∈ s, (Finsupp.lapply i : (ι →₀ R) →ₗ[R] R) (Finsupp.single j (f j)) :=
            Eq.symm <|
              Finset.sum_eq_single i
                (fun j _hjs hji => by rw [Finsupp.lapply_apply, Finsupp.single_eq_of_ne hji])
                fun hnis => hnis.elim his
          _ = (∑ j ∈ s, Finsupp.single j (f j)) i := (map_sum ..).symm
      rw [this f, this g, h],
      fun hv f g hl ↦
      Finsupp.ext fun _ ↦ by
        classical
        refine _root_.by_contradiction fun hni ↦ hni <| hv (f.support ∪ g.support) f g ?_ _ ?_
        · rwa [← sum_subset subset_union_left, ← sum_subset subset_union_right] <;>
            rintro i - hi <;> rw [Finsupp.notMem_support_iff.mp hi, zero_smul]
        · contrapose! hni
          simp_rw [notMem_union, Finsupp.notMem_support_iff] at hni
          rw [hni.1, hni.2]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c0f70672df92efe72305f67e696fb08b3d81a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
