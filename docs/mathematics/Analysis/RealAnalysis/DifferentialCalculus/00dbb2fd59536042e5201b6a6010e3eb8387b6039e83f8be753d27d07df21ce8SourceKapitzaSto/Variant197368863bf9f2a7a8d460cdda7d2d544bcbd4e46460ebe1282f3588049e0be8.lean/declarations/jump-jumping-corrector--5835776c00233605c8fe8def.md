# jump_jumping_corrector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da13d95f-8fd5-be55-8965-2b90096b712b",
  "kind": "theorem",
  "lexical_name": "jump_jumping_corrector",
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
  "slug": "jump-jumping-corrector--5835776c00233605c8fe8def",
  "source": {
    "blob": "e8e495ae594bfd3985a66069a6fb687c560f7317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5835776c00233605c8fe8def15d204a8b7c4ea7b95e23e599505a748f7b68d85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da13d95f-8fd5-be55-8965-2b90096b712b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jump_jumping_corrector (w z η j t : ℝ) :
    storage w (z + j) (η + t) - storage w z η =
      2 * w * z * j + w * j ^ 2 + η * j + t * z + t * j := by
  simp only [storage]
  ring

/-- The post-event endpoint vanishes only when the post-event discrepancy does. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e495ae594bfd3985a66069a6fb687c560f7317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
