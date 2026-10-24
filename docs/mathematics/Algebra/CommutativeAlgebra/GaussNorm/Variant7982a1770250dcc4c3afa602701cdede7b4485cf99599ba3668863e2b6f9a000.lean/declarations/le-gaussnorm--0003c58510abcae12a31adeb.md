# le_gaussNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8268649d-e1c3-8e2f-8da4-f548e32d463f",
  "kind": "lemma",
  "lexical_name": "le_gaussNorm",
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
  "slug": "le-gaussnorm--0003c58510abcae12a31adeb",
  "source": {
    "blob": "d3433bc3c4325da129954004b59d7457fd657c66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0003c58510abcae12a31adebaeeb917739610f9b253045826170b5e357db620d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8268649d-e1c3-8e2f-8da4-f548e32d463f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_gaussNorm (hc : 0 ≤ c) (i : ℕ) : v (p.coeff i) * c ^ i ≤ p.gaussNorm v c := by
  rw [← gaussNorm_coe_powerSeries _ _ hc, ← coeff_coe]
  apply PowerSeries.le_gaussNorm
  simpa [PowerSeries.HasGaussNorm] using! aux_bdd v p

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3433bc3c4325da129954004b59d7457fd657c66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
