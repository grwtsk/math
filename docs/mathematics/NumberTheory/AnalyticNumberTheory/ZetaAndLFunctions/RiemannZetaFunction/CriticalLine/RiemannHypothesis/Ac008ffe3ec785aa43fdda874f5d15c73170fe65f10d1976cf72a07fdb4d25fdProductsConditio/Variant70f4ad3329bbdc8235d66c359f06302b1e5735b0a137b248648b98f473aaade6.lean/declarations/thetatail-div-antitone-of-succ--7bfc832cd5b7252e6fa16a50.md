# thetaTail_div_antitone_of_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f60425fe-f0d2-3295-2d38-f5347e0cce3d",
  "kind": "theorem",
  "lexical_name": "thetaTail_div_antitone_of_succ",
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
  "slug": "thetatail-div-antitone-of-succ--7bfc832cd5b7252e6fa16a50",
  "source": {
    "blob": "d5a07773f14a50274546f52bde78b755d3ec982c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bfc832cd5b7252e6fa16a509b949227dd1a6897a39de82f9142196266368e3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f60425fe-f0d2-3295-2d38-f5347e0cce3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_div_antitone_of_succ {r s : ℕ} (hrs : r ≤ s) :
    AntitoneOn (fun t : ℝ => thetaTail s t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  change thetaTail s y / thetaTail r y ≤ thetaTail s x / thetaTail r x
  rw [thetaTail_ratio_eq_product hrs hy, thetaTail_ratio_eq_product hrs hx]
  exact thetaTail_ratio_product_antitone_of_succ hsucc r s hx hy hxy

/-- The existing exact rank-two equivalence closes the determinant statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio/Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a07773f14a50274546f52bde78b755d3ec982c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
