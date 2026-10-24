# mem_support_iff_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45946c84f7071539b355c091b0a975518b47c901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a13aec36-8b47-3227-33c4-8bd6cd29d220",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a230a05f-4a68-0d31-bd54-b7aab2bb6b99",
  "kind": "theorem",
  "lexical_name": "mem_support_iff_of_commute",
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
  "slug": "mem-support-iff-of-commute--e83f429aedd8f739bbe8d04a",
  "source": {
    "blob": "45946c84f7071539b355c091b0a975518b47c901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 280,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e83f429aedd8f739bbe8d04a44da31037d144fe1cdcc249652a6275326bd5207",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a230a05f-4a68-0d31-bd54-b7aab2bb6b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_support_iff_of_commute {g c : Perm α} (hgc : Commute g c) (x : α) :
    g x ∈ c.support ↔ x ∈ c.support := by
  simp only [mem_support, not_iff_not, ← mul_apply]
  rw [← hgc, mul_apply, Equiv.apply_eq_iff_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant619f523bc8c02988574075ef103d60a64f2e94e4d9f2be4de9b29ba476e2257d.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45946c84f7071539b355c091b0a975518b47c901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
