# mono_precomp_mk₀_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:126d5cbe-84d5-d632-9175-c1ec4759ffa2",
  "kind": "lemma",
  "lexical_name": "mono_precomp_mk₀_of_epi",
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
  "slug": "mono-precomp-mk-of-epi--2f1d865f74eaa590859ebe8e",
  "source": {
    "blob": "7262fa8ac56d8a705a4ca6d11089422b35f89b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant035c9ece82a191f723e8119c6b0d01ad44574ec5629e6b4f949b352ede3b301b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1d865f74eaa590859ebe8e51f0c5ad4b7d22f8b1aee48c64c4b32b9bf1484f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant035c9ece82a191f723e8119c6b0d01ad44574ec5629e6b4f949b352ede3b301b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:126d5cbe-84d5-d632-9175-c1ec4759ffa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_precomp_mk₀_of_epi (L : C) {M N : C} (g : M ⟶ N) [hg : Epi g] :
    Mono (AddCommGrpCat.ofHom <| (Ext.mk₀ g).precomp L (zero_add 0)) :=
  (AddCommGrpCat.mono_iff_injective _).mpr (precomp_mk₀_injective_of_epi L g)

variable {Y} in
/-- The standard connecting homomorphism `Ext S.X₁ Y n₀ →+ Ext S.X₃ Y n₁`
for the contravariant long sequence of `Ext` when `n₀ + 1 = n₁` and `S` is a
short exact sequence. This definition should be consistent with [conrad2000].
It is obtained by multiplying by `(-1) ^ n₁` the precomposition
with `hS.extClass : Ext S.X₃ X₁ 1`. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant035c9ece82a191f723e8119c6b0d01ad44574ec5629e6b4f949b352ede3b301b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant035c9ece82a191f723e8119c6b0d01ad44574ec5629e6b4f949b352ede3b301b.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7262fa8ac56d8a705a4ca6d11089422b35f89b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
