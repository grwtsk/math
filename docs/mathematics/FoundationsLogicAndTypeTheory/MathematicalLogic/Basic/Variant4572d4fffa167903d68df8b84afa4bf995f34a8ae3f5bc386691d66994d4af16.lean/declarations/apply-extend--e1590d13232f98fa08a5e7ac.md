# apply_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6567a08b-7007-2f60-e3b3-98dbe0debbd9",
  "kind": "lemma",
  "lexical_name": "apply_extend",
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
  "slug": "apply-extend--e1590d13232f98fa08a5e7ac",
  "source": {
    "blob": "11a5f45dac3a591e6bd9c2f95d0be42928eb4e48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 712,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4572d4fffa167903d68df8b84afa4bf995f34a8ae3f5bc386691d66994d4af16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1590d13232f98fa08a5e7ac8bef599d36a48015d42b74738928fdbc86a9c877",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4572d4fffa167903d68df8b84afa4bf995f34a8ae3f5bc386691d66994d4af16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6567a08b-7007-2f60-e3b3-98dbe0debbd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_extend {δ} {g : α → γ} (F : γ → δ) (f : α → β) (e' : β → γ) (b : β) :
    F (extend f g e' b) = extend f (F ∘ g) (F ∘ e') b :=
  open scoped Classical in apply_dite F _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4572d4fffa167903d68df8b84afa4bf995f34a8ae3f5bc386691d66994d4af16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4572d4fffa167903d68df8b84afa4bf995f34a8ae3f5bc386691d66994d4af16.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a5f45dac3a591e6bd9c2f95d0be42928eb4e48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
