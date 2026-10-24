# lift_apply_dp

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
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:815f6fe6-71a3-c9fd-7e1b-c371c42fb332",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb21d780-43ef-fea1-c688-1d2b11f9c6a7",
  "kind": "theorem",
  "lexical_name": "lift_apply_dp",
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
  "slug": "lift-apply-dp--d94909fde82715bacfe53067",
  "source": {
    "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 365,
    "path": "GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d94909fde82715bacfe53067b4f6c79429d609a9683fb5fb92c1130b571f8c1c",
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

Occurrence: `result:fb21d780-43ef-fea1-c688-1d2b11f9c6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_apply_dp (n : ℕ) (m : M) :
    lift hI g hg (dp R n m) = hI.dpow n (g m) := by rw [lift, lift'_apply_dp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bf2f741f7fb940393f9648a2583df3098081a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
