# scalarFiber_positive_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82f033cc-fd62-96e1-5f5e-f09d7ed5cdc6",
  "kind": "theorem",
  "lexical_name": "scalarFiber_positive_total",
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
  "slug": "scalarfiber-positive-total--e1161f6ac331f8e79aa83578",
  "source": {
    "blob": "cdf62950125ac894dbfd4faa9496a95510c130bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1161f6ac331f8e79aa83578475ebb2b1db5db035bed1e26fc3586273447e81a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82f033cc-fd62-96e1-5f5e-f09d7ed5cdc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalarFiber_positive_total [Nontrivial G] :
    0 < ∑ character : AddChar G ℂ, scalarFiber character := by
  rw [scalarFiber_sum]
  have hn : 2 ≤ Fintype.card G := by have h := Fintype.one_lt_card (α := G); omega
  have hr : (2 : ℝ) ≤ Fintype.card G := by exact_mod_cast hn
  linarith

omit [Fintype G] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant2816c8e1c6a495983a9f421c14cda185c901de52c4a4c562ba08b518855cc0bb.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf62950125ac894dbfd4faa9496a95510c130bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
