# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f07caee8c42b41fb88f36d600330a79e6ce5ba04b9c63a0a4fb6fb8d5621ea1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--974a104b790648aabfb0fd41",
  "source": {
    "blob": "9dfe9e79059d31c1ef68e3f2f21b033267bc66d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:974a104b790648aabfb0fd41b4ea285740467ef1432ccca1500330b7c57ea53f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f07caee8c42b41fb88f36d600330a79e6ce5ba04b9c63a0a4fb6fb8d5621ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (m) [Monad m] [LawfulMonad m] : LawfulAlternative (OptionT m) where
  map_failure _ := pure_bind _ _
  failure_seq _ := pure_bind _ _
  orElse_failure x := (bind_congr (fun | some _ => rfl | none => rfl)).trans (bind_pure x)
  failure_orElse _ := pure_bind _ _
  orElse_assoc _ _ _ := by
    simp only [OptionT.ext_iff, run_orElse, Option.elimM, bind_assoc]
    refine bind_congr fun | some _ => by simp | none => rfl
  map_orElse x y f := by
    simp only [OptionT.ext_iff, run_map, run_orElse, map_bind, bind_map_left, Option.elimM]
    refine bind_congr fun | some _ => by simp | none => rfl

end OptionT

namespace StateT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dfe9e79059d31c1ef68e3f2f21b033267bc66d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
