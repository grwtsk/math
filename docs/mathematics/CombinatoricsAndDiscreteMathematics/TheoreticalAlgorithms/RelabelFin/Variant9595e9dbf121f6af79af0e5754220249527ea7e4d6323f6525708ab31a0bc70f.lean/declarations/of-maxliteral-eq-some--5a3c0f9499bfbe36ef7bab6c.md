# of_maxLiteral_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0406e008a07bc19729ad13ac7fbe25e5f6670f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a2334c2-152a-0314-3929-9c8aef442470",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c2f78a1-7e78-855a-976e-0115985850c1",
  "kind": "theorem",
  "lexical_name": "of_maxLiteral_eq_some",
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
  "slug": "of-maxliteral-eq-some--5a3c0f9499bfbe36ef7bab6c",
  "source": {
    "blob": "d0406e008a07bc19729ad13ac7fbe25e5f6670f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a3c0f9499bfbe36ef7bab6c66d427a544bb5df80d0c6b9efdb5a7649b63cd43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c2f78a1-7e78-855a-976e-0115985850c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_maxLiteral_eq_some (f : CNF Nat) (h : f.maxLiteral = some maxLit) :
    ∀ lit, VarMem lit f → lit ≤ maxLit := by
  intro lit hlit
  dsimp [VarMem] at hlit
  rcases hlit with ⟨clause, ⟨hclause1, hclause2⟩⟩
  rcases Clause.maxLiteral_eq_some_of_mem clause hclause2 with ⟨localMax, hlocal⟩
  have h1 := of_maxLiteral_eq_some' f h clause hclause1 hlocal
  have h2 := Clause.of_maxLiteral_eq_some clause hlocal lit hclause2
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RelabelFin/Variant9595e9dbf121f6af79af0e5754220249527ea7e4d6323f6525708ab31a0bc70f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0406e008a07bc19729ad13ac7fbe25e5f6670f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
