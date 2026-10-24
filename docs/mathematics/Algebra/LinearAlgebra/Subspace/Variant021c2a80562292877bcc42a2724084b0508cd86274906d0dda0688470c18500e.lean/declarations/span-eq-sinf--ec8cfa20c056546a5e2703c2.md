# span_eq_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bc39353547ba408dae113574771ffa10674b17a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae029016-496d-c746-af6e-48563ee53f07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c3fad3f-5131-f9d7-3317-36e7c8da88dd",
  "kind": "theorem",
  "lexical_name": "span_eq_sInf",
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
  "slug": "span-eq-sinf--ec8cfa20c056546a5e2703c2",
  "source": {
    "blob": "3bc39353547ba408dae113574771ffa10674b17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec8cfa20c056546a5e2703c236d046e5df3cc8862aa3f2227aae39cee981a83b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c3fad3f-5131-f9d7-3317-36e7c8da88dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_eq_sInf {S : Set (ℙ K V)} : span S = sInf { W : Subspace K V| S ⊆ W } := by
  ext x
  simp_rw [mem_carrier_iff, mem_span x]
  refine ⟨fun hx => ?_, fun hx W hW => ?_⟩
  · rintro W ⟨T, hT, rfl⟩
    exact hx T hT
  · exact (@sInf_le _ _ { W : Subspace K V | S ⊆ ↑W } W hW) hx

/-- If a set of points in projective space is contained in a subspace, and that subspace is
contained in the span of the set of points, then the span of the set of points is equal to
the subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc39353547ba408dae113574771ffa10674b17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
