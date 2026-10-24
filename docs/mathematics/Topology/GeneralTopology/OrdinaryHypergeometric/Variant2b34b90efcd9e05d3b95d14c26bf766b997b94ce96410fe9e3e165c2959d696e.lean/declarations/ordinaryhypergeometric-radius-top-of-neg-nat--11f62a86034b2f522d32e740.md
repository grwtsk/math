# ordinaryHypergeometric_radius_top_of_neg_nat₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:069941db-a845-a0d4-eafd-31c9f8891276",
  "kind": "theorem",
  "lexical_name": "ordinaryHypergeometric_radius_top_of_neg_nat₂",
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
  "slug": "ordinaryhypergeometric-radius-top-of-neg-nat--11f62a86034b2f522d32e740",
  "source": {
    "blob": "1bf6b82005beedebd1d6b469133a65a3334cfcfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f62a86034b2f522d32e7405084b6325bfb8632617cb84d7239bd8490ff5334",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:069941db-a845-a0d4-eafd-31c9f8891276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinaryHypergeometric_radius_top_of_neg_nat₂ {k : ℕ} :
    (ordinaryHypergeometricSeries 𝔸 a (-(k : 𝕂)) c).radius = ⊤ := by
  rw [ordinaryHypergeometricSeries_symm]
  exact ordinaryHypergeometric_radius_top_of_neg_nat₁ 𝔸 a c

/-- The convergence radius for `c = -k` is infinite, because the junk value at poles is `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf6b82005beedebd1d6b469133a65a3334cfcfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
