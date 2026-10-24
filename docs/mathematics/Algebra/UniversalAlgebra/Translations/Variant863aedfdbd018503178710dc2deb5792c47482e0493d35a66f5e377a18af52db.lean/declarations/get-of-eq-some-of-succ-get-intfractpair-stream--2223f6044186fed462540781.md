# get?_of_eq_some_of_succ_get?_intFractPair_stream

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "703757d1178e4389d1edadfee127ec45e733bf36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c94c688e-10b1-9936-1a11-69a8b585c25e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a457a84d-de03-f724-ded5-1d239dfabfee",
  "kind": "theorem",
  "lexical_name": "get?_of_eq_some_of_succ_get?_intFractPair_stream",
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
  "slug": "get-of-eq-some-of-succ-get-intfractpair-stream--2223f6044186fed462540781",
  "source": {
    "blob": "703757d1178e4389d1edadfee127ec45e733bf36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2223f6044186fed46254078190afb2f05d24d97a9e2f2daf960a4bd83fe9f4f0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a457a84d-de03-f724-ded5-1d239dfabfee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get?_of_eq_some_of_succ_get?_intFractPair_stream {ifp_succ_n : IntFractPair K}
    (stream_succ_nth_eq : IntFractPair.stream v (n + 1) = some ifp_succ_n) :
    (of v).s.get? n = some ⟨1, ifp_succ_n.b⟩ := by
  unfold of IntFractPair.seq1
  simp [Stream'.Seq.map_tail, Stream'.Seq.get?_tail, Stream'.Seq.map_get?, stream_succ_nth_eq]

/-- Shows how the entries of the sequence of the computed continued fraction can be obtained by the
fractional parts of the stream of integer and fractional parts.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `703757d1178e4389d1edadfee127ec45e733bf36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
