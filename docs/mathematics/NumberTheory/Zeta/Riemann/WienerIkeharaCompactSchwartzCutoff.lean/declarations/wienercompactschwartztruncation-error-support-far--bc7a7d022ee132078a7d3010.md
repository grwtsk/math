# wienerCompactSchwartzTruncation_error_support_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0b5d180-18b9-4702-93a2-f1fdf5bf1523",
  "kind": "theorem",
  "lexical_name": "wienerCompactSchwartzTruncation_error_support_far",
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
  "slug": "wienercompactschwartztruncation-error-support-far--bc7a7d022ee132078a7d3010",
  "source": {
    "blob": "3f80979eff132745516a99f5ab4268a73da696b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 235,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7a7d022ee132078a7d30104f8b1bd71a4c290f0f2b8f29791d78bc746dc681",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b5d180-18b9-4702-93a2-f1fdf5bf1523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerCompactSchwartzTruncation_error_support_far
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) :
    Function.support
        (g - wienerCompactSchwartzTruncation g R : ℝ → ℂ) ⊆
      {x : ℝ | ((R + 1 : ℕ) : ℝ) < |x|} := by
  intro x hx
  by_contra hnot
  have hbound : |x| ≤ ((R + 1 : ℕ) : ℝ) :=
    le_of_not_gt hnot
  have hzero :=
    wienerCompactSchwartzTruncation_error_zero_on_core g R hbound
  exact hx hzero

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f80979eff132745516a99f5ab4268a73da696b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
