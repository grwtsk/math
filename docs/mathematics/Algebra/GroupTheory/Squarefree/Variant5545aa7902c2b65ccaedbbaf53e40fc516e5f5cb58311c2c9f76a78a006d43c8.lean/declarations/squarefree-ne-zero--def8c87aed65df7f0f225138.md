# Squarefree.ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dc7f1b2-4239-fb88-3865-d57881319b5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c05ca6fb-ed31-f8fd-f468-fb4c7819d400",
  "kind": "theorem",
  "lexical_name": "Squarefree.ne_zero",
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
  "slug": "squarefree-ne-zero--def8c87aed65df7f0f225138",
  "source": {
    "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def8c87aed65df7f0f22513876a2b670a22f8632fa745d89a1d502b4a841f629",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c05ca6fb-ed31-f8fd-f468-fb4c7819d400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Squarefree.ne_zero [MonoidWithZero R] [Nontrivial R] {m : R} (hm : Squarefree (m : R)) :
    m ≠ 0 := by
  rintro rfl
  exact not_squarefree_zero hm
#align squarefree.ne_zero Squarefree.ne_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf88fd873e1d27988d87e3218063091f23eeec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
