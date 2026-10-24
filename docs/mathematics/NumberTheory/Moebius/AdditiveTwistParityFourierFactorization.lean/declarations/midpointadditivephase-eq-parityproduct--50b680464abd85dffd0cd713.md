# midpointAdditivePhase_eq_parityProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92428821-3fd0-de0f-7836-c42a3134ef44",
  "kind": "theorem",
  "lexical_name": "midpointAdditivePhase_eq_parityProduct",
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
  "slug": "midpointadditivephase-eq-parityproduct--50b680464abd85dffd0cd713",
  "source": {
    "blob": "46716fe8e3f0bd6d453ac48399e2e84a36ed168b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 192,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b680464abd85dffd0cd713a573414ef22cec95080fe577085dcfd8ce2e2eee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92428821-3fd0-de0f-7836-c42a3134ef44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem midpointAdditivePhase_eq_parityProduct
    (d : ℕ) [NeZero d]
    (k : ZMod (d * d))
    {u v r : ℕ}
    (hr : r < 2)
    (hu : u % 2 = r)
    (hv : v % 2 = r) :
    ZMod.stdAddChar
        (k * (((u + v) / 2 : ℕ) : ZMod (d * d))) =
      ZMod.stdAddChar (k * (r : ZMod (d * d))) *
        ZMod.stdAddChar
          (k * ((u / 2 : ℕ) : ZMod (d * d))) *
        ZMod.stdAddChar
          (k * ((v / 2 : ℕ) : ZMod (d * d))) := by
  rw [midpoint_eq_halves_add_parity hr hu hv]
  push_cast
  ring_nf
  simp only [map_add_eq_mul]
  ring

/-- Midpoint-pair form of one parity component of the additive twist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46716fe8e3f0bd6d453ac48399e2e84a36ed168b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
