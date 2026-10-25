# permEquivOneHotPermutationMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:944f862e860d46cae308676d95196782256a9ed9875cfbe9c2735cbea38034ad",
  "kind": "def",
  "lexical_name": "permEquivOneHotPermutationMatrix",
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
  "slug": "permequivonehotpermutationmatrix--8e7758d2ce704740657a2dc1",
  "source": {
    "blob": "bc36fd64350981ecf4760e9c85f7c545cd0769ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e7758d2ce704740657a2dc12c75541a3c279e97b0422567957293d891c4fa0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:944f862e860d46cae308676d95196782256a9ed9875cfbe9c2735cbea38034ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def permEquivOneHotPermutationMatrix :
    Equiv.Perm X ≃ OneHotPermutationMatrix X where
  toFun := ofPerm
  invFun := toPerm
  left_inv := toPerm_ofPerm
  right_inv := fun representation => by
    apply Subtype.ext
    exact (matrix_eq_permutationMatrix_toPerm representation).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc36fd64350981ecf4760e9c85f7c545cd0769ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
