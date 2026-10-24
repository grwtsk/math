# trivialPoint_scaled_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95a3fae4-a2c3-44ec-66fa-27b70bd91a79",
  "kind": "theorem",
  "lexical_name": "trivialPoint_scaled_limit",
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
  "slug": "trivialpoint-scaled-limit--9647b56ba35ea2fb97a62c79",
  "source": {
    "blob": "0d0ae16ad76a367d769d0e02da355333870407e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 163,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9647b56ba35ea2fb97a62c79ac1de0539e72f5776f7df997df8e11e01fca01ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95a3fae4-a2c3-44ec-66fa-27b70bd91a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivialPoint_scaled_limit (k : ℕ) :
    Tendsto (fun s => (s - trivialPoint k) * (-logDeriv riemannZeta s))
      (𝓝[≠] (trivialPoint k)) (𝓝 (-1)) := by
  have hne : trivialPoint k ≠ 1 := by
    intro he
    have hn := trivialPoint_re_neg k
    rw [he] at hn
    norm_num at hn
  have ha := analyticOn_riemannZeta (trivialPoint k) hne
  simpa only [mul_neg] using
    (ha.tendsto_mul_logDeriv_simple_zero (zeta_trivialPoint k)
      (deriv_zeta_trivialPoint_ne_zero k)).neg

/-- Continuous multipliers give the coefficient at the exact negative-even point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0ae16ad76a367d769d0e02da355333870407e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
