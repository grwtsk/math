# Filter.EventuallyEq.codiscreteWithin_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da599f75bd35b874f08b3fb7b326c2679500eefb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ed2cb4c-9ce2-c171-6fdb-d6b204f6ce0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29f4fc39-a58f-768b-9716-4a86d69b22b7",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.codiscreteWithin_fderiv",
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
  "slug": "filter-eventuallyeq-codiscretewithin-fderiv--6eb1640f46fbf06538a44b64",
  "source": {
    "blob": "da599f75bd35b874f08b3fb7b326c2679500eefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 287,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb1640f46fbf06538a44b6450e943eb311b1c46fe925f48d1b757b4b30097a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29f4fc39-a58f-768b-9716-4a86d69b22b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.codiscreteWithin_fderiv
    (h : f₁ =ᶠ[codiscreteWithin s] f) (hs : IsOpen s) :
    fderiv 𝕜 f₁ =ᶠ[codiscreteWithin s] fderiv 𝕜 f := by
  filter_upwards [h.codiscreteWithin_fderivWithin (𝕜 := 𝕜), self_mem_codiscreteWithin s]
  intro x hx hxs
  simp_all [fderivWithin_of_isOpen]

/-- If two functions agree on a codiscrete subset of `E`, then so do their derivatives within
any subset `s` of `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da599f75bd35b874f08b3fb7b326c2679500eefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
