# map_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5ec5a64-f05b-9304-e08b-0ef40086f71b",
  "kind": "theorem",
  "lexical_name": "map_surjective",
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
  "slug": "map-surjective--497115151bd5dae657c6b398",
  "source": {
    "blob": "c5830236ba346ccef22dd5cf2ebea5f57ce43962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 502,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante0296d2fdcac5462655cc80f62e4b25c9e82ab269846f977b0a537c3e803859a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:497115151bd5dae657c6b398996b0d91e6b8f2e8c1a68f8b864b54a0ba8507cc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variante0296d2fdcac5462655cc80f62e4b25c9e82ab269846f977b0a537c3e803859a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ec5a64-f05b-9304-e08b-0ef40086f71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective (f : S →+* T) (hf : Function.Surjective f) :
    Function.Surjective (PowerSeries.map f) := by
  intro g
  use PowerSeries.mk fun k ↦ Function.surjInv hf (PowerSeries.coeff k g)
  ext k
  simp only [Function.surjInv, coeff_map, coeff_mk]
  exact Classical.choose_spec (hf (coeff k g))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variante0296d2fdcac5462655cc80f62e4b25c9e82ab269846f977b0a537c3e803859a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante0296d2fdcac5462655cc80f62e4b25c9e82ab269846f977b0a537c3e803859a.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5830236ba346ccef22dd5cf2ebea5f57ce43962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
