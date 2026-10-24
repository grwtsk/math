# OrthogonalFamily.independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "216050abc9302261c8061d223460ff9667babfe5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:875170e1-9851-1581-af9e-8b73cc557ed7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:153dcb64-00b6-a627-cf17-929fd774f82b",
  "kind": "theorem",
  "lexical_name": "OrthogonalFamily.independent",
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
  "slug": "orthogonalfamily-independent--548efde05962c1773e646d7a",
  "source": {
    "blob": "216050abc9302261c8061d223460ff9667babfe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 264,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:548efde05962c1773e646d7afc85c34d520d7907127e115ae0f401f9f33bb684",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:153dcb64-00b6-a627-cf17-929fd774f82b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.independent {V : ι → Submodule 𝕜 E}
    (hV : OrthogonalFamily 𝕜 (fun i => V i) fun i => (V i).subtypeₗᵢ) :
    iSupIndep V := by
  classical
  apply iSupIndep_of_dfinsupp_lsum_injective
  refine LinearMap.ker_eq_bot.mp ?_
  rw [Submodule.eq_bot_iff]
  intro v hv
  rw [LinearMap.mem_ker] at hv
  ext i
  suffices ⟪(v i : E), v i⟫ = 0 by simpa only [inner_self_eq_zero] using! this
  calc
    ⟪(v i : E), v i⟫ = ⟪(v i : E), DFinsupp.lsum ℕ (fun i => (V i).subtype) v⟫ := by
      simpa only [DFinsupp.sumAddHom_apply, DFinsupp.lsum_apply_apply] using!
        (hV.inner_right_dfinsupp v i (v i)).symm
    _ = 0 := by simp only [hv, inner_zero_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant16cf6106cde12fe8e02fb96f01c12d78ea9c8b855d94a14190a030eb9ae149a1.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216050abc9302261c8061d223460ff9667babfe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
