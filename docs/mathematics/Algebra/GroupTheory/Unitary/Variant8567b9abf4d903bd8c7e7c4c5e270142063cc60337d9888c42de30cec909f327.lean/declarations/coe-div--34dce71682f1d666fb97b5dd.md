# coe_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6215a6484f4c5b24c3d5502860a3a6169706141",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4f5daf2-0980-9bd7-2ece-df353b247d14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:838cadd1-1169-dc36-8004-1b39a5724019",
  "kind": "theorem",
  "lexical_name": "coe_div",
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
  "slug": "coe-div--34dce71682f1d666fb97b5dd",
  "source": {
    "blob": "d6215a6484f4c5b24c3d5502860a3a6169706141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 171,
    "path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34dce71682f1d666fb97b5dd23aa712fc007ec64bd13a721c7da40d97e38bf49",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838cadd1-1169-dc36-8004-1b39a5724019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_div (U₁ U₂ : unitary R) : ↑(U₁ / U₂) = (U₁ / U₂ : R) := by
  simp only [div_eq_mul_inv, coe_inv, Submonoid.coe_mul]
#align unitary.coe_div unitary.coe_div

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Unitary/Variant8567b9abf4d903bd8c7e7c4c5e270142063cc60337d9888c42de30cec909f327.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6215a6484f4c5b24c3d5502860a3a6169706141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
