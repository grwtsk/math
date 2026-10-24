# goldbachProjectorMass_eq_fullFrequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3435d475-8a80-0027-9c12-f0a041e3a686",
  "kind": "theorem",
  "lexical_name": "goldbachProjectorMass_eq_fullFrequency",
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
  "slug": "goldbachprojectormass-eq-fullfrequency--401a2c1e9be0f30d30368875",
  "source": {
    "blob": "5bc123bc2043b04402d5331304aaff32aa5e9919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401a2c1e9be0f30d30368875a625be1a079c921f080048cba03db55e167d7de3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3435d475-8a80-0027-9c12-f0a041e3a686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProjectorMass_eq_fullFrequency (q N : ℕ) [NeZero q] :
    goldbachProjectorMass q N =
      ∑ uv ∈ goldbachBox N,
        (primeLogWeight uv.1 : ℂ) * (primeLogWeight uv.2 : ℂ) *
          ((q : ℂ)⁻¹ * ∑ k : ZMod q,
            ZMod.stdAddChar
              (k * ((uv.1 : ZMod q) + (uv.2 : ZMod q) - (N : ZMod q)))) := by
  unfold goldbachProjectorMass
  apply Finset.sum_congr rfl
  intro uv _
  rw [characterProjector_eq_average]

/-- Under the explicit no-wrap bound, the finite character average recovers
the same real logarithmic mass, embedded in `ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteFourier.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc123bc2043b04402d5331304aaff32aa5e9919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
