# BinaryFan.isLimitMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:753fa9b326496bdf5c2c836df5365e5633e006363aa51e51ba1197dfe3b708f2",
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
  "slug": "binaryfan-islimitmk--c1999ad305c3185a85791e46",
  "source": {
    "blob": "d37bd955f38a3e476ad5121d1db346d4c969a9c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1999ad305c3185a85791e465e640737c600fe726c34528f004333dbfe7dc996",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:753fa9b326496bdf5c2c836df5365e5633e006363aa51e51ba1197dfe3b708f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–343.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37bd955f38a3e476ad5121d1db346d4c969a9c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
