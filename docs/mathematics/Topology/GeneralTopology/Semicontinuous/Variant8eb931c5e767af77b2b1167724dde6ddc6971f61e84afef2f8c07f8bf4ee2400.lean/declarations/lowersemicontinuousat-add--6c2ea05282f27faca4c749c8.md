# LowerSemicontinuousAt.add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a78c170-e3cf-13df-b8b5-9b963d80d6af",
  "kind": "theorem",
  "lexical_name": "LowerSemicontinuousAt.add'",
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
  "slug": "lowersemicontinuousat-add--6c2ea05282f27faca4c749c8",
  "source": {
    "blob": "f469bca6e9ca2ec3703fce6cc168ac9146931f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 457,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c2ea05282f27faca4c749c8712768afe8dffd5a3d21a0c93df0d0898644867f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a78c170-e3cf-13df-b8b5-9b963d80d6af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LowerSemicontinuousAt.add' {f g : α → γ} (hf : LowerSemicontinuousAt f x)
    (hg : LowerSemicontinuousAt g x)
    (hcont : ContinuousAt (fun p : γ × γ => p.1 + p.2) (f x, g x)) :
    LowerSemicontinuousAt (fun z => f z + g z) x := by
  simp_rw [← lowerSemicontinuousWithinAt_univ_iff] at *
  exact hf.add' hg hcont
#align lower_semicontinuous_at.add' LowerSemicontinuousAt.add'

/-- The sum of two lower semicontinuous functions is lower semicontinuous. Formulated with an
explicit continuity assumption on addition, for application to `EReal`. The unprimed version of
the lemma uses `[ContinuousAdd]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variant8eb931c5e767af77b2b1167724dde6ddc6971f61e84afef2f8c07f8bf4ee2400.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f469bca6e9ca2ec3703fce6cc168ac9146931f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
