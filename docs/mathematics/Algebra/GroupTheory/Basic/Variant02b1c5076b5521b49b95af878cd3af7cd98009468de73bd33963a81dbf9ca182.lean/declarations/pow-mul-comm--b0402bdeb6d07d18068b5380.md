# pow_mul_comm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f25d54c524947da657e3db5489d0004289e1d2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ab1bc80-77bb-4db6-b1cc-83aff190c57a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdb676f3-2518-4b19-9ee5-890d4abeedbd",
  "kind": "theorem",
  "lexical_name": "pow_mul_comm'",
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
  "slug": "pow-mul-comm--b0402bdeb6d07d18068b5380",
  "source": {
    "blob": "2f25d54c524947da657e3db5489d0004289e1d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 148,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0402bdeb6d07d18068b538056fc098bc5087a1664a576070988ba0401bdd697",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb676f3-2518-4b19-9ee5-890d4abeedbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_mul_comm' (a : M) (n : ℕ) : a ^ n * a = a * a ^ n :=
  Commute.pow_self a n
#align pow_mul_comm' pow_mul_comm'
#align nsmul_add_comm' nsmul_add_comm'

@[to_additive boole_nsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f25d54c524947da657e3db5489d0004289e1d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
