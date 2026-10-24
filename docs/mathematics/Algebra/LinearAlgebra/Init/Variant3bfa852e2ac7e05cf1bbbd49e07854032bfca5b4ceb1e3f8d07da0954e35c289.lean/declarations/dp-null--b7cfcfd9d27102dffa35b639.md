# dp_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01b73187-0007-55e0-7e98-0e6be93c668d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbee697d-0b95-4339-f20e-ee5a19777b2b",
  "kind": "theorem",
  "lexical_name": "dp_null",
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
  "slug": "dp-null--b7cfcfd9d27102dffa35b639",
  "source": {
    "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7cfcfd9d27102dffa35b63948a022ac705d5cd29a03b3d0f268912c14717c09",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbee697d-0b95-4339-f20e-ee5a19777b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dp_null {n : ℕ} : dp R n (0 : M) = if n = 0 then 1 else 0 := by
  cases Nat.eq_zero_or_pos n with
  | inl hn =>
    rw [ite_eq_left hn, hn, dp_zero]
  | inr hn =>
    rw [ite_eq_right (ne_of_gt hn), ← zero_smul R (0 : M), dp_smul]
    rw [zero_pow (Nat.pos_iff_ne_zero.mp hn), zero_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bf2f741f7fb940393f9648a2583df3098081a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
