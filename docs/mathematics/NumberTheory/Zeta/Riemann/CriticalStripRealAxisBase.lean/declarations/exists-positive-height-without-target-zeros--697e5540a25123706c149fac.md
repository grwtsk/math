# exists_positive_height_without_target_zeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1347ce18-e65d-b64b-b459-0eeef574737f",
  "kind": "theorem",
  "lexical_name": "exists_positive_height_without_target_zeros",
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
  "slug": "exists-positive-height-without-target-zeros--697e5540a25123706c149fac",
  "source": {
    "blob": "ac2b21d5a84f683a67e04cad4377a9deca32330a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697e5540a25123706c149face3f05a8b4884c03197417be0b802353b7cb10226",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1347ce18-e65d-b64b-b459-0eeef574737f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_positive_height_without_target_zeros :
    ∃ η : ℝ, 0 < η ∧
      ∀ z : ℂ, |ZetaCommutatorRoot.root.heightAt z| ≤ η → ¬ NontrivialZetaZero z := by
  obtain ⟨η, b, hη, hb, hlower⟩ := exists_realAxis_norm_collar
  refine ⟨η, hη, ?_⟩
  intro z hheight hzero
  have hstrip := hzero.mem_critical_strip
  have him : |z.im| ≤ η := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hheight
  have hbound := hlower z hstrip.1.le hstrip.2.le him
  rw [poleNormalizedZeta_zero_of_target hzero, norm_zero] at hbound
  exact (not_le_of_gt hb) hbound

/-- The exact next port: the base is a theorem, while the interior cover family is
still required. Neither boundary nor horizontal collars establish this family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2b21d5a84f683a67e04cad4377a9deca32330a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
