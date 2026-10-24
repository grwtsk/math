# kstar_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0efd534146d77613f0917768f3b8f9c0987c646",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06704e97-09cd-f75f-464d-3c39dfd85130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7de2b41c-6694-e32c-c9bb-9be0beb4862f",
  "kind": "theorem",
  "lexical_name": "kstar_eq_self",
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
  "slug": "kstar-eq-self--6adc7c7ea10e0817aefb2dd8",
  "source": {
    "blob": "a0efd534146d77613f0917768f3b8f9c0987c646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 221,
    "path": "GRWTSK/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6adc7c7ea10e0817aefb2dd871b1b444fbe6652f6643ed791ac6a0ed9b3be99b",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de2b41c-6694-e32c-c9bb-9be0beb4862f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kstar_eq_self : a∗ = a ↔ a * a = a ∧ 1 ≤ a :=
  ⟨fun h ↦ ⟨by rw [← h, kstar_mul_kstar], one_le_kstar.trans_eq h⟩,
    fun h ↦ (kstar_le_of_mul_le_left h.2 h.1.le).antisymm le_kstar⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0efd534146d77613f0917768f3b8f9c0987c646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
