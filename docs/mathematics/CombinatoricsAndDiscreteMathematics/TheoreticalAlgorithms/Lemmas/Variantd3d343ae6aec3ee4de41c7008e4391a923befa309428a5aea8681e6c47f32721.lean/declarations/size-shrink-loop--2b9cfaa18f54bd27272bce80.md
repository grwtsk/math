# size_shrink_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54f6adc9-4ca8-ad36-2ccc-c113459220de",
  "kind": "theorem",
  "lexical_name": "size_shrink_loop",
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
  "slug": "size-shrink-loop--2b9cfaa18f54bd27272bce80",
  "source": {
    "blob": "d394abc85a852644392157668b505932dd3f7780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2902,
    "line": 2896,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9cfaa18f54bd27272bce80e647df33ba319536189a1273cb5ad7fdf58d3296",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f6adc9-4ca8-ad36-2ccc-c113459220de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2896–2902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] private theorem size_shrink_loop {xs : Array α} {n : Nat} : (shrink.loop n xs).size = xs.size - n := by
  induction n generalizing xs with
  | zero => simp [shrink.loop]
  | succ n ih =>
    simp [shrink.loop, ih]
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean#L2896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d394abc85a852644392157668b505932dd3f7780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
