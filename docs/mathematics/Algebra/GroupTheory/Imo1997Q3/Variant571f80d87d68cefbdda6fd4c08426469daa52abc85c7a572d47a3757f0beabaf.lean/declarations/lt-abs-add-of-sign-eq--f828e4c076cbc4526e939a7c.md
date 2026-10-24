# lt_abs_add_of_sign_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "365d4a51ed46830bc773f1a8c89e9f143e4f6f53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29928a81-a793-74cb-f277-178f5da28256",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77a3c925-4b36-6e39-1a58-84182af6e667",
  "kind": "lemma",
  "lexical_name": "lt_abs_add_of_sign_eq",
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
  "slug": "lt-abs-add-of-sign-eq--f828e4c076cbc4526e939a7c",
  "source": {
    "blob": "365d4a51ed46830bc773f1a8c89e9f143e4f6f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f828e4c076cbc4526e939a7ca91a3e655934401aca331d3f02c870b3cee08871",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77a3c925-4b36-6e39-1a58-84182af6e667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lt_abs_add_of_sign_eq {a b c : ℝ} (ha : c / 2 < |a|) (hb : c / 2 < |b|) (hc : 0 < c)
    (hs : sign a = sign b) : c < |a + b| := by
  obtain ha' | rfl | ha' := lt_trichotomy 0 a <;> obtain hb' | rfl | hb' := lt_trichotomy 0 b <;>
  simp_all <;> grind

/-- For fixed nonempty `x`, assuming the opposite of what is to be proven,
the signs of `S x p` are all the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `365d4a51ed46830bc773f1a8c89e9f143e4f6f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
