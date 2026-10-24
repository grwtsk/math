# BinaryFan.isLimitMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:187083cbc7f7d539af9b6b9585a442e6f7581370c02809516023364d158e5037",
  "kind": "def",
  "lexical_name": "BinaryFan.isLimitMk",
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
  "slug": "binaryfan-islimitmk--d2f48aefe3e3486dbfeb68db",
  "source": {
    "blob": "6d723944cda99b28f9a2cbf36dbc9a06f420e5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant8f1d755bcee9921bfc3427267936ad4229628f4bba4c540b3f1cd0e64874d4ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2f48aefe3e3486dbfeb68dbad8065dfe3aa33924e73e25f6f1254dfed75dc94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant8f1d755bcee9921bfc3427267936ad4229628f4bba4c540b3f1cd0e64874d4ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:187083cbc7f7d539af9b6b9585a442e6f7581370c02809516023364d158e5037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryFan.isLimitMk {W : C} {fst : W ⟶ X} {snd : W ⟶ Y} (lift : ∀ s : BinaryFan X Y, s.pt ⟶ W)
    (fac_left : ∀ s : BinaryFan X Y, lift s ≫ fst = s.fst)
    (fac_right : ∀ s : BinaryFan X Y, lift s ≫ snd = s.snd)
    (uniq :
      ∀ (s : BinaryFan X Y) (m : s.pt ⟶ W) (_ : m ≫ fst = s.fst) (_ : m ≫ snd = s.snd),
        m = lift s) :
    IsLimit (BinaryFan.mk fst snd) :=
  { lift := lift
    fac := fun s j => by
      rcases j with ⟨⟨⟩⟩
      exacts [fac_left s, fac_right s]
    uniq := fun s m w => uniq s m (w ⟨WalkingPair.left⟩) (w ⟨WalkingPair.right⟩) }

/-- This is a more convenient formulation to show that a `BinaryCofan` constructed using
`BinaryCofan.mk` is a colimit cocone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant8f1d755bcee9921bfc3427267936ad4229628f4bba4c540b3f1cd0e64874d4ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryFan/Variant8f1d755bcee9921bfc3427267936ad4229628f4bba4c540b3f1cd0e64874d4ef.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d723944cda99b28f9a2cbf36dbc9a06f420e5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
