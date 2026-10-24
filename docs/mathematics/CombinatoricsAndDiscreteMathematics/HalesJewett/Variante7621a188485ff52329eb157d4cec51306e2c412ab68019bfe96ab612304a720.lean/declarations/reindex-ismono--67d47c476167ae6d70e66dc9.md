# reindex_isMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aac586c8-a5d5-ab92-3c01-475d4d6e0fa0",
  "kind": "lemma",
  "lexical_name": "reindex_isMono",
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
  "slug": "reindex-ismono--67d47c476167ae6d70e66dc9",
  "source": {
    "blob": "452ed13dd21ec9e0eb7c76bd4c016401a32f1307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67d47c476167ae6d70e66dc965fce081b9f3c0f34308979da97d7ae98e10defd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac586c8-a5d5-ab92-3c01-475d4d6e0fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma reindex_isMono {eη : η ≃ η'} {eα : α ≃ α'} {eι : ι ≃ ι'} {C : (ι' → α') → κ} :
    (l.reindex eη eα eι).IsMono C ↔ l.IsMono fun x ↦ C <| eα ∘ x ∘ eι.symm := by
  simp only [IsMono, funext (reindex_apply _ _ _ _ _), coe_apply]
  exact exists_congr fun c ↦ (eη.arrowCongr eα).symm.forall_congr <| by aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variante7621a188485ff52329eb157d4cec51306e2c412ab68019bfe96ab612304a720.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452ed13dd21ec9e0eb7c76bd4c016401a32f1307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
