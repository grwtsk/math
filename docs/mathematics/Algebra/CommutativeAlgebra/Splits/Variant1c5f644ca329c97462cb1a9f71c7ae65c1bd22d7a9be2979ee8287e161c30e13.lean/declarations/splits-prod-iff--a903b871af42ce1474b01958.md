# splits_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e64863c5c39ca3d5c37784ea25b8903eddde656",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:789e874e-f501-1d58-e383-bc5d4dd9adee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afec946f-2d47-5e8f-8b83-4cfd45926676",
  "kind": "theorem",
  "lexical_name": "splits_prod_iff",
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
  "slug": "splits-prod-iff--a903b871af42ce1474b01958",
  "source": {
    "blob": "0e64863c5c39ca3d5c37784ea25b8903eddde656",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 271,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a903b871af42ce1474b01958a97e2f52cd6b1e53699f59bb1c1f79fe88613558",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afec946f-2d47-5e8f-8b83-4cfd45926676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_prod_iff {ι : Type u} {s : ι → K[X]} {t : Finset ι} :
    (∀ j ∈ t, s j ≠ 0) → ((∏ x in t, s x).Splits i ↔ ∀ j ∈ t, (s j).Splits i) := by
  refine'
    Finset.induction_on t (fun _ =>
        ⟨fun _ _ h => by simp only [Finset.not_mem_empty] at h, fun _ => splits_one i⟩)
      fun a t hat ih ht => _
  rw [Finset.forall_mem_insert] at ht ⊢
  rw [Finset.prod_insert hat, splits_mul_iff i ht.1 (Finset.prod_ne_zero_iff.2 ht.2), ih ht.2]
#align polynomial.splits_prod_iff Polynomial.splits_prod_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant1c5f644ca329c97462cb1a9f71c7ae65c1bd22d7a9be2979ee8287e161c30e13.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e64863c5c39ca3d5c37784ea25b8903eddde656` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
