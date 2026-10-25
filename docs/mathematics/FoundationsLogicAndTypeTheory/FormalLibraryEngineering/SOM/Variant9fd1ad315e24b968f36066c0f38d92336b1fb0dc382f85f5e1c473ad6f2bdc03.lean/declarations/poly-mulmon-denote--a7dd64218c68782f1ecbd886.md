# Poly.mulMon_denote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "350d3b7f54050be848a4c3c748ac89e180810ab7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dc6cee1-09fe-1764-2624-79f86d0d6b13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7db081ca-f0f3-d958-7da3-f22271947d68",
  "kind": "theorem",
  "lexical_name": "Poly.mulMon_denote",
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
  "slug": "poly-mulmon-denote--a7dd64218c68782f1ecbd886",
  "source": {
    "blob": "350d3b7f54050be848a4c3c748ac89e180810ab7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7dd64218c68782f1ecbd886d48e52bc513685eab4e55b63536cc43f2bcc22d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7db081ca-f0f3-d958-7da3-f22271947d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.mulMon_denote (ctx : Context) (p : Poly) (k : Nat) (m : Mon) : (p.mulMon k m).denote ctx = p.denote ctx * k * m.denote ctx := by
  simp [mulMon, go]; simp!
where
  go (p : Poly) (acc : Poly) : (mulMon.go k m p acc).denote ctx = acc.denote ctx + p.denote ctx * k * m.denote ctx := by
   match p with
   | [] => simp!
   | (k', m') :: p =>
     simp! [go p, Nat.left_distrib, denote_insertSorted, Mon.mul_denote, Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm, Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `350d3b7f54050be848a4c3c748ac89e180810ab7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
