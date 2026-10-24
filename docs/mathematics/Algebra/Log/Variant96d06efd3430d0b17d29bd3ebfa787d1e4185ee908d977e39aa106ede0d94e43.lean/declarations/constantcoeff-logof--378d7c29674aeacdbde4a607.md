# constantCoeff_logOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5054c986-dbfa-c15e-9b77-7d03d0e84868",
  "kind": "theorem",
  "lexical_name": "constantCoeff_logOf",
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
  "slug": "constantcoeff-logof--378d7c29674aeacdbde4a607",
  "source": {
    "blob": "8ee568ff86c5f98b8614f356c07032ac3e339509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:378d7c29674aeacdbde4a607e3ab97e2b2403066b28a473809323c22240b7dc0",
  "verification": {
    "reference": "docs/verification/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5054c986-dbfa-c15e-9b77-7d03d0e84868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constantCoeff_logOf {f : A⟦X⟧} (hf : constantCoeff f = 1) :
    constantCoeff (logOf f) = 0 := by
  rw [logOf_eq]
  have h : MvPowerSeries.constantCoeff (f - 1 : A⟦X⟧) = 0 := by
    rw [map_sub, map_one, ← constantCoeff_eq, hf, sub_self]
  exact constantCoeff_subst_eq_zero h _ constantCoeff_log

variable (A) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ee568ff86c5f98b8614f356c07032ac3e339509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
