# smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85277376a28a5c2265aad6e21472b1fec73185a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a788e19-40f3-3b82-54e0-beebc6707235",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c84f78c-9b02-9ba8-c89c-8ac233cac6c3",
  "kind": "theorem",
  "lexical_name": "smul",
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
  "slug": "smul--109150dfbfbbeef2af4f8717",
  "source": {
    "blob": "d85277376a28a5c2265aad6e21472b1fec73185a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109150dfbfbbeef2af4f87174b10888a1b9f20dc49012af7ec8e3bdce96b2ee6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c84f78c-9b02-9ba8-c89c-8ac233cac6c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem smul {α : Type*} [CommSemiring α] [PartialOrder α] [StarRing α]
    [StarOrderedRing α] [Algebra α R] [StarModule α R] [PosSMulStrictMono α R]
    {x : Matrix n n R} (hx : x.PosDef) {a : α} (ha : 0 < a) : (a • x).PosDef := by
  refine ⟨IsSelfAdjoint.smul (IsSelfAdjoint.of_nonneg ha.le) hx.1, fun y hy => ?_⟩
  simpa [← Finsupp.smul_sum] using smul_pos ha (hx.2 hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85277376a28a5c2265aad6e21472b1fec73185a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
