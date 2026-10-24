# factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2963c34e698a838551f422a8f6317c37030d072b3856546d09f73a71636e1014",
  "kind": "def",
  "lexical_name": "factors",
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
  "slug": "factors--eafc12ba424f95e139a410d4",
  "source": {
    "blob": "5a632ba834bc4615833f952e11e8745f1bcc9bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eafc12ba424f95e139a410d41e67a8669e98a48bb66fab992fe1f0d57900a3c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2963c34e698a838551f422a8f6317c37030d072b3856546d09f73a71636e1014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def factors (a : Associates α) : FactorSet α := by
  classical refine if h : a = 0 then ⊤ else Quotient.hrecOn a (fun x _ => factors' x) ?_ h
  intro a b hab
  apply Function.hfunext
  · have : a ~ᵤ 0 ↔ b ~ᵤ 0 := Iff.intro (fun ha0 => hab.symm.trans ha0) fun hb0 => hab.trans hb0
    simp only [associated_zero_iff_eq_zero] at this
    simp only [quotient_mk_eq_mk, this, mk_eq_zero]
  exact fun ha hb _ => heq_of_eq <| congr_arg some <| factors'_cong hab

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variant58f16d1ff65f6f712c3d7cce9bfb58a0f1fbf57f58ff57b586010e243f8b70e9.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a632ba834bc4615833f952e11e8745f1bcc9bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
