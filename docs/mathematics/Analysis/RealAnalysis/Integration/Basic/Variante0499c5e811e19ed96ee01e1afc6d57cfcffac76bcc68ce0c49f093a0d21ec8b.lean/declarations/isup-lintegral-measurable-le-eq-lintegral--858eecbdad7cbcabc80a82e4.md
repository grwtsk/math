# iSup_lintegral_measurable_le_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e3247e18ae4dc134c0ac49995458ef2750e8efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8f87542-b542-f3f2-f269-916ad0ee7c6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1da78312-2be1-7e41-c306-d65de2350e31",
  "kind": "theorem",
  "lexical_name": "iSup_lintegral_measurable_le_eq_lintegral",
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
  "slug": "isup-lintegral-measurable-le-eq-lintegral--858eecbdad7cbcabc80a82e4",
  "source": {
    "blob": "7e3247e18ae4dc134c0ac49995458ef2750e8efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858eecbdad7cbcabc80a82e4cbb390b37460e6af45141835dff9fd1370291d4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da78312-2be1-7e41-c306-d65de2350e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_lintegral_measurable_le_eq_lintegral (f : α → ℝ≥0∞) :
    ⨆ (g : α → ℝ≥0∞) (_ : Measurable g) (_ : g ≤ f), ∫⁻ a, g a ∂μ = ∫⁻ a, f a ∂μ := by
  apply le_antisymm
  · exact iSup_le fun i => iSup_le fun _ => iSup_le fun h'i => lintegral_mono h'i
  · rw [lintegral]
    refine iSup₂_le fun i hi => le_iSup₂_of_le i i.measurable <| le_iSup_of_le hi ?_
    exact le_of_eq (i.lintegral_eq_lintegral _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3247e18ae4dc134c0ac49995458ef2750e8efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
