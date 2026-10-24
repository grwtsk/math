# rtendsto_iff_le_rcomap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2f1436-05d1-bff9-35a1-88e51fc59870",
  "kind": "theorem",
  "lexical_name": "rtendsto_iff_le_rcomap",
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
  "slug": "rtendsto-iff-le-rcomap--e29977489be4579fd81eefce",
  "source": {
    "blob": "e1c952f4ea401743a475f2c0df802638a62720a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e29977489be4579fd81eefce8f786434c9a99f711262ced74b0c84fe70511caf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2f1436-05d1-bff9-35a1-88e51fc59870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rtendsto_iff_le_rcomap (r : Rel α β) (l₁ : Filter α) (l₂ : Filter β) :
    RTendsto r l₁ l₂ ↔ l₁ ≤ l₂.rcomap r := by
  rw [rtendsto_def]
  simp_rw [← l₂.mem_sets]
  constructor
  · simpa [Filter.le_def, rcomap, Rel.mem_image] using fun h s t tl₂ => mem_of_superset (h t tl₂)
  · simpa [Filter.le_def, rcomap, Rel.mem_image] using fun h t tl₂ => h _ t tl₂ Set.Subset.rfl

-- Interestingly, there does not seem to be a way to express this relation using a forward map.
-- Given a filter `f` on `α`, we want a filter `f'` on `β` such that `r.preimage s ∈ f` if
-- and only if `s ∈ f'`. But the intersection of two sets satisfying the lhs may be empty.
/-- One way of taking the inverse map of a filter under a relation. Generalization of `Filter.comap`
to relations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c952f4ea401743a475f2c0df802638a62720a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
