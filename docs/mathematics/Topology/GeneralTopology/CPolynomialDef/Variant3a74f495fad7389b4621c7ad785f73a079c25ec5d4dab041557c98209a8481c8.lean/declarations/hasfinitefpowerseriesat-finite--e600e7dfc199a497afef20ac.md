# HasFiniteFPowerSeriesAt.finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f3de1ca-0e5b-6b97-4ae8-75c2361967ec",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesAt.finite",
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
  "slug": "hasfinitefpowerseriesat-finite--e600e7dfc199a497afef20ac",
  "source": {
    "blob": "650a469cdcfe97723fc63b3d9b6cfa1e43ff4ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e600e7dfc199a497afef20ac7e0c00d6d09ccf0d3f8c1853045cf4226fa9a02a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3de1ca-0e5b-6b97-4ae8-75c2361967ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesAt.finite (hf : HasFiniteFPowerSeriesAt f p x n) :
    ∀ m : ℕ, n ≤ m → p m = 0 := let ⟨_, hf⟩ := hf; hf.finite

variable (𝕜)

/-- Given a function `f : E → F`, we say that `f` is continuously polynomial (cpolynomial)
at `x` if it admits a finite power series expansion around `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650a469cdcfe97723fc63b3d9b6cfa1e43ff4ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
