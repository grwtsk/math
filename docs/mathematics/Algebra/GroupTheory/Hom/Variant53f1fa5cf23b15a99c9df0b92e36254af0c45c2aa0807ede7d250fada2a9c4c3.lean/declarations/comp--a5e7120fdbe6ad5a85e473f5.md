# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af3301fb915f0aafde923ac0fa47c0cb4bf84ad2af86527233407507612a4d13",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--a5e7120fdbe6ad5a85e473f5",
  "source": {
    "blob": "b3fabf4e16a964813870929bd330676eaddf6ef9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 183,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5e7120fdbe6ad5a85e473f5b5f1a082c81038803983afb0d87a497d11cfe8c2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af3301fb915f0aafde923ac0fa47c0cb4bf84ad2af86527233407507612a4d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp (hnp : β →*₀ γ) (hmn : α →*₀ β) : α →*₀ γ where
  toFun := hnp ∘ hmn
  map_zero' := by rw [comp_apply, map_zero, map_zero]
  map_one' := by simp
  map_mul' := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant53f1fa5cf23b15a99c9df0b92e36254af0c45c2aa0807ede7d250fada2a9c4c3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3fabf4e16a964813870929bd330676eaddf6ef9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
