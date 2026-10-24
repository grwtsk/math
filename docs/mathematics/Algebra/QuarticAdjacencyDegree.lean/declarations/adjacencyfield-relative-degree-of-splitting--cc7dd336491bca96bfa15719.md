# adjacencyField_relative_degree_of_splitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1957aa9cdc7b2257bda0c228082928e191bad66b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/Algebra/QuarticAdjacencyDegree.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:308c8fc9-98e4-bbcf-0c19-95d464b53d67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:930f5527-97ea-44d9-d346-b727256ecfd6",
  "kind": "theorem",
  "lexical_name": "adjacencyField_relative_degree_of_splitting",
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
  "slug": "adjacencyfield-relative-degree-of-splitting--cc7dd336491bca96bfa15719",
  "source": {
    "blob": "1957aa9cdc7b2257bda0c228082928e191bad66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 42,
    "path": "GRWTSK/Algebra/QuarticAdjacencyDegree.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc7dd336491bca96bfa157197f9b6cd3168345f487e57e9d32c3ce950b1a09cb",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticAdjacencyDegree.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:930f5527-97ea-44d9-d346-b727256ecfd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacencyField_relative_degree_of_splitting
    [FiniteDimensional K L] [IsGalois K L]
    (p : K[X]) [IsSplittingField K L p] (hdegree : p.natDegree = 4) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    Module.finrank (GRWTSK.Algebra.QuarticAdjacencyIntermediateField.adjacencyField p e) L =
      Nat.card (rootImageKleinIntersection p e
        (by intro h; simp [h] at hdegree)
        (enumeration_injective_of_separable p hsep e)) := by
  have hne : p ≠ 0 := by
    intro h
    simp [h] at hdegree
  have he := enumeration_injective_of_separable p hsep e
  exact adjacencyField_relative_degree p e hne he
    (rootsGenerate_of_isSplittingField p e hne)

end
end GRWTSK.Algebra.QuarticAdjacencyDegree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticAdjacencyDegree.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticAdjacencyDegree.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1957aa9cdc7b2257bda0c228082928e191bad66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
