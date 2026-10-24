# descMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd7b6e96f08254c55220969277320a9aa77439285a4acf99d496108170061bcf",
  "kind": "def",
  "lexical_name": "descMorphism",
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
  "slug": "descmorphism--f433860dc0e572a0b7269edf",
  "source": {
    "blob": "885f6fc4706089197c6dd7d6106c9ebc746a43a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 312,
    "path": "GRWTSK/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f433860dc0e572a0b7269edf7ddef84ffa7686102c9cc13e9f5a58a769fe9026",
  "verification": {
    "reference": "docs/verification/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd7b6e96f08254c55220969277320a9aa77439285a4acf99d496108170061bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descMorphism (s : Cocone F) : colimit F ⟶ s.pt where
  toFun := descFun F s
  map_one' := rfl
  map_zero' := rfl
  map_add' x y := by
    refine Quot.induction_on₂ x y fun a b => ?_
    dsimp [descFun, (· + ·)]
    rw [←quot_add]
    rfl
  map_mul' x y := by exact Quot.induction_on₂ x y fun a b => rfl
#align CommRing.colimits.desc_morphism CommRingCat.Colimits.descMorphism

/-- Evidence that the proposed colimit is the colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `885f6fc4706089197c6dd7d6106c9ebc746a43a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
