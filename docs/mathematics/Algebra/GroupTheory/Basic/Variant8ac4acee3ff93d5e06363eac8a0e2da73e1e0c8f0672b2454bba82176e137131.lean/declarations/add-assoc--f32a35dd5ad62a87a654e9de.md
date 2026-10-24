# add_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:996ce370-a285-22e5-0314-3499183aeaa8",
  "kind": "theorem",
  "lexical_name": "add_assoc",
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
  "slug": "add-assoc--f32a35dd5ad62a87a654e9de",
  "source": {
    "blob": "8665646926aa906ea2dc54a0cb34b8fb656ece0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f32a35dd5ad62a87a654e9de9daa1e151143d71b36d9eb52eaa7fe5faa930cbf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:996ce370-a285-22e5-0314-3499183aeaa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_assoc (x y z : X[S⁻¹]) : x + y + z = x + (y + z) := by
  induction' x with r₁ s₁
  induction' y with r₂ s₂
  induction' z with r₃ s₃
  rcases oreDivAddChar' r₁ r₂ s₁ s₂ with ⟨ra, sa, ha, ha'⟩; rw [ha']; clear ha'
  rcases oreDivAddChar' (sa • r₁ + ra • r₂) r₃ (sa * s₁) s₃ with ⟨rc, sc, hc, q⟩; rw [q]; clear q
  simp only [smul_add, mul_assoc, add_assoc]
  simp_rw [← add_oreDiv, ← OreLocalization.expand']
  congr 2
  · rw [OreLocalization.expand r₂ s₂ ra (ha.symm ▸ (sa * s₁).2)]; congr; ext; exact ha
  · rw [OreLocalization.expand r₃ s₃ rc (hc.symm ▸ (sc * (sa * s₁)).2)]; congr; ext; exact hc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8665646926aa906ea2dc54a0cb34b8fb656ece0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
