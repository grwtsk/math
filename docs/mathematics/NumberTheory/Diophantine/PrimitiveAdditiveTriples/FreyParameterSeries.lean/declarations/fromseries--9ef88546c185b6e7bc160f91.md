# fromSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cab587b9ba6aaf3d38ae660949eb6aa7e2021957854c9827d52a910e908cb6f",
  "kind": "def",
  "lexical_name": "fromSeries",
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
  "slug": "fromseries--9ef88546c185b6e7bc160f91",
  "source": {
    "blob": "9a88278d8aef331ffdf6ceee7e4d40a4208212fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ef88546c185b6e7bc160f91f885ac097c9d36aebbe60d0ac975a09cab4e5b4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cab587b9ba6aaf3d38ae660949eb6aa7e2021957854c9827d52a910e908cb6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromSeries : PowerSeries R →ₐ[R] Limit R where
  toFun f := ⟨fun N => seriesTrunc N f, fun M N hMN => seriesTrunc_compatible M N hMN f⟩
  map_one' := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).map_one
  map_mul' f g := by apply Subtype.ext; funext N; exact seriesTrunc_mul N f g
  map_zero' := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).map_zero
  map_add' f g := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).map_add f g
  commutes' c := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).commutes c

/-- Recover coefficient n from level n. Compatibility makes this independent
of every larger level. No numerical sampling or convergence is involved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a88278d8aef331ffdf6ceee7e4d40a4208212fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
