# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f916a166cf1a905ef814d038167fd8c60304348468b3d297b263a8297b1731c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5c5664a3c4015d39eb7c4af9",
  "source": {
    "blob": "00131faee0fb2f56a6c5e914b7396e43137b42a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c5664a3c4015d39eb7c4af9dabf0ab30f57693d7803864710a98b20c71cb928",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f916a166cf1a905ef814d038167fd8c60304348468b3d297b263a8297b1731c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : ExplicitDisjoint (triangleIndices s : Finset (α × α × α)) where
  inj₀ := by
    simp only [mem_triangleIndices, Prod.mk_inj, exists_prop, forall_exists_index, and_imp]
    rintro _ _ _ _ x a ha rfl rfl rfl y b hb rfl h₁ h₂
    linear_combination 2 * h₁.symm - h₂.symm
  inj₁ := by
    simp only [mem_triangleIndices, Prod.mk_inj, exists_prop, forall_exists_index, and_imp]
    rintro _ _ _ _ x a ha rfl rfl rfl y b hb rfl rfl h
    simpa [(Fact.out (p := IsUnit (2 : α))).mul_right_inj, eq_comm] using h
  inj₂ := by
    simp only [mem_triangleIndices, Prod.mk_inj, exists_prop, forall_exists_index, and_imp]
    rintro _ _ _ _ x a ha rfl rfl rfl y b hb rfl h rfl
    simpa [(Fact.out (p := IsUnit (2 : α))).mul_right_inj, eq_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00131faee0fb2f56a6c5e914b7396e43137b42a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
