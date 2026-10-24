# instLawfulMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6e5376bd0b118f2ab9371f296a38f323d143d2b0915f0e7d142dcdc9aac2465",
  "kind": "instance",
  "lexical_name": "instLawfulMonad",
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
  "slug": "instlawfulmonad--a0db94382d6f2669a56d5050",
  "source": {
    "blob": "29ad2b03899617812d30bfcbcc9f2eb83524d85c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 602,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0db94382d6f2669a56d5050b3bbb41f8464f992e9478a7c5cfbdc08ee43ab4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6e5376bd0b118f2ab9371f296a38f323d143d2b0915f0e7d142dcdc9aac2465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLawfulMonad : LawfulMonad FreeSemigroup.{u} := LawfulMonad.mk'
  (pure_bind := fun _ _ ↦ rfl)
  (bind_assoc := fun x g f ↦
    recOnPure x (fun _ ↦ rfl) fun x y ih1 ih2 ↦ by rw [mul_bind, mul_bind, mul_bind, ih1, ih2])
  (id_map := fun x ↦ recOnPure x (fun _ ↦ rfl) fun x y ih1 ih2 ↦ by rw [map_mul', ih1, ih2])

/-- `FreeSemigroup` is traversable. -/
@[to_additive "`FreeAddSemigroup` is traversable."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ad2b03899617812d30bfcbcc9f2eb83524d85c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
