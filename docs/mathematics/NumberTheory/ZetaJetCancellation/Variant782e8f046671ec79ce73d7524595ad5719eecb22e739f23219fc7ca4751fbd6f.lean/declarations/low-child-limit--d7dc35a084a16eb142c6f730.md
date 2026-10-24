# low_child_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7267991-1515-9b4c-6bea-02969fe40f50",
  "kind": "theorem",
  "lexical_name": "low_child_limit",
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
  "slug": "low-child-limit--d7dc35a084a16eb142c6f730",
  "source": {
    "blob": "d28706a8333c105022da9c21e22cfeb25a373b1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7dc35a084a16eb142c6f73042a5449a669d2902a118bb180aae99dc64e5e87f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7267991-1515-9b4c-6bea-02969fe40f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem low_child_limit {A C : ℂ → ℂ} {kappa : ℂ}
    (hzero : A 1 = 0) (hjet : HasDerivAt A kappa 1)
    (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (A s * riemannZeta s) * C s) (𝓝[≠] 1)
      (𝓝 (kappa * C 1)) :=
  (actual_zeta_pole_cancellation hzero hjet).mul
    (hC.tendsto.mono_left nhdsWithin_le_nhds)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZetaJetCancellation/Variant782e8f046671ec79ce73d7524595ad5719eecb22e739f23219fc7ca4751fbd6f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d28706a8333c105022da9c21e22cfeb25a373b1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
