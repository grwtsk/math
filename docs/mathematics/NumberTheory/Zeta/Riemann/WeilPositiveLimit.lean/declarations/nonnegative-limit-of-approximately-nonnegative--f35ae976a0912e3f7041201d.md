# nonnegative_limit_of_approximately_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1aaf8e94-d693-0b11-0461-97c8445e7ac0",
  "kind": "theorem",
  "lexical_name": "nonnegative_limit_of_approximately_nonnegative",
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
  "slug": "nonnegative-limit-of-approximately-nonnegative--f35ae976a0912e3f7041201d",
  "source": {
    "blob": "33d3e6fe90f12a9f2837a6342c9dfb6c4f5b754b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 266,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35ae976a0912e3f7041201de7f7e8b31cd2f273d363f92072141c1265b13438",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aaf8e94-d693-0b11-0461-97c8445e7ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonnegative_limit_of_approximately_nonnegative
    {q error : ℕ → ℝ} {limit : ℝ}
    (hq : Tendsto q atTop (𝓝 limit))
    (herror : Tendsto error atTop (𝓝 0))
    (hlower : ∀ n, -error n ≤ q n) :
    0 ≤ limit := by
  have hsum :
      Tendsto (fun n => q n + error n) atTop (𝓝 (limit + 0)) :=
    hq.add herror
  have hnonnegative : ∀ n, 0 ≤ q n + error n := by
    intro n
    linarith [hlower n]
  have hlimitNonnegative : 0 ≤ limit + 0 :=
    ge_of_tendsto hsum (Eventually.of_forall hnonnegative)
  simpa using hlimitNonnegative

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d3e6fe90f12a9f2837a6342c9dfb6c4f5b754b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
