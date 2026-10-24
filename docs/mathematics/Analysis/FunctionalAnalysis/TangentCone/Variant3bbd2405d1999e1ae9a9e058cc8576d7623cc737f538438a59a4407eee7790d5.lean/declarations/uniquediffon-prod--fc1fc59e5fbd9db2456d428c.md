# UniqueDiffOn.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39be395f-9580-d84d-6feb-0122550e7d66",
  "kind": "theorem",
  "lexical_name": "UniqueDiffOn.prod",
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
  "slug": "uniquediffon-prod--fc1fc59e5fbd9db2456d428c",
  "source": {
    "blob": "503df4a24932f5b49c10d96bcbdbd54b407f5d47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 356,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc1fc59e5fbd9db2456d428cb7438345a5de30d4ed853ecc1c1c6e67619e99ad",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39be395f-9580-d84d-6feb-0122550e7d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniqueDiffOn.prod {t : Set F} (hs : UniqueDiffOn 𝕜 s) (ht : UniqueDiffOn 𝕜 t) :
    UniqueDiffOn 𝕜 (s ×ˢ t) :=
  fun ⟨x, y⟩ h => UniqueDiffWithinAt.prod (hs x h.1) (ht y h.2)
#align unique_diff_on.prod UniqueDiffOn.prod

/-- The finite product of a family of sets of unique differentiability is a set of unique
differentiability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503df4a24932f5b49c10d96bcbdbd54b407f5d47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
