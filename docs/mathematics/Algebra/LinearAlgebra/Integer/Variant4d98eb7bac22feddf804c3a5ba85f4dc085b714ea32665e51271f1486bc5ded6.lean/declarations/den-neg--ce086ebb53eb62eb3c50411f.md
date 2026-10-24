# den_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6d33d90c8010024a3e36d108b1bd4c80e140752",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e787269-b6bb-9f2f-0e8b-22da13609e30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24393237-d794-5dd2-4c53-f96ddbea32d9",
  "kind": "lemma",
  "lexical_name": "den_neg",
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
  "slug": "den-neg--ce086ebb53eb62eb3c50411f",
  "source": {
    "blob": "c6d33d90c8010024a3e36d108b1bd4c80e140752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce086ebb53eb62eb3c50411f63937aed67b70c89fb8896d205f3d10b508bce83",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24393237-d794-5dd2-4c53-f96ddbea32d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma den_neg (A : Matrix m n ℚ) : (-A).den = A.den :=
  eq_of_forall_dvd <| by simp [den_dvd_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Integer/Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d33d90c8010024a3e36d108b1bd4c80e140752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
