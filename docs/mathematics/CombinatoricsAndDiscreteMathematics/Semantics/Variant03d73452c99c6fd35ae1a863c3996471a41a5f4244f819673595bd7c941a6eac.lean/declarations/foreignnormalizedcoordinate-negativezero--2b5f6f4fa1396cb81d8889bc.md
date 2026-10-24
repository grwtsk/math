# foreignNormalizedCoordinate_negativeZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1a5ad07-b63d-fcaa-2524-e9a7935e8569",
  "kind": "theorem",
  "lexical_name": "foreignNormalizedCoordinate_negativeZero",
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
  "slug": "foreignnormalizedcoordinate-negativezero--2b5f6f4fa1396cb81d8889bc",
  "source": {
    "blob": "467af6b5ac8514af4fa63a820857d41925c50b62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 412,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b5f6f4fa1396cb81d8889bc16d869c872613442758ef60eb84762da919cdc3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1a5ad07-b63d-fcaa-2524-e9a7935e8569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem foreignNormalizedCoordinate_negativeZero (extent : Nat)
    (nonzero : extent ≠ 0) :
    foreignNormalizedCoordinateResult
      ⟨.supported .nearest, .increasing, extent, .negativeZero⟩ =
        .ok negativeZeroRational := by
  simp only [foreignNormalizedCoordinateResult, nonzero, ↓reduceDIte,
    checkForeignRationalExact, foreignRoundingResult, Except.map]
  congr 1
  cases extent with
  | zero => contradiction
  | succ extent =>
      cases extent <;>
        simp [normalizeSignedInteger, negativeZeroInteger, negativeZeroRational]

/-- A rational point at the raster boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467af6b5ac8514af4fa63a820857d41925c50b62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
