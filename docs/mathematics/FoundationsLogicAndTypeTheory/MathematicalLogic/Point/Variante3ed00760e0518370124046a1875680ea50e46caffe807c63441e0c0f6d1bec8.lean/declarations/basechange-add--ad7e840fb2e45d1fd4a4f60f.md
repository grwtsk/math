# baseChange_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03584fd0-4b52-010d-323a-7d5f0bc485fa",
  "kind": "lemma",
  "lexical_name": "baseChange_add",
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
  "slug": "basechange-add--ad7e840fb2e45d1fd4a4f60f",
  "source": {
    "blob": "05ca4f23b05205af2e981f0c9a3dacdff2cdb231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 641,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variante3ed00760e0518370124046a1875680ea50e46caffe807c63441e0c0f6d1bec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad7e840fb2e45d1fd4a4f60f4ca4aafa4f1209e81905ebfbc9967b53bd912c79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variante3ed00760e0518370124046a1875680ea50e46caffe807c63441e0c0f6d1bec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03584fd0-4b52-010d-323a-7d5f0bc485fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_add [Algebra R S] [Algebra R F] [Algebra S F] [IsScalarTower R S F] [Algebra R K]
    [Algebra S K] [IsScalarTower R S K] (f : F →ₐ[S] K) {P Q : Fin 3 → F}
    (hP : (W'⁄F).Nonsingular P) (hQ : (W'⁄F).Nonsingular Q) :
    (W'⁄K).add (f ∘ P) (f ∘ Q) = f ∘ (W'⁄F).add P Q := by
  rw [← RingHom.coe_coe, ← WeierstrassCurve.Jacobian.map_add _ hP hQ, map_baseChange]

end Jacobian

/-- An abbreviation for `WeierstrassCurve.Jacobian.Point.fromAffine` for dot notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variante3ed00760e0518370124046a1875680ea50e46caffe807c63441e0c0f6d1bec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variante3ed00760e0518370124046a1875680ea50e46caffe807c63441e0c0f6d1bec8.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05ca4f23b05205af2e981f0c9a3dacdff2cdb231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
