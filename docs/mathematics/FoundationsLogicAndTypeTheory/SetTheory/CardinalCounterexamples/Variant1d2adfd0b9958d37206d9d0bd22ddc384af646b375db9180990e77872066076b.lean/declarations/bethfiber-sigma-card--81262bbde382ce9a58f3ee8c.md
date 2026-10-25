# bethFiber_sigma_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5501b977-c283-d949-3e19-958c6ea5ed2c",
  "kind": "theorem",
  "lexical_name": "bethFiber_sigma_card",
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
  "slug": "bethfiber-sigma-card--81262bbde382ce9a58f3ee8c",
  "source": {
    "blob": "f1c4a5ae6061c1e38f41ec0c2f8cfd20f5387b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81262bbde382ce9a58f3ee8c3cf011be413c3ff0d69433af6b1760d290d7a63f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5501b977-c283-d949-3e19-958c6ea5ed2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bethFiber_sigma_card : #(Σ n : ℕ, bethFiber n) = Cardinal.beth Ordinal.omega0 := by
  rw [Cardinal.mk_sigma]
  simp only [bethFiber_card]
  apply le_antisymm
  · have h := Cardinal.sum_le_mk_mul_iSup (fun n : ℕ ↦ Cardinal.beth (n : Ordinal))
    simpa only [Cardinal.mk_nat, beth_omega_natural_sup,
      Cardinal.aleph0_mul_eq (Cardinal.aleph0_le_beth _)] using h
  · rw [← beth_omega_natural_sup]
    exact Cardinal.iSup_le_sum _

/-- This uncountable strong limit is singular, witnessed by its countable fibers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c4a5ae6061c1e38f41ec0c2f8cfd20f5387b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
