# is_sol_mkSol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2beb4f2e24e0ea1788212c52e6bfe10abab4508",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99b7b5a6-e1b5-b8de-eacd-62275fbf25e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03def237-bb06-5a57-f6a7-462a9ed07d07",
  "kind": "theorem",
  "lexical_name": "is_sol_mkSol",
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
  "slug": "is-sol-mksol--bdab410ad9a3476603f238f5",
  "source": {
    "blob": "a2beb4f2e24e0ea1788212c52e6bfe10abab4508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdab410ad9a3476603f238f5f0c71b63c8c37376914ae070e51adb911f2be4fa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03def237-bb06-5a57-f6a7-462a9ed07d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_sol_mkSol (init : Fin E.order → α) : E.IsSolution (E.mkSol init) := by
  intro n
  rw [mkSol]
  simp
#align linear_recurrence.is_sol_mk_sol LinearRecurrence.is_sol_mkSol

/-- `E.mkSol init`'s first `E.order` terms are `init`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2beb4f2e24e0ea1788212c52e6bfe10abab4508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
