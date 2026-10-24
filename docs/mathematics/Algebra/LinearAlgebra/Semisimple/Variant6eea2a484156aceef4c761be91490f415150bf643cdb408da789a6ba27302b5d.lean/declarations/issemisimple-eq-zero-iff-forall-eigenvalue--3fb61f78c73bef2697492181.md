# IsSemisimple.eq_zero_iff_forall_eigenvalue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfbd206a219d1e76d1aee49962073b4daa1d8c31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51425ab7-b5cb-3648-290e-fdd5d5fee3f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b3ddbf8-9a24-00fd-20e0-1fde63bcc950",
  "kind": "lemma",
  "lexical_name": "IsSemisimple.eq_zero_iff_forall_eigenvalue",
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
  "slug": "issemisimple-eq-zero-iff-forall-eigenvalue--3fb61f78c73bef2697492181",
  "source": {
    "blob": "dfbd206a219d1e76d1aee49962073b4daa1d8c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb61f78c73bef2697492181c9e7ec5f74d0d7ba28bf2b1e33d35386d3bab8b1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3ddbf8-9a24-00fd-20e0-1fde63bcc950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSemisimple.eq_zero_iff_forall_eigenvalue (hf : f.IsSemisimple) :
    f = 0 ↔ ∀ μ : K, f.HasEigenvalue μ → μ = 0 := by
  constructor
  · rintro rfl μ hμ
    by_contra hμ0
    obtain ⟨x, hx, hx_ne⟩ := (Submodule.ne_bot_iff _).mp hμ
    rw [mem_eigenspace_iff] at hx
    exact hx_ne ((smul_eq_zero.mp hx.symm).resolve_left hμ0)
  · intro h
    suffices f.eigenspace 0 = ⊤ by rwa [eigenspace_zero, LinearMap.ker_eq_top] at this
    rw [← hf.iSup_eigenspace_eq_top]
    refine le_antisymm (le_iSup _ 0) (iSup_le fun μ ↦ ?_)
    rcases eq_or_ne μ 0 with rfl | hμ
    · exact le_refl _
    · have : f.eigenspace μ = ⊥ := not_not.mp (hasEigenvalue_iff.not.mp fun he ↦ hμ (h μ he))
      simp [this]

end AlgClosed

end Module.End
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant6eea2a484156aceef4c761be91490f415150bf643cdb408da789a6ba27302b5d.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfbd206a219d1e76d1aee49962073b4daa1d8c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
