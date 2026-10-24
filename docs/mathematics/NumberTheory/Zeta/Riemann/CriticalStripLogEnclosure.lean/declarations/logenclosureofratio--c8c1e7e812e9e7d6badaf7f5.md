# logEnclosureOfRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b641a28c0c6067d961611e88b7d3d80a3f76e16306ae135dad262fb77dca1d7",
  "kind": "def",
  "lexical_name": "logEnclosureOfRatio",
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
  "slug": "logenclosureofratio--c8c1e7e812e9e7d6badaf7f5",
  "source": {
    "blob": "73aac60196c2d9ca34352aef6fcf2a57024c7e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c1e7e812e9e7d6badaf7f53b223aef8e9e2ec6164b38057d018f99aa9d4264",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b641a28c0c6067d961611e88b7d3d80a3f76e16306ae135dad262fb77dca1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logEnclosureOfRatio (x : ℝ) (hx : 1 ≤ x) (n : ℕ) : RealLogEnclosure x := by
  let q : ℝ := (x - 1) / (x + 1)
  have hxden : 0 < x + 1 := by linarith
  have hq : 0 ≤ q := div_nonneg (sub_nonneg.mpr hx) hxden.le
  have hq1 : q < 1 := (div_lt_one hxden).mpr (by linarith)
  have hqeq : q * (x + 1) = x - 1 := div_mul_cancel₀ _ hxden.ne'
  have hsource : (1 + q) / (1 - q) = x := by
    apply (div_eq_iff (sub_pos.mpr hq1).ne').mpr
    nlinarith [hqeq]
  exact { center := ratioLogCenter q n,
    radius := ratioLogRadius q n,
    radius_nonneg := ratioLogRadius_nonneg hq hq1 n,
    encloses := by simpa only [hsource] using ratioLog_encloses hq hq1 n }

/-- Efficient arithmetic range reduction: x=2^j*u with 1<=u<=2. The upper bound is
retained as a domain fact ensuring the ratio (u-1)/(u+1) is at most 1/3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripLogEnclosure.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73aac60196c2d9ca34352aef6fcf2a57024c7e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
