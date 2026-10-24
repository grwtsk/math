# IsLocalization.linearIndepOn_finsetIntegerMultiple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:421d1b8e-e026-f2fa-c97c-c56e9114c2e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e25d19c3-4860-aac6-dcd0-6946d5b46c44",
  "kind": "theorem",
  "lexical_name": "IsLocalization.linearIndepOn_finsetIntegerMultiple",
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
  "slug": "islocalization-linearindepon-finsetintegermultiple--d51959b293c430c7fb6b0ac7",
  "source": {
    "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 81,
    "path": "GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51959b293c430c7fb6b0ac7fc7537c64a30aade18269e1589dbf6de39035919",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25d19c3-4860-aac6-dcd0-6946d5b46c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.linearIndepOn_finsetIntegerMultiple {A : Type*} [CommRing A] [Algebra S A]
    [Algebra R A] [IsScalarTower R S A] (M : Submonoid S) [IsLocalization M A] [FaithfulSMul S A]
    {s : Finset A} (hs : LinearIndepOn R id (s : Set A)) [DecidableEq S] :
    LinearIndepOn R id (finsetIntegerMultiple M s : Set S) := by
  classical
  rw [← LinearIndepOn.id_image_algebraMap_iff (A := A),
    finsetIntegerMultiple_image, ← s.coe_smul_finset]
  rw [linearIndepOn_finset_iff] at hs ⊢
  intro f h
  rw [s.smul_finset_def, s.forall_mem_image]
  apply hs
  have inj := (IsLocalization.smul_bijective A (commonDenomOfFinset M s)).injective
  rw [← inj.eq_iff, smul_zero, s.smul_sum, ← h, s.smul_finset_def, s.sum_image inj.injOn]
  exact s.sum_congr rfl fun x hx ↦ smul_comm ..

section

variable (R N) [IsFractionRing R S]

/-- Given `IsScalarTower R S N`, if `S` is the fraction ring of `R`, then the rank `rank S N`
of the right part of the tower equals the rank `rank R N` of the whole tower.

See `IsFractionRing.finrank_right_eq` for the finrank version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebaa2ed413b2eb42e85f1323dda3a0fb2711304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
