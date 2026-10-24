# ofMulActionLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbde37ab4bb52bb7adb31880feaa0abf5618c131f7b0e683449048bf2e389a4a",
  "kind": "def",
  "lexical_name": "ofMulActionLimitCone",
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
  "slug": "ofmulactionlimitcone--56988abe321f8da91bd3943b",
  "source": {
    "blob": "7ee52b4a86599b16832f7d5d738c8a78e511b4e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56988abe321f8da91bd3943b5f56d836fbace84c882cec2c8897e21fd8b8e05a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbde37ab4bb52bb7adb31880feaa0abf5618c131f7b0e683449048bf2e389a4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMulActionLimitCone {ι : Type v} (G : Type max v u) [Monoid G] (F : ι → Type max v u)
    [∀ i : ι, MulAction G (F i)] :
    LimitCone (Discrete.functor fun i : ι => Action.ofMulAction G (F i)) where
  cone :=
    { pt := Action.ofMulAction G (∀ i : ι, F i)
      π := Discrete.natTrans (fun i => ⟨↾fun x => x i.as, fun _ => rfl⟩) }
  isLimit :=
    { lift := fun s =>
        { hom := ↾fun x i => (s.π.app ⟨i⟩).hom x
          comm := fun g => by
            ext x
            funext j
            exact ConcreteCategory.congr_hom ((s.π.app ⟨j⟩).comm g) x }
      fac := fun _ _ => rfl
      uniq := fun s f h => by
        ext x
        funext j
        dsimp at *
        rw [← h ⟨j⟩]
        rfl }

/-- The `G`-set `G`, acting on itself by left multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee52b4a86599b16832f7d5d738c8a78e511b4e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
