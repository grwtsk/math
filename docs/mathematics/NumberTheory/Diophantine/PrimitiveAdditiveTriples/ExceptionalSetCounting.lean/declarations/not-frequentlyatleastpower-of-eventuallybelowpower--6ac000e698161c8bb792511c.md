# not_frequentlyAtLeastPower_of_eventuallyBelowPower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fab83c2b-4532-c25e-d89f-dea43eb4e07b",
  "kind": "theorem",
  "lexical_name": "not_frequentlyAtLeastPower_of_eventuallyBelowPower",
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
  "slug": "not-frequentlyatleastpower-of-eventuallybelowpower--6ac000e698161c8bb792511c",
  "source": {
    "blob": "947876811c9527101185978b472bf13ecb875edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac000e698161c8bb792511c1bcceff89b84be086c19bc300f9bef275fb11374",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fab83c2b-4532-c25e-d89f-dea43eb4e07b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_frequentlyAtLeastPower_of_eventuallyBelowPower
    {count : ℕ → ℕ} {D : ℝ}
    (h : EventuallyBelowPower count D) :
    ¬ FrequentlyAtLeastPower count D := by
  intro hfreq
  obtain ⟨N₀, hN₀⟩ := h
  obtain ⟨N, hN, hlower⟩ := hfreq N₀
  exact (not_le_of_gt (hN₀ N hN)) hlower

/-- A concrete feasible point in the Proposition 6.1 optimization problem
whose exponent coordinate is exactly `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `947876811c9527101185978b472bf13ecb875edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
