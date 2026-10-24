# iterate_verschiebung_iterate_frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5ad4dcc8c3bd5a07a4a3ab796e6e6c8e4f6daaa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c9adbb8-3b50-96c5-f0ad-a050ffe3dd5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9a7e36b-acb0-2f7f-ce7c-30b4929102ba",
  "kind": "theorem",
  "lexical_name": "iterate_verschiebung_iterate_frobenius",
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
  "slug": "iterate-verschiebung-iterate-frobenius--eeb6f4aa8b54eba86d8d45e5",
  "source": {
    "blob": "f5ad4dcc8c3bd5a07a4a3ab796e6e6c8e4f6daaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb6f4aa8b54eba86d8d45e599742c970a13f236862306183ad76954beff0c2d",
  "verification": {
    "reference": "docs/verification/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a7e36b-acb0-2f7f-ce7c-30b4929102ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_verschiebung_iterate_frobenius (x : 𝕎 R) (n : ℕ) :
    verschiebung^[n] (frobenius^[n] x) = x * (p ^ n) := by
  rw [← comp_apply (f := verschiebung^[n]),
      ← Function.Commute.comp_iterate verschiebung_frobenius_comm]
  induction' n with n ih
  · simp
  · rw [iterate_succ_apply', ih, pow_succ, comp_apply, verschiebung_frobenius, mul_assoc]

end CharP

end

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Identities/Varianta8a5b67c4cb7c77c943faa5f03ccd3d305bf62367914432d9fc7b84a40848c78.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ad4dcc8c3bd5a07a4a3ab796e6e6c8e4f6daaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
