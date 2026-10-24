# le_egauge_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f506a2a7-d4fd-c110-d679-d405f79232c4",
  "kind": "lemma",
  "lexical_name": "le_egauge_prod",
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
  "slug": "le-egauge-prod--24c108b42b8ecf176c076bae",
  "source": {
    "blob": "177952f4fcc3a90b1074413d7f3d324a64e92b40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c108b42b8ecf176c076bae8d05287b0b17c42fc7baa20e694afc595fb6261f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f506a2a7-d4fd-c110-d679-d405f79232c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_egauge_prod (s : Set E) (t : Set F) (a : E) (b : F) :
    max (egauge 𝕜 s a) (egauge 𝕜 t b) ≤ egauge 𝕜 (s ×ˢ t) (a, b) :=
  max_le (mapsTo_fst_prod.egauge_le 𝕜 (MulActionHom.fst 𝕜 E F) (a, b))
    (MapsTo.egauge_le 𝕜 (MulActionHom.snd 𝕜 E F) mapsTo_snd_prod (a, b))

end SMul

section SMulZero

variable (𝕜 : Type*) [NNNorm 𝕜] [Nonempty 𝕜] {E : Type*} [Zero E] [SMulZeroClass 𝕜 E] {x : E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177952f4fcc3a90b1074413d7f3d324a64e92b40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
