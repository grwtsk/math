# exists_finite_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e33662-cd2c-3e52-5e6d-7d83337e947c",
  "kind": "theorem",
  "lexical_name": "exists_finite_support",
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
  "slug": "exists-finite-support--d28561c09df6c7dcb2b4dbcd",
  "source": {
    "blob": "7b8e179e29b4d3ea7cea9eae39a161f905f2bb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 290,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28561c09df6c7dcb2b4dbcd7840cf12ebb6db6dee73dad5a8d7f2ce59da2364",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e33662-cd2c-3e52-5e6d-7d83337e947c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_support (x : FreeCommRing α) : ∃ s : Set α, Set.Finite s ∧ IsSupported x s :=
  FreeCommRing.induction_on x ⟨∅, Set.finite_empty, isSupported_neg isSupported_one⟩
    (fun p => ⟨{p}, Set.finite_singleton p, isSupported_of.2 <| Set.mem_singleton _⟩)
    (fun _ _ ⟨s, hfs, hxs⟩ ⟨t, hft, hxt⟩ =>
      ⟨s ∪ t, hfs.union hft,
        isSupported_add (isSupported_upwards hxs <| Set.subset_union_left s t)
          (isSupported_upwards hxt <| Set.subset_union_right s t)⟩)
    fun _ _ ⟨s, hfs, hxs⟩ ⟨t, hft, hxt⟩ =>
    ⟨s ∪ t, hfs.union hft,
      isSupported_mul (isSupported_upwards hxs <| Set.subset_union_left s t)
        (isSupported_upwards hxt <| Set.subset_union_right s t)⟩
#align free_comm_ring.exists_finite_support FreeCommRing.exists_finite_support

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8e179e29b4d3ea7cea9eae39a161f905f2bb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
