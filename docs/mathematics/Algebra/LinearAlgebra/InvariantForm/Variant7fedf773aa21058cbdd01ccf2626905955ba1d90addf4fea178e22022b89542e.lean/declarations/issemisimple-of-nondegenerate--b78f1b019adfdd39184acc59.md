# isSemisimple_of_nondegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6bbb9cadb1f96e04f40bdb34266d5af1209c741",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e51e705e-fc9b-131b-ec60-c4667228bf87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2babf35-2dd7-a331-9190-d69144d08544",
  "kind": "theorem",
  "lexical_name": "isSemisimple_of_nondegenerate",
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
  "slug": "issemisimple-of-nondegenerate--b78f1b019adfdd39184acc59",
  "source": {
    "blob": "a6bbb9cadb1f96e04f40bdb34266d5af1209c741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78f1b019adfdd39184acc59942b339e7c9def2ec63c486b2dc0293c575682d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2babf35-2dd7-a331-9190-d69144d08544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSemisimple_of_nondegenerate : IsSemisimple K L := by
  refine ⟨?_, ?_, hL⟩
  · simpa using atomistic Φ hΦ_nondeg hΦ_inv hΦ_refl hL ⊤
  intro I hI
  apply (orthogonal_disjoint Φ hΦ_nondeg hΦ_inv hL I hI).mono_right
  apply sSup_le
  simp only [Set.mem_sdiff, Set.mem_ofPred_eq, Set.mem_singleton_iff, and_imp]
  intro J hJ hJI
  rw [← lie_eq_self_of_isAtom_of_nonabelian J hJ (hL J hJ), lieIdeal_oper_eq_span, lieSpan_le]
  rintro _ ⟨x, y, rfl⟩
  simp only [orthogonal_carrier, Set.mem_ofPred_eq]
  intro z hz
  rw [← neg_eq_zero, ← hΦ_inv]
  suffices ⁅(x : L), z⁆ = 0 by simp only [this, map_zero, LinearMap.zero_apply]
  rw [← LieSubmodule.mem_bot (R := K) (L := L), ← (hJ.disjoint_of_ne hI hJI).eq_bot]
  apply lie_le_inf
  exact lie_mem_lie x.2 hz

end field

end InvariantForm

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bbb9cadb1f96e04f40bdb34266d5af1209c741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
