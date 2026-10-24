# shellRH_iff_upperHeightShell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95fbddcd-586a-4c4c-efbe-e573581b9376",
  "kind": "theorem",
  "lexical_name": "shellRH_iff_upperHeightShell",
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
  "slug": "shellrh-iff-upperheightshell--63f5569ce5f4498a8536b70a",
  "source": {
    "blob": "8954ac694ac5a170c4636154aa5e87851d760a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f5569ce5f4498a8536b70aeecd99ec4cae43dd06a1d0ff74b5a663624d8c52",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95fbddcd-586a-4c4c-efbe-e573581b9376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shellRH_iff_upperHeightShell (N : ℕ) :
    ShellRH N ↔ RHOn (upperHeightShell N) := by
  constructor
  · intro h z hz hzero
    have hpos : 0 < ZetaCommutatorRoot.root.heightAt z :=
      (Nat.cast_nonneg N).trans_lt hz.1
    apply h z _ hzero
    change (N : ℝ) < |ZetaCommutatorRoot.root.heightAt z| ∧
      |ZetaCommutatorRoot.root.heightAt z| ≤ ((N + 1 : ℕ) : ℝ)
    simpa only [abs_of_pos hpos] using (show (N : ℝ) < ZetaCommutatorRoot.root.heightAt z ∧
      ZetaCommutatorRoot.root.heightAt z ≤ ((N + 1 : ℕ) : ℝ) from hz)
  · intro h z hz hzero
    change (N : ℝ) < |ZetaCommutatorRoot.root.heightAt z| ∧
      |ZetaCommutatorRoot.root.heightAt z| ≤ ((N + 1 : ℕ) : ℝ) at hz
    by_cases hnonneg : 0 ≤ ZetaCommutatorRoot.root.heightAt z
    · exact h z (by simpa only [upperHeightShell, Set.mem_ofPred_eq,
        abs_of_nonneg hnonneg] using hz) hzero
    · have hneg := lt_of_not_ge hnonneg
      have hupper : zeroConjugate z ∈ upperHeightShell N := by
        simpa only [upperHeightShell, Set.mem_ofPred_eq, root_height_zeroConjugate,
          abs_of_neg hneg] using hz
      have hline := h (zeroConjugate z) hupper hzero.conjugate
      simpa [zeroConjugate] using hline

/-- Strictly off-line upper-right shell. Critical-line fixed points are not excluded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8954ac694ac5a170c4636154aa5e87851d760a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
