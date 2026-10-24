# orderIsoSumLexPUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec9f101fa39ae7fd0e00f50864d2370e4d30e2b4962c62634608587ecfb06181",
  "kind": "def",
  "lexical_name": "orderIsoSumLexPUnit",
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
  "slug": "orderisosumlexpunit--6c4dd2784222e3677e63b8ee",
  "source": {
    "blob": "0bcade100617625029bbcc3eb946545c505e186a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 690,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb3d53ae7fee7dc1e3f6b8d5a86cb51afde66714ed5840567acbee784a7b5e10c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c4dd2784222e3677e63b8ee7e1588eb6b718a5fac2b32567f1831d78565f373",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb3d53ae7fee7dc1e3f6b8d5a86cb51afde66714ed5840567acbee784a7b5e10c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec9f101fa39ae7fd0e00f50864d2370e4d30e2b4962c62634608587ecfb06181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoSumLexPUnit : WithTop α ≃o α ⊕ₗ PUnit :=
  ⟨(Equiv.optionEquivSumPUnit α).trans toLex, fun {a b} => by
    simp only [Equiv.optionEquivSumPUnit, Option.elim, Equiv.trans_apply, Equiv.coe_fn_mk,
      Lex.toLex_le_toLex, le_refl, lex_inr_inr, le_top]
    cases a <;> cases b
    · simp only [lex_inr_inr, le_top]
    · simp only [lex_inr_inl, false_iff]
      exact not_top_le_coe _
    · simp only [Lex.sep, le_top]
    · simp only [lex_inl_inl, coe_le_coe]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb3d53ae7fee7dc1e3f6b8d5a86cb51afde66714ed5840567acbee784a7b5e10c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb3d53ae7fee7dc1e3f6b8d5a86cb51afde66714ed5840567acbee784a7b5e10c.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bcade100617625029bbcc3eb946545c505e186a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
