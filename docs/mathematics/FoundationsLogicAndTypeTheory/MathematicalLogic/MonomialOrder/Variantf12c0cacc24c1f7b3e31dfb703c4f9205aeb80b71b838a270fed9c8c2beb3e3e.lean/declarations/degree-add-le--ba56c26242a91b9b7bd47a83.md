# degree_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64590f34d71502304351212c343ee05ad8727122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc1b4b9f-2d06-6222-c919-f4ddad9ab436",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1d5246c-5efa-cee1-746a-6f9f6e0535a7",
  "kind": "theorem",
  "lexical_name": "degree_add_le",
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
  "slug": "degree-add-le--ba56c26242a91b9b7bd47a83",
  "source": {
    "blob": "64590f34d71502304351212c343ee05ad8727122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba56c26242a91b9b7bd47a83308a27fd617f3d478dd23fbf96a7022d13b5ac9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1d5246c-5efa-cee1-746a-6f9f6e0535a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_add_le {f g : MvPolynomial σ R} :
    m.toSyn (m.degree (f + g)) ≤ m.toSyn (m.degree f) ⊔ m.toSyn (m.degree g) := by
  conv_rhs => rw [← m.toSyn.apply_symm_apply (_ ⊔ _)]
  rw [degree_le_iff]
  simp only [AddEquiv.apply_symm_apply, le_sup_iff]
  intro b hb
  by_cases hf : b ∈ f.support
  · left
    exact m.le_degree hf
  · right
    apply m.le_degree
    simp only [notMem_support_iff] at hf
    simpa only [mem_support_iff, coeff_add, hf, zero_add] using hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantf12c0cacc24c1f7b3e31dfb703c4f9205aeb80b71b838a270fed9c8c2beb3e3e.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64590f34d71502304351212c343ee05ad8727122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
