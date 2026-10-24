# Ideal.height_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac2526b5-31fe-1d64-1a88-afe7c0f9547c",
  "kind": "theorem",
  "lexical_name": "Ideal.height_mono",
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
  "slug": "ideal-height-mono--5439396c1872782e6178ed3d",
  "source": {
    "blob": "5873b3760959bf00a6985da1f95a2c16cf798709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5439396c1872782e6178ed3da991b99656213695fe7f09d094b935e4f9976fb7",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac2526b5-31fe-1d64-1a88-afe7c0f9547c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.height_mono {I J : Ideal R} (h : I ≤ J) : I.height ≤ J.height := by
  simp only [height]
  refine le_iInf₂ (fun p hp ↦ ?_)
  have := Ideal.minimalPrimes_isPrime hp
  obtain ⟨q, hq, e⟩ := Ideal.exists_minimalPrimes_le (h.trans hp.1.2)
  haveI := Ideal.minimalPrimes_isPrime hq
  exact (iInf₂_le q hq).trans (Ideal.primeHeight_mono e)

@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant4898711c977cbec1a850233c72b734a8c6a140cb5c82dbaab87fae8c50078ca6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5873b3760959bf00a6985da1f95a2c16cf798709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
