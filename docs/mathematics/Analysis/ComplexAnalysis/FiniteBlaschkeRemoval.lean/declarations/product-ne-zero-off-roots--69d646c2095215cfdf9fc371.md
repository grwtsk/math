# product_ne_zero_off_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e1e0a1-e163-888c-a63f-bda2f0017a99",
  "kind": "theorem",
  "lexical_name": "product_ne_zero_off_roots",
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
  "slug": "product-ne-zero-off-roots--69d646c2095215cfdf9fc371",
  "source": {
    "blob": "f2c4e83c3ba6f77c85034e3e7e570411827cccdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d646c2095215cfdf9fc37185a0aa7fb324dd1e3a103c004a5d3dbc20a2cc70",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e1e0a1-e163-888c-a63f-bda2f0017a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_ne_zero_off_roots {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (w : ℂ) (hw : ‖w‖ ≤ 3)
    (hne : ∀ i ∈ S, w ≠ a i) :
    (∏ i ∈ S, (factor 3 (a i) w) ^ m i) ≠ 0 := by
  apply Finset.prod_ne_zero_iff.mpr
  intro i hi
  exact pow_ne_zero _ (factor_ne_zero 3 (by norm_num) (a i) w (hne i hi)
    (denominator_ne_zero 3 (by norm_num) (a i) w (by linarith [ha i hi]) hw))

/-- Isolate exactly one root, retaining its full exponent and every other factor.
Injectivity is on complex locations, not on heights or labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c4e83c3ba6f77c85034e3e7e570411827cccdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
