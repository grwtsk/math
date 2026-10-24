# rawToRhetorical_rawEquiv_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b5b6071d69f513b7b58b43c9b22515fda246004",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd3ba75f-ab0a-469f-8778-aace05b03324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:946b38a5-1635-3237-7ca7-ae7d5035c3d3",
  "kind": "theorem",
  "lexical_name": "rawToRhetorical_rawEquiv_norm",
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
  "slug": "rawtorhetorical-rawequiv-norm--44ce26331782c4b07bdb7fe1",
  "source": {
    "blob": "4b5b6071d69f513b7b58b43c9b22515fda246004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ce26331782c4b07bdb7fe1fa291d5a53be37f7f362dd52486865fdee158660",
  "verification": {
    "reference": "docs/verification/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:946b38a5-1635-3237-7ca7-ae7d5035c3d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawToRhetorical_rawEquiv_norm
    (opposition : OppositionStructure kernel)
    (vector : Raw kernel) :
    ‖rawToRhetorical kernel (opposition.rawEquiv vector)‖ =
      ‖rawToRhetorical kernel vector‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [norm_sq_eq_re_inner (𝕜 := ℂ),
    norm_sq_eq_re_inner (𝕜 := ℂ),
    inner_rawToRhetorical, inner_rawToRhetorical,
    opposition.rawEquiv_inner]

/-- The exact role symmetry extends uniquely to a unitary equivalence on the
completed rhetorical Hilbert space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5b6071d69f513b7b58b43c9b22515fda246004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
