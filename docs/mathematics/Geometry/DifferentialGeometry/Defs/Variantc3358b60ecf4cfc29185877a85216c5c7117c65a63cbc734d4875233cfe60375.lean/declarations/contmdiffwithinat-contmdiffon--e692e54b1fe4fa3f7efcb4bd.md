# ContMDiffWithinAt.contMDiffOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0342746f-cad9-6117-321c-cd1633c07a25",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.contMDiffOn'",
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
  "slug": "contmdiffwithinat-contmdiffon--e692e54b1fe4fa3f7efcb4bd",
  "source": {
    "blob": "a09ef88902e31effc13a32653c4edc052505d3be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 822,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e692e54b1fe4fa3f7efcb4bd8865c248849f181e8ba776c7b13dbfb27c8a177f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0342746f-cad9-6117-321c-cd1633c07a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffWithinAt.contMDiffOn'
    [IsManifold I n M] [IsManifold I' n M']
    (hm : m ≤ n) (h' : m = ∞ → n = ω)
    (h : ContMDiffWithinAt I I' n f s x) :
    ∃ u, IsOpen u ∧ x ∈ u ∧ ContMDiffOn I I' m f (insert x s ∩ u) := by
  have : IsManifold I m M := .of_le hm
  have : IsManifold I' m M' := .of_le hm
  match m with
  | (m : ℕ) | ω =>
    rcases (contMDiffWithinAt_iff_contMDiffOn_nhds (by simp)).1 (h.of_le hm) with ⟨t, ht, h't⟩
    rcases mem_nhdsWithin.1 ht with ⟨u, u_open, xu, hu⟩
    rw [inter_comm] at hu
    exact ⟨u, u_open, xu, h't.mono hu⟩
  | ∞ =>
    rcases (contMDiffWithinAt_iff_contMDiffOn_nhds (by simp [h'])).1 h with ⟨t, ht, h't⟩
    rcases mem_nhdsWithin.1 ht with ⟨u, u_open, xu, hu⟩
    rw [inter_comm] at hu
    exact ⟨u, u_open, xu, (h't.mono hu).of_le hm⟩

/-- If a function is `C^m` within a set at a point, for some finite `m`, then it is `C^m` within
this set on a neighborhood of the basepoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09ef88902e31effc13a32653c4edc052505d3be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
