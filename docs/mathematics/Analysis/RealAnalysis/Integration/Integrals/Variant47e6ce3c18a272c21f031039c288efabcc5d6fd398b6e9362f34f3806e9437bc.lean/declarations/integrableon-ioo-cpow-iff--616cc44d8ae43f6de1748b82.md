# integrableOn_Ioo_cpow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89b7a3b6-ffe7-411c-c735-e692116940f4",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioo_cpow_iff",
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
  "slug": "integrableon-ioo-cpow-iff--616cc44d8ae43f6de1748b82",
  "source": {
    "blob": "2fd1ea33ad96788ea11b190c6e518ae7b039ccfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant47e6ce3c18a272c21f031039c288efabcc5d6fd398b6e9362f34f3806e9437bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:616cc44d8ae43f6de1748b82b1c0456e8a55cb04cf2a40d140b74363423f6f3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variant47e6ce3c18a272c21f031039c288efabcc5d6fd398b6e9362f34f3806e9437bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89b7a3b6-ffe7-411c-c735-e692116940f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioo_cpow_iff {s : ℂ} {t : ℝ} (ht : 0 < t) :
    IntegrableOn (fun x : ℝ ↦ (x : ℂ) ^ s) (Ioo (0 : ℝ) t) ↔ -1 < s.re := by
  refine ⟨fun h ↦ ?_, fun h ↦ by simpa [intervalIntegrable_iff_integrableOn_Ioo_of_le ht.le]
    using intervalIntegrable_cpow' h (a := 0) (b := t)⟩
  have B : IntegrableOn (fun a ↦ a ^ s.re) (Ioo 0 t) := by
    apply (integrableOn_congr_fun _ measurableSet_Ioo).1 h.norm
    intro a ha
    simp [Complex.norm_cpow_eq_rpow_re_of_pos ha.1]
  rwa [integrableOn_Ioo_rpow_iff ht] at B

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variant47e6ce3c18a272c21f031039c288efabcc5d6fd398b6e9362f34f3806e9437bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant47e6ce3c18a272c21f031039c288efabcc5d6fd398b6e9362f34f3806e9437bc.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1ea33ad96788ea11b190c6e518ae7b039ccfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
