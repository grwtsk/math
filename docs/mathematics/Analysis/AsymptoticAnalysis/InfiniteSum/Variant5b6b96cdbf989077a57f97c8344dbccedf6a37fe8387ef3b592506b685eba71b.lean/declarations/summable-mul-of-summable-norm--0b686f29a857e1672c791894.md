# summable_mul_of_summable_norm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8091a9a7a259838fb827f1cc29f82b8dbb9b53d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00d7a63e-19db-93d1-1821-62123c01ea1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:322724d4-0c58-b520-b5d7-6e2a5391ff1e",
  "kind": "theorem",
  "lexical_name": "summable_mul_of_summable_norm'",
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
  "slug": "summable-mul-of-summable-norm--0b686f29a857e1672c791894",
  "source": {
    "blob": "8091a9a7a259838fb827f1cc29f82b8dbb9b53d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 46,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b686f29a857e1672c791894b2ddf5dbfb887366eb3d75ac851c14a9cad4eb40",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322724d4-0c58-b520-b5d7-6e2a5391ff1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_mul_of_summable_norm' {f : ι → R} {g : ι' → R}
    (hf : Summable fun x => ‖f x‖) (h'f : Summable f)
    (hg : Summable fun x => ‖g x‖) (h'g : Summable g) :
    Summable fun x : ι × ι' => f x.1 * g x.2 := by
  classical
  suffices HasSum (fun x : ι × ι' => f x.1 * g x.2) ((∑' i, f i) * (∑' j, g j)) from this.summable
  let s : Finset ι × Finset ι' → Finset (ι × ι') := fun p ↦ p.1 ×ˢ p.2
  apply hasSum_of_subseq_of_summable (hf.mul_norm hg) tendsto_finset_prod_atTop
  rw [← prod_atTop_atTop_eq]
  have := Tendsto.prodMap h'f.hasSum h'g.hasSum
  rw [← nhds_prod_eq] at this
  convert ((continuous_mul (M := R)).continuousAt
      (x := (∑' (i : ι), f i, ∑' (j : ι'), g j))).tendsto.comp this with p
  simp [s, sum_product, ← mul_sum, ← sum_mul]

/-- Product of two infinite sums indexed by arbitrary types.
    See also `tsum_mul_tsum` if `f` and `g` are *not* absolutely summable, and
    `tsum_mul_tsum_of_summable_norm'` when the space is not complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant5b6b96cdbf989077a57f97c8344dbccedf6a37fe8387ef3b592506b685eba71b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8091a9a7a259838fb827f1cc29f82b8dbb9b53d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
