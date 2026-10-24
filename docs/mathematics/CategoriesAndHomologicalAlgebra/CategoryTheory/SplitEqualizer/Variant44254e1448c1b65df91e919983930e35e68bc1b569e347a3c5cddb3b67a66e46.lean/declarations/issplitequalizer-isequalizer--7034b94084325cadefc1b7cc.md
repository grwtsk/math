# IsSplitEqualizer.isEqualizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a63ee894b5f1a4097e97099be77a5c151b9ad20bd7eb0f1750005eb6ae36e1b7",
  "kind": "def",
  "lexical_name": "IsSplitEqualizer.isEqualizer",
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
  "slug": "issplitequalizer-isequalizer--7034b94084325cadefc1b7cc",
  "source": {
    "blob": "d8356e773e8712885ca5087ffdccc766e305ad53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7034b94084325cadefc1b7ccc0320287e18146fcf7ab42cfca9dcb93753b0c78",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a63ee894b5f1a4097e97099be77a5c151b9ad20bd7eb0f1750005eb6ae36e1b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSplitEqualizer.isEqualizer {W : C} {h : W ⟶ X} (t : IsSplitEqualizer f g h) :
    IsLimit t.asFork :=
  Fork.IsLimit.mk' _ fun s =>
    ⟨ s.ι ≫ t.leftRetraction,
      by simp [- top_rightRetraction, ← t.top_rightRetraction, s.condition_assoc],
      fun hm => by simp [← hm] ⟩

end
variable (f g)

/--
The pair `f,g` is a cosplit pair if there is an `h : W ⟶ X` so that `f, g, h` forms a split
equalizer in `C`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitEqualizer/Variant44254e1448c1b65df91e919983930e35e68bc1b569e347a3c5cddb3b67a66e46.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8356e773e8712885ca5087ffdccc766e305ad53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
