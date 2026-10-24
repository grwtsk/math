# noncommProd_mul_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10bd97808d8f974cf5dea5f9b4db4007d717ba3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d65250e-f088-7334-18df-6a16c746a8fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f98ef04-7858-e50a-3103-ef8da8ed916e",
  "kind": "theorem",
  "lexical_name": "noncommProd_mul_distrib",
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
  "slug": "noncommprod-mul-distrib--bc0399d98d72a8c8272d4af8",
  "source": {
    "blob": "10bd97808d8f974cf5dea5f9b4db4007d717ba3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 391,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc0399d98d72a8c8272d4af82721e69dc7212525199b25fad8a37cea2d8e235e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f98ef04-7858-e50a-3103-ef8da8ed916e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_mul_distrib {s : Finset α} (f : α → β) (g : α → β) (comm_ff comm_gg comm_gf) :
    noncommProd s (f * g) (noncommProd_mul_distrib_aux comm_ff comm_gg comm_gf) =
      noncommProd s f comm_ff * noncommProd s g comm_gg := by
  classical
    induction' s using Finset.induction_on with x s hnmem ih
    · simp
    simp only [Finset.noncommProd_insert_of_not_mem _ _ _ _ hnmem]
    specialize
      ih (comm_ff.mono fun _ => mem_insert_of_mem) (comm_gg.mono fun _ => mem_insert_of_mem)
        (comm_gf.mono fun _ => mem_insert_of_mem)
    rw [ih, Pi.mul_apply]
    simp only [mul_assoc]
    congr 1
    simp only [← mul_assoc]
    congr 1
    refine' noncommProd_commute _ _ _ _ fun y hy => _
    exact comm_gf (mem_insert_self x s) (mem_insert_of_mem hy) (ne_of_mem_of_not_mem hy hnmem).symm
#align finset.noncomm_prod_mul_distrib Finset.noncommProd_mul_distrib
#align finset.noncomm_sum_add_distrib Finset.noncommSum_add_distrib

section FinitePi

variable {M : ι → Type*} [∀ i, Monoid (M i)]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10bd97808d8f974cf5dea5f9b4db4007d717ba3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
