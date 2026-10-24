# exists_unique_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4e752d7-7de3-f36a-0a0e-fa3fc98dc767",
  "kind": "theorem",
  "lexical_name": "exists_unique_point",
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
  "slug": "exists-unique-point--26b52281aa10802852a244d1",
  "source": {
    "blob": "8d36598b8d9f4b423e63cbcc45258d6cbfc91f03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b52281aa10802852a244d1e3c5a2d5b2a8d9ab463824563d54c0f0c54b5cd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e752d7-7de3-f36a-0a0e-fa3fc98dc767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_point {c : Coordinates} {R S : ℚ} {p : CenterData}
    (hc : checkAt c R S p = true) (he : CenterEstimates c p) :
    ∃ z : ZeroPoint, ‖z.1 - toComplex c‖ ≤ (R : ℝ) ∧ multiplicity z = 1 ∧
      ∀ v : ZeroPoint, ‖v.1 - toComplex c‖ ≤ (R : ℝ) → v = z := by
  have hp := (checkAt_iff c R S p).mp hc
  exact LocalNewtonWitness.exists_unique_point hp.2 (estimates_of_centers hp.1 he)

/-- Supply the unchanged family consumer without inventing a full-count certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d36598b8d9f4b423e63cbcc45258d6cbfc91f03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
