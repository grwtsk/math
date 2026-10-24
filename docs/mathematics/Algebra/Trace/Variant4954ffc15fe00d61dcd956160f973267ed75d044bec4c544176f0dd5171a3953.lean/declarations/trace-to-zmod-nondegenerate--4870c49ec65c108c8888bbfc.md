# trace_to_zmod_nondegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7957f4f4c8c30bf7e257fce39327b2bb8ef9e83c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4873440-303d-afe5-7672-490780269a66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edc34541-770c-92c4-3e21-869a359956c4",
  "kind": "theorem",
  "lexical_name": "trace_to_zmod_nondegenerate",
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
  "slug": "trace-to-zmod-nondegenerate--4870c49ec65c108c8888bbfc",
  "source": {
    "blob": "7957f4f4c8c30bf7e257fce39327b2bb8ef9e83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/Algebra/Trace/Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4870c49ec65c108c8888bbfc77c850790e959bf36b5aea480eb80f8adba944f1",
  "verification": {
    "reference": "docs/verification/Algebra/Trace/Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edc34541-770c-92c4-3e21-869a359956c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_to_zmod_nondegenerate (F : Type*) [Field F] [Finite F]
    [Algebra (ZMod (ringChar F)) F] {a : F} (ha : a ≠ 0) :
    ∃ b : F, Algebra.trace (ZMod (ringChar F)) F (a * b) ≠ 0 := by
  haveI : Fact (ringChar F).Prime := ⟨CharP.char_is_prime F _⟩
  have htr := traceForm_nondegenerate (ZMod (ringChar F)) F a
  simp_rw [Algebra.traceForm_apply] at htr
  by_contra! hf
  exact ha (htr hf)

end FiniteField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Trace/Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Trace/Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7957f4f4c8c30bf7e257fce39327b2bb8ef9e83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
