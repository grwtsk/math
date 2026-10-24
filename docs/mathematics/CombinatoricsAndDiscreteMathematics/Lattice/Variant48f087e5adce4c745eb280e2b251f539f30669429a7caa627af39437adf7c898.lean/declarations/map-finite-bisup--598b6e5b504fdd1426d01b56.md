# map_finite_biSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1a7849c-13d6-37c5-a5d9-7da97bd708b8",
  "kind": "lemma",
  "lexical_name": "map_finite_biSup",
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
  "slug": "map-finite-bisup--598b6e5b504fdd1426d01b56",
  "source": {
    "blob": "e9ff8ed57e702c7db85d717532a24af91644d78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598b6e5b504fdd1426d01b56162cd7b18bda5c524452e5818f9114002db369fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1a7849c-13d6-37c5-a5d9-7da97bd708b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_finite_biSup {F ι : Type*} [CompleteLattice α] [CompleteLattice β] [FunLike F α β]
    [SupBotHomClass F α β] {s : Set ι} (hs : s.Finite) (f : F) (g : ι → α) :
    f (⨆ x ∈ s, g x) = ⨆ x ∈ s, f (g x) := by
  have := map_finset_sup f hs.toFinset g
  simp only [Finset.sup_eq_iSup, hs.mem_toFinset, comp_apply] at this
  exact this

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ff8ed57e702c7db85d717532a24af91644d78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
