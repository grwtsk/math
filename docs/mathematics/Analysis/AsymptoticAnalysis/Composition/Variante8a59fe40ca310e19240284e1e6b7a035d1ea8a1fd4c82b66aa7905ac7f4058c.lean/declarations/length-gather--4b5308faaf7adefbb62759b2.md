# length_gather

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4665617df85c93782d95a058754fdcdb8334583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1004,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c28b7031-5104-9b50-f7ef-828dd9234230",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72edf71c-9d95-c08b-8aab-8f5194e7e5db",
  "kind": "theorem",
  "lexical_name": "length_gather",
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
  "slug": "length-gather--4b5308faaf7adefbb62759b2",
  "source": {
    "blob": "a4665617df85c93782d95a058754fdcdb8334583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1015,
    "line": 1004,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b5308faaf7adefbb62759b25b248f593911508f929e5c81edb7fc9af14b9e35",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72edf71c-9d95-c08b-8aab-8f5194e7e5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1004–1015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_gather (a : Composition n) (b : Composition a.length) :
    length (a.gather b) = b.length :=
  show (map List.sum (a.blocks.splitWrtComposition b)).length = b.blocks.length by
    rw [length_map, length_splitWrtComposition]
#align composition.length_gather Composition.length_gather

-- porting note: this needs `Composition.blocksFun` to be refactored in order to remove `nthLe`
set_option linter.deprecated false in
/-- An auxiliary function used in the definition of `sigma_equiv_sigma_pi` below, associating to
two compositions `a` of `n` and `b` of `a.length`, and an index `i` bounded by the length of
`a.gather b`, the subcomposition of `a` made of those blocks belonging to the `i`-th block of
`a.gather b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean#L1004).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4665617df85c93782d95a058754fdcdb8334583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
