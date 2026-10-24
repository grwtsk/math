# blaschke_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:170d4e45-8168-71f4-8f98-c23e49448284",
  "kind": "theorem",
  "lexical_name": "blaschke_deficit",
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
  "slug": "blaschke-deficit--101f8b6e1fcef8ca224269db",
  "source": {
    "blob": "0eef196d23600ce6072bd372f40dc353ad872400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101f8b6e1fcef8ca224269db78c5c069735f276f2fa87ce3e17ccb523bfab62d",
  "verification": {
    "reference": "docs/verification/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:170d4e45-8168-71f4-8f98-c23e49448284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blaschke_deficit (z : ℂ) (hz : 0 < z.re) :
    (1 - ‖blaschkeAtOne z‖ ^ 2) / 2 = 2 * z.re / ‖1 + z‖ ^ 2 := by
  have hd : Complex.normSq (1 + z) ≠ 0 :=
    (Complex.normSq_pos.mpr (reference_denominator_ne_zero z hz)).ne'
  rw [← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq]
  simp only [blaschkeAtOne, Complex.normSq_div, reference_denominator_normSq]
  field_simp
  simp only [Complex.normSq_apply, Complex.add_re, Complex.sub_re, Complex.one_re,
    Complex.add_im, Complex.sub_im, Complex.one_im]
  ring

/-- A remaining inner factor of modulus at most one can only increase the deficit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BlaschkeFloorAudit/Variant1cc2e12e6850c086eb41a421d06c87e16d6834c89556264e04027d56a1fe22f3.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eef196d23600ce6072bd372f40dc353ad872400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
