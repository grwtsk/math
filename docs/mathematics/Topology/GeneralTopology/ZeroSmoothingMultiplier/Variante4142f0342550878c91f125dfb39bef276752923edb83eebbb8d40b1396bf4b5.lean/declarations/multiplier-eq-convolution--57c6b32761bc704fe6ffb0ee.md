# multiplier_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b11e73d-81a5-92e4-4364-93286ae16aae",
  "kind": "theorem",
  "lexical_name": "multiplier_eq_convolution",
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
  "slug": "multiplier-eq-convolution--57c6b32761bc704fe6ffb0ee",
  "source": {
    "blob": "a9dfd4959ada89b12192707a30b87392b2920203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57c6b32761bc704fe6ffb0ee750a6be812b3e00569a6eb16ddb8b2e24ca98093",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b11e73d-81a5-92e4-4364-93286ae16aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplier_eq_convolution (ε : ℝ) (hε : 0 < ε) (z : ℂ) :
    multiplier ε hε z =
      (mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume]
        (fun x : ℝ ↦ Complex.exp (-(z * (x : ℂ))))) 0 := by
  unfold multiplier convolution
  apply integral_congr_ae
  exact Eventually.of_forall fun y ↦ by
    simp only [ContinuousLinearMap.lsmul_apply, zero_sub, Complex.ofReal_neg,
      mul_neg, neg_neg, Complex.real_smul]

/-- At every fixed complex argument, shrinking the prescribed positive kernels
gives multiplier one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9dfd4959ada89b12192707a30b87392b2920203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
