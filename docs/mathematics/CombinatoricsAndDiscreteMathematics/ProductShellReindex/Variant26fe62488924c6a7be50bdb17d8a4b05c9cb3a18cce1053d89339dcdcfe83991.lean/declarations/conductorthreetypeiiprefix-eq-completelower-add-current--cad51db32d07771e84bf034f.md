# conductorThreeTypeIIPrefix_eq_completeLower_add_current

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe38c9a5-c7a6-107f-1ad0-0e4ecdad5357",
  "kind": "theorem",
  "lexical_name": "conductorThreeTypeIIPrefix_eq_completeLower_add_current",
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
  "slug": "conductorthreetypeiiprefix-eq-completelower-add-current--cad51db32d07771e84bf034f",
  "source": {
    "blob": "d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 508,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cad51db32d07771e84bf034f553a7bf4778b15471f70a21428a59b723ee8ccd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe38c9a5-c7a6-107f-1ad0-0e4ecdad5357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeTypeIIPrefix_eq_completeLower_add_current
    {N q x : ℕ} (hxScale : x ≤ 2 * N)
    (hxShell : x ∈ typeIIProductShell N q) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -((∑ pair ∈ completeLowerTypeIIShellPairs N q,
            conductorThreeTypeIIPairTerm pair) +
        ∑ pair ∈ effectiveTypeIIShellPrefixPairs N q x,
          conductorThreeTypeIIPairTerm pair) := by
  rw [conductorThreeTypeII_eq_sum_dyadicBlocks hxScale,
    sum_typeIIBlockPairing_eq_global hxScale,
    globalTypeIICutoffPairing_eq_sum_effectivePairs,
    sum_effectiveTypeIIPrefixPairs_eq_lower_add_current hxShell]

/-- Fully expanded exact shell/block reindexing of the actual conductor-three
Vaughan Type II prefix.  Complete shells use full block fibers; the current
shell uses the entered prefix fiber of each block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
