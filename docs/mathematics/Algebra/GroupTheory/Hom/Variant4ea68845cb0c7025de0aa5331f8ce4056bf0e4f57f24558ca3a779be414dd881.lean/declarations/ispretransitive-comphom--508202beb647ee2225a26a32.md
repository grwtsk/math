# isPretransitive_compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:298aacbf-c3f2-a23b-1478-b0b0b96f259b",
  "kind": "lemma",
  "lexical_name": "isPretransitive_compHom",
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
  "slug": "ispretransitive-comphom--508202beb647ee2225a26a32",
  "source": {
    "blob": "b3a78aa1913dcb4014eb1ccb5e90542d16b6e209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:508202beb647ee2225a26a329bb8981c63e931ae28b770bd45634d698cbcf372",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:298aacbf-c3f2-a23b-1478-b0b0b96f259b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPretransitive_compHom {E F G : Type*} [Monoid E] [Monoid F] [MulAction F G]
    [IsPretransitive F G] {f : E →* F} (hf : Surjective f) :
    letI : MulAction E G := MulAction.compHom _ f
    IsPretransitive E G := by
  let _ : MulAction E G := MulAction.compHom _ f
  refine ⟨fun x y ↦ ?_⟩
  obtain ⟨m, rfl⟩ : ∃ m : F, m • x = y := exists_smul_eq F x y
  obtain ⟨e, rfl⟩ : ∃ e, f e = m := hf m
  exact ⟨e, rfl⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a78aa1913dcb4014eb1ccb5e90542d16b6e209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
