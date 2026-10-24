# isDomain_iff_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20a0ad5682f627918b51e72b4c698c9ed9e49cde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb25b16f-551b-2a92-038b-1ddb55205503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bb52f24-910e-ce28-74f3-62b5efacb1c8",
  "kind": "theorem",
  "lexical_name": "isDomain_iff_prime",
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
  "slug": "isdomain-iff-prime--8c8dcc3c28a2dc083f762eba",
  "source": {
    "blob": "20a0ad5682f627918b51e72b4c698c9ed9e49cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c8dcc3c28a2dc083f762eba157e3556b86fd65d8fb1cb3fc5e81cc9a8ff7187",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bb52f24-910e-ce28-74f3-62b5efacb1c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDomain_iff_prime : IsDomain (R ⧸ I) ↔ I.IsPrime := by
  refine ⟨fun H => ⟨zero_ne_one_iff.1 ?_, fun {x y} h => ?_⟩, fun h => inferInstance⟩
  · have : Nontrivial (R ⧸ I) := ⟨H.2.1⟩
    exact zero_ne_one
  · simp only [← eq_zero_iff_mem, (mk I).map_mul] at h ⊢
    have := @IsDomain.to_noZeroDivisors (R ⧸ I) _ H
    exact eq_zero_or_eq_zero_of_mul_eq_zero h

set_option backward.isDefEq.respectTransparency false in
variable {I} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20a0ad5682f627918b51e72b4c698c9ed9e49cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
