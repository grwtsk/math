# full_function_determining_sample_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed5763a0a62cbacd2df637e5b7efee9471d5bd04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:907157e7-cee9-50ef-44b0-5117dd72f6f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92d20b4c-3883-49c0-9c18-3e5c48914d27",
  "kind": "theorem",
  "lexical_name": "full_function_determining_sample_eq_univ",
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
  "slug": "full-function-determining-sample-eq-univ--4f4d71c392983a8844db2649",
  "source": {
    "blob": "ed5763a0a62cbacd2df637e5b7efee9471d5bd04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f4d71c392983a8844db264949414d928dd3ff3c3b6a2f9e2849eedf8a1489ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d20b4c-3883-49c0-9c18-3e5c48914d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_function_determining_sample_eq_univ
    (sample : Set X)
    (hdet : DeterminingSample
      (Set.univ : Set (X → k)) sample) :
    sample = Set.univ := by
  apply Set.eq_univ_of_forall
  intro x
  by_contra hx
  let f : X → k := FunctionIdeal.pointMass x 1
  have hEq : f = 0 := by
    apply hdet (by simp) (by simp)
    intro y hy
    have hyx : y ≠ x := by
      intro h
      subst y
      exact hx hy
    simp [f, hyx]
  have hAtX := congrFun hEq x
  simp [f] at hAtX

end Spectral

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralTopology/Variantb3e4f2becce44c7c8e6c7d20945aaf3c2fe41557991e36efad61d18db44657a4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5763a0a62cbacd2df637e5b7efee9471d5bd04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
