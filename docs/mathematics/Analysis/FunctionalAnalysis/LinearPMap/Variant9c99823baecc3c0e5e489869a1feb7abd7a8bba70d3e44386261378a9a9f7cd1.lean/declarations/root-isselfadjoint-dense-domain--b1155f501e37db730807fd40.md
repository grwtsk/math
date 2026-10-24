# _root_.IsSelfAdjoint.dense_domain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52cf5873635427d22f186a1094fc4206f788091e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2ec65b2-18e3-f83c-9c5e-b76256ade258",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0a2134e-e387-9541-63b1-f4bfae865cb3",
  "kind": "theorem",
  "lexical_name": "_root_.IsSelfAdjoint.dense_domain",
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
  "slug": "root-isselfadjoint-dense-domain--b1155f501e37db730807fd40",
  "source": {
    "blob": "52cf5873635427d22f186a1094fc4206f788091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 266,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1155f501e37db730807fd405a3c2067de21ab65e9e3a3e2ab47d08abba3b981",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0a2134e-e387-9541-63b1-f4bfae865cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsSelfAdjoint.dense_domain (hA : IsSelfAdjoint A) : Dense (A.domain : Set E) := by
  by_contra h
  rw [isSelfAdjoint_def] at hA
  have h' : A.domain = ⊤ := by
    rw [← hA, Submodule.eq_top_iff']
    intro x
    rw [mem_adjoint_domain_iff, ← hA]
    refine (innerSL 𝕜 x).cont.comp ?_
    simp [adjoint, h, continuous_const]
  simp [h'] at h

end LinearPMap

end Star
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cf5873635427d22f186a1094fc4206f788091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
