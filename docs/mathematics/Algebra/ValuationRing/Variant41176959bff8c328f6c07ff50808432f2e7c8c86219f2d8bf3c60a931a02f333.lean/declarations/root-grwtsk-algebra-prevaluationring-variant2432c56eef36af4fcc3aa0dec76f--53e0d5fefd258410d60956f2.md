# _root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.PreValuationRing.iff_ideal_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f89f789-0f96-6e23-378a-8ebc4157b765",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.PreValuationRing.iff_ideal_total",
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
  "slug": "root-grwtsk-algebra-prevaluationring-variant2432c56eef36af4fcc3aa0dec76f--53e0d5fefd258410d60956f2",
  "source": {
    "blob": "bf46e4acabccc3509e99396e8f524afb7cf72fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 324,
    "path": "GRWTSK/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53e0d5fefd258410d60956f275151aef78e40f4fbfb04422a5ee08bfb6c305bb",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f89f789-0f96-6e23-378a-8ebc4157b765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.PreValuationRing.Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.PreValuationRing.iff_ideal_total [CommRing R] :
    PreValuationRing R ↔ @Std.Total (Ideal R) (· ≤ ·) := by
  classical
  refine ⟨fun _ => ⟨le_total⟩, fun H => PreValuationRing.iff_dvd_total.mpr ⟨fun a b => ?_⟩⟩
  have := H.total (Ideal.span {a}) (Ideal.span {b})
  simp_rw [Ideal.span_singleton_le_span_singleton] at this
  exact this.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variant41176959bff8c328f6c07ff50808432f2e7c8c86219f2d8bf3c60a931a02f333.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf46e4acabccc3509e99396e8f524afb7cf72fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
