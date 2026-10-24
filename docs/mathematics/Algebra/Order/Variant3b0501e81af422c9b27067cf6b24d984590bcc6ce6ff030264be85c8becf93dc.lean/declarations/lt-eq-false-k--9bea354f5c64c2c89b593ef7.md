# lt_eq_false_k

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ded0305daee64a3e5c0a5e417c907ebca71a6d06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fdf9491-7adf-e7f1-5bf6-02c581c123e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3fabb27-04ee-68a5-49fc-09a46572c89c",
  "kind": "theorem",
  "lexical_name": "lt_eq_false_k",
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
  "slug": "lt-eq-false-k--9bea354f5c64c2c89b593ef7",
  "source": {
    "blob": "ded0305daee64a3e5c0a5e417c907ebca71a6d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 316,
    "path": "GRWTSK/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bea354f5c64c2c89b593ef759f5abcfaa82f68b2ecd32c9476868c20ef83d93",
  "verification": {
    "reference": "docs/verification/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fabb27-04ee-68a5-49fc-09a46572c89c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_eq_false_k {α} [LE α] [LT α] [Std.LawfulOrderLT α] [Std.IsPreorder α] [Ring α] [OrderedRing α]
    {a : α} {k : Int} : k.ble' 0 → (a < a + k) = False := by
  simp
  intro h
  replace h := OrderedRing.nonpos_intCast_of_nonpos (R := α) _ h
  have h₁ := Std.le_refl a
  replace h₁ := OrderedAdd.add_le_add h₁ h
  simp [Semiring.add_zero] at h₁
  intro h
  have := Std.lt_of_le_of_lt h₁ h
  have := Preorder.lt_irrefl (a + k)
  contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Order/Variant3b0501e81af422c9b27067cf6b24d984590bcc6ce6ff030264be85c8becf93dc.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ded0305daee64a3e5c0a5e417c907ebca71a6d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
