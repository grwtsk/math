# surjective_liftOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2061db71-2e38-397a-cb51-fe2c830862d7",
  "kind": "lemma",
  "lexical_name": "surjective_liftOn'",
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
  "slug": "surjective-lifton--9c150da45f8a55e3f7d3a6ac",
  "source": {
    "blob": "7640ea28751428e78f6a1131e840e5dc77afc399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 636,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c150da45f8a55e3f7d3a6ac4a277824ac4c124ea3463b6b028b80945936e665",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2061db71-2e38-397a-cb51-fe2c830862d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma surjective_liftOn' {f : α → φ} (h) :
    Function.Surjective (λ x : Quotient s₁ => x.liftOn' f h) ↔ Function.Surjective f :=
  Quot.surjective_lift _
#align quotient.surjective_lift_on' Quotient.surjective_liftOn'

/-- A version of `Quotient.liftOn₂` taking `{s₁ : Setoid α} {s₂ : Setoid β}` as implicit arguments
instead of instance arguments. -/
-- porting note: removed `@[elab_as_elim]` because it gave "unexpected eliminator resulting type"
-- porting note: removed `@[reducible]` because it caused extremely slow `simp`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantb191e4d4312aa4e67ff3f05f50b91e4a012ca613ca913caa0281e593e0cbb06e.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7640ea28751428e78f6a1131e840e5dc77afc399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
