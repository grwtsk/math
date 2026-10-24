# weightedFourPhase_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3c5b44-75ce-c254-b81f-fe9ee34bd5e9",
  "kind": "theorem",
  "lexical_name": "weightedFourPhase_norm_le",
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
  "slug": "weightedfourphase-norm-le--de357c6fc3a48eb6a8cb3ed0",
  "source": {
    "blob": "569ca5b1183b4a4eff1fb999ef1ae872f81a6afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Farey/WeightedReturnBalance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de357c6fc3a48eb6a8cb3ed0dad6f126647017e98f25c65eb58cba555964280c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/WeightedReturnBalance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3c5b44-75ce-c254-b81f-fe9ee34bd5e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedFourPhase_norm_le (w0 w1 w2 w3 : ℝ) :
    ‖weightedFourPhase w0 w1 w2 w3‖ ≤
      |w0 - w2| + |w1 - w3| := by
  rw [weightedFourPhase_eq_pair_defects]
  calc
    ‖((w0 - w2 : ℝ) : ℂ) +
        ((w1 - w3 : ℝ) : ℂ) * Complex.I‖ ≤
        ‖((w0 - w2 : ℝ) : ℂ)‖ +
          ‖((w1 - w3 : ℝ) : ℂ) * Complex.I‖ :=
      norm_add_le _ _
    _ = |w0 - w2| + |w1 - w3| := by
      rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Complex.norm_real]
      rfl

/-- A raw radial block at eigenvalue r. The uniform clock phases are
not themselves equally weighted when r is expanding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/WeightedReturnBalance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/WeightedReturnBalance.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569ca5b1183b4a4eff1fb999ef1ae872f81a6afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
