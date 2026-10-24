# changeForm_ι_mul_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15afac4a4f6de0a8235c962cb081a1c9357110f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0d00a75-ad0b-0a50-d2b5-5e4ea5771d28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2fb58c6-99da-c7ea-d7b0-1efb4747bef5",
  "kind": "theorem",
  "lexical_name": "changeForm_ι_mul_ι",
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
  "slug": "changeform-mul--3f274aeb46d383ddb154045e",
  "source": {
    "blob": "15afac4a4f6de0a8235c962cb081a1c9357110f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 281,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f274aeb46d383ddb154045e8c2caf281a391e4c2d3602593c5221c8c817eb86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2fb58c6-99da-c7ea-d7b0-1efb4747bef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeForm_ι_mul_ι (m₁ m₂ : M) :
    changeForm h (ι Q m₁ * ι Q m₂) = ι Q' m₁ * ι Q' m₂ - algebraMap _ _ (B m₁ m₂) := by
  rw [changeForm_ι_mul, changeForm_ι, contractLeft_ι]

/-- Theorem 23 of [grinberg_clifford_2016][] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant57f556fe81bd8f83259d54fed09a913df65d66405c2322d82daa84140a4663a8.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15afac4a4f6de0a8235c962cb081a1c9357110f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
