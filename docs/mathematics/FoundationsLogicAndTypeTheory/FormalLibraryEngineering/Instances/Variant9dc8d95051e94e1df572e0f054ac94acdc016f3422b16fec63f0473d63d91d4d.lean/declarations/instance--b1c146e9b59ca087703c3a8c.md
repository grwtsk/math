# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52ae777e52452de70a124fb6b590c3194fa27175d9467da2f7a360894a4e977c",
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
  "slug": "instance--b1c146e9b59ca087703c3a8c",
  "source": {
    "blob": "8553e840e88cc131fde6e24989a16cdc64a7a3bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9dc8d95051e94e1df572e0f054ac94acdc016f3422b16fec63f0473d63d91d4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1c146e9b59ca087703c3a8cc9021ec651831a6a0478e360ad5dc97a2b23eb9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9dc8d95051e94e1df572e0f054ac94acdc016f3422b16fec63f0473d63d91d4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52ae777e52452de70a124fb6b590c3194fa27175d9467da2f7a360894a4e977c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance [Monad m] [LawfulMonad m] [MonadAttach m] [LawfulMonadAttach m] :
    LawfulMonadAttach (ExceptT ε m) where
  canReturn_map_imp {α P x a} := by
    simp only [Functor.map, MonadAttach.CanReturn, ExceptT.map, ExceptT.mk]
    let x' := (fun a => show Subtype (fun a : Except _ _ => match a with | .ok a => P a | .error e => True) from ⟨match a with | .ok a => .ok a.1 | .error e => .error e, by cases a <;> simp [Subtype.property]⟩) <$> show m _ from x
    have := LawfulMonadAttach.canReturn_map_imp (m := m) (x := x') (a := .ok a)
    simp only at this
    intro h
    apply this
    simp only [x', map_eq_pure_bind, bind_assoc]
    refine cast ?_ h
    congr 1
    apply bind_congr; intro a
    split <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9dc8d95051e94e1df572e0f054ac94acdc016f3422b16fec63f0473d63d91d4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9dc8d95051e94e1df572e0f054ac94acdc016f3422b16fec63f0473d63d91d4d.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8553e840e88cc131fde6e24989a16cdc64a7a3bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
