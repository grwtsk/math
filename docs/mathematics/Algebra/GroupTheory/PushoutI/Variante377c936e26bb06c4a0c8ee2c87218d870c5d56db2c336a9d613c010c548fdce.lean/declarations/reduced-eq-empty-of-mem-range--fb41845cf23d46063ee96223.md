# Reduced.eq_empty_of_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96a570a1640fb994f6279ddb82dd6fcb57f5bfc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 636,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86ae496f-2803-2b40-1e95-a1864ac9e555",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2c0223f-61a6-21d5-67cd-711db0b56536",
  "kind": "theorem",
  "lexical_name": "Reduced.eq_empty_of_mem_range",
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
  "slug": "reduced-eq-empty-of-mem-range--fb41845cf23d46063ee96223",
  "source": {
    "blob": "96a570a1640fb994f6279ddb82dd6fcb57f5bfc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 636,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb41845cf23d46063ee9622392b1cbf06a6058e4f8de3ad1fad5916d298a58cc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2c0223f-61a6-21d5-67cd-711db0b56536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Reduced.eq_empty_of_mem_range
    (hφ : ∀ i, Injective (φ i)) {w : Word G} (hw : Reduced φ w)
    (h : ofCoprodI w.prod ∈ (base φ).range) : w = .empty := by
  rcases transversal_nonempty φ hφ with ⟨d⟩
  rcases hw.exists_normalWord_prod_eq d with ⟨w', hw'prod, hw'map⟩
  rcases h with ⟨h, heq⟩
  have : (NormalWord.prod (d := d) ⟨.empty, h, by simp⟩) = base φ h := by
    simp [NormalWord.prod]
  rw [← hw'prod, ← this] at heq
  suffices w'.toWord = .empty by
    simp [this, @eq_comm _ []] at hw'map
    ext
    simp [hw'map]
  rw [← prod_injective heq]

end Reduced

/-- The intersection of the images of the maps from any two distinct groups in the diagram
into the amalgamated product is the image of the map from the base group in the diagram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a570a1640fb994f6279ddb82dd6fcb57f5bfc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
