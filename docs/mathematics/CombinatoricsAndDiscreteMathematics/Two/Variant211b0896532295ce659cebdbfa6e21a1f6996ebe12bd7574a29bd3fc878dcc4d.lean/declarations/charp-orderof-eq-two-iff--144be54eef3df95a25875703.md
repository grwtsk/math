# CharP.orderOf_eq_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11a12624d0b76b24d224eeab126c39bfddedee73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/211b0896532295ce659cebdbfa6e21a1f6996ebe12bd7574a29bd3fc878dcc4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ea6cd4f-f3bb-cf10-ac34-0dd1e0d134a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7184e5ab-1eae-d48f-e1ba-d9b7c1c98805",
  "kind": "lemma",
  "lexical_name": "CharP.orderOf_eq_two_iff",
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
  "slug": "charp-orderof-eq-two-iff--144be54eef3df95a25875703",
  "source": {
    "blob": "11a12624d0b76b24d224eeab126c39bfddedee73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variant211b0896532295ce659cebdbfa6e21a1f6996ebe12bd7574a29bd3fc878dcc4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:144be54eef3df95a25875703be57ea5408fcde9b84f459f315f158d4e3f1edd4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Two/Variant211b0896532295ce659cebdbfa6e21a1f6996ebe12bd7574a29bd3fc878dcc4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7184e5ab-1eae-d48f-e1ba-d9b7c1c98805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CharP.orderOf_eq_two_iff [Nontrivial R] [NoZeroDivisors R] (p : ℕ)
    (hp : p ≠ 2) [CharP R p] {x : R} : orderOf x = 2 ↔ x = -1 := by
  simp only [orderOf_eq_prime_iff, sq_eq_one_iff, ne_eq, or_and_right, and_not_self, false_or,
    and_iff_left_iff_imp]
  rintro rfl
  exact fun h ↦ hp ((ringChar.eq R p) ▸ (neg_one_eq_one_iff.1 h))

end CharP
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Two/Variant211b0896532295ce659cebdbfa6e21a1f6996ebe12bd7574a29bd3fc878dcc4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variant211b0896532295ce659cebdbfa6e21a1f6996ebe12bd7574a29bd3fc878dcc4d.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a12624d0b76b24d224eeab126c39bfddedee73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
