# totalMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9efee003f9513dbfd8cc00b16a9ee486124574a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46eb708e-ef7d-b5fb-f444-3e1619798b68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d726d6dc-6b89-95e8-91bc-8e48c7e0d0d9",
  "kind": "theorem",
  "lexical_name": "totalMap_comp",
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
  "slug": "totalmap-comp--528bc8a9c94f564033f665f5",
  "source": {
    "blob": "a9efee003f9513dbfd8cc00b16a9ee486124574a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 148,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:528bc8a9c94f564033f665f5a5ed424ec59cc47cca49b4a1ef18d17caab0c84f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d726d6dc-6b89-95e8-91bc-8e48c7e0d0d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totalMap_comp (G : Gauge C E) (H : Gauge E F) (hOpen : D.IsOpenCover)
    (p : (C.vectorBundleCore hOpen).TotalSpace) :
    (G.comp H).totalMap hOpen p = H.totalMap hOpen (G.totalMap hOpen p) := by
  rcases p with ⟨x, a⟩
  change (⟨x, (unitValue (H.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
        unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩) * a⟩ :
      (F.vectorBundleCore hOpen).TotalSpace) =
      ⟨x, unitValue (H.frame (D.select x)) ⟨x.1, D.select_mem x⟩ *
        (unitValue (G.frame (D.select x)) ⟨x.1, D.select_mem x⟩ * a)⟩
  rw [mul_assoc]

end
end GRWTSK.Analysis.Complex.HolomorphicLineGauge.Gauge

namespace GRWTSK.Analysis.Complex.HolomorphicLineGauge.Fixtures

open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection)

noncomputable section

/-- Constants give actual holomorphic units, including their inverse section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9efee003f9513dbfd8cc00b16a9ee486124574a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
