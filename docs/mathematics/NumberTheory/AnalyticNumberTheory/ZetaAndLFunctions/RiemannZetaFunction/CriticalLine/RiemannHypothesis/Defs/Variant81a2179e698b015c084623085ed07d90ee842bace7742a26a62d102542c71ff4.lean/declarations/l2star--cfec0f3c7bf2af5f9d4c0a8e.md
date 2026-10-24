# L2star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5946d18ca6c01d1cdda9bd8516457e9d230ecc6aff69096ab5144253d893ac2e",
  "kind": "def",
  "lexical_name": "L2star",
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
  "slug": "l2star--cfec0f3c7bf2af5f9d4c0a8e",
  "source": {
    "blob": "189ff5bde429dd0b5ade5c1410dba56600dd91ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfec0f3c7bf2af5f9d4c0a8e198389ac62bcf4fd42157162f5e32ba5bc157f91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5946d18ca6c01d1cdda9bd8516457e9d230ecc6aff69096ab5144253d893ac2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def L2star (τs : ℝ) : ℝ := Real.log (τs / (2 * Real.pi)) / 2

/-! ## 3. Prime-side densities with general complex coefficients  [XF′ Thm 4.2, §6] -/

/-- P_c(X; τ) := (1/π) Re Σ_{N ≤ X} c_N N^{−1/2−iτ}
            = (1/π) Σ_{N ≤ X} (Re c_N · cos(τ log N) + Im c_N · sin(τ log N)) / √N
for an arbitrary coefficient sequence c : ℕ → ℂ (the real-part form of [XF′ Thm 4.2]; for
c = −Λ this is the paper's P_X = Zeta23.PX, for c = Λ·χ it is ThmE's twisted density).  Indexing
Finset.Ioc 0 ⌊X⌋₊ as Zeta23.PX. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189ff5bde429dd0b5ade5c1410dba56600dd91ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
