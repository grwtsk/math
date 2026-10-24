# formPerm_pow_length_eq_one_of_nodup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 455,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d56dc6b1-2e5f-b813-3d8c-8f5003cf889a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f43ad77f-672c-42dc-ca48-b0ec2823b27e",
  "kind": "theorem",
  "lexical_name": "formPerm_pow_length_eq_one_of_nodup",
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
  "slug": "formperm-pow-length-eq-one-of-nodup--49f9ec34af0bcd5dabca3a76",
  "source": {
    "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 455,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f9ec34af0bcd5dabca3a767cf613eb9b6828cfd7452dfa9bf74ca484bf4fc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f43ad77f-672c-42dc-ca48-b0ec2823b27e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_pow_length_eq_one_of_nodup (hl : Nodup l) : formPerm l ^ length l = 1 := by
  ext x
  by_cases hx : x ∈ l
  · obtain ⟨k, hk, rfl⟩ := nthLe_of_mem hx
    simp [formPerm_pow_apply_nthLe _ hl, Nat.mod_eq_of_lt hk]
  · have : x ∉ { x | (l.formPerm ^ l.length) x ≠ x } := by
      intro H
      refine' hx _
      replace H := set_support_zpow_subset l.formPerm l.length H
      simpa using support_formPerm_le' _ H
    simpa using this
#align list.form_perm_pow_length_eq_one_of_nodup List.formPerm_pow_length_eq_one_of_nodup

end FormPerm

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d52f2ec62e73f9fd9ec902f4c062f96249fd61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
