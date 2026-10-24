# integral_abs_phi_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59dee0da-04e4-ad1b-4115-9dc61e9ffb2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79fde8a8-3f34-2ca8-f0de-94fbda6f5606",
  "kind": "theorem",
  "lexical_name": "integral_abs_phi_sq_le",
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
  "slug": "integral-abs-phi-sq-le--bb28e25cba9f6921515a1497",
  "source": {
    "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb28e25cba9f6921515a14975a663611a1bbe2d996d42ee307e4c8d7d4f007bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79fde8a8-3f34-2ca8-f0de-94fbda6f5606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_phi_sq_le (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, |Taper.phi ϱ L w u ^ 2| ≤ L := by
  have hL : 0 < L := by linarith
  have ha := Taper.aConst_le_one hϱ hw hwL
  unfold Taper.aConst at ha
  have habs : (fun u => |Taper.phi ϱ L w u ^ 2|) = fun u => Taper.phi ϱ L w u ^ 2 :=
    funext fun u => abs_of_nonneg (sq_nonneg _)
  rw [habs]
  rwa [inv_mul_le_iff₀ hL, mul_one] at ha

/-! ### second-derivative norms of φ_f and φ_f² -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401612063d52225f560f886499cc0e07a3c7ba67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
