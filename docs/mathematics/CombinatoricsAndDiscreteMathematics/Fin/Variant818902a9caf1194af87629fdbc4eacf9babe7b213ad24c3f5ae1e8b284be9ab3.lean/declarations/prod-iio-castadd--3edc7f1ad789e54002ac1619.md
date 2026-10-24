# prod_Iio_castAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efadeb55-95c6-706b-f970-4490b7db7d1a",
  "kind": "theorem",
  "lexical_name": "prod_Iio_castAdd",
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
  "slug": "prod-iio-castadd--3edc7f1ad789e54002ac1619",
  "source": {
    "blob": "0a9c0e60be5181693fbcff7d3f560472be6a4ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant818902a9caf1194af87629fdbc4eacf9babe7b213ad24c3f5ae1e8b284be9ab3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3edc7f1ad789e54002ac1619d892d1d6cd7824fd386704e9df66fc6a9ffa06c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant818902a9caf1194af87629fdbc4eacf9babe7b213ad24c3f5ae1e8b284be9ab3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efadeb55-95c6-706b-f970-4490b7db7d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_Iio_castAdd (m : ℕ) (f : Fin (n + m) → M) (a : Fin n) :
    ∏ i < a.castAdd m, f i = ∏ i < a, f (i.castAdd m) := by
  simp [← map_castAddEmb_Iio]

end castAdd

/-!
### Products over intervals: `Fin.castSucc`
-/

section castSucc

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant818902a9caf1194af87629fdbc4eacf9babe7b213ad24c3f5ae1e8b284be9ab3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant818902a9caf1194af87629fdbc4eacf9babe7b213ad24c3f5ae1e8b284be9ab3.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9c0e60be5181693fbcff7d3f560472be6a4ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
