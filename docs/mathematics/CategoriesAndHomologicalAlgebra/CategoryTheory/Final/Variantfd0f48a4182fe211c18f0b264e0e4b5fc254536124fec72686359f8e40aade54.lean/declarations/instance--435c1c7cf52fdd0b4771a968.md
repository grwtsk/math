# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1781e970acd35863b4dbe3f728b821aa7c06d992c43683fe5582bdaae89fc775",
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
  "slug": "instance--435c1c7cf52fdd0b4771a968",
  "source": {
    "blob": "c9a8f23f3161de99f3fe0208ecfa2eef43ee15f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 955,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:435c1c7cf52fdd0b4771a968f99de42dd21ef7d14d7716f782308dd38d0ec607",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1781e970acd35863b4dbe3f728b821aa7c06d992c43683fe5582bdaae89fc775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [HasTerminal C] {D : Type u₂} [Category.{v₂} D] (F : C ⥤ D)
    [PreservesLimit (Functor.empty.{0} C) F] : F.Final :=
  have : (fromPUnit.{0} (⊤_ C)).Final := final_fromPUnit_of_isTerminal terminalIsTerminal
  have : (fromPUnit.{0} (F.obj (⊤_ C))).Final := final_fromPUnit_of_isTerminal
    (terminalIsTerminal.isTerminalObj F (⊤_ C))
  have : ((fromPUnit.{0} (⊤_ C)) ⋙ F).Final := final_of_natIso (F := fromPUnit.{0} (F.obj (⊤_ C)))
    (Discrete.natIso (fun _ => Iso.refl _))
  final_of_final_comp (fromPUnit.{0} (⊤_ C)) F

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantfd0f48a4182fe211c18f0b264e0e4b5fc254536124fec72686359f8e40aade54.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a8f23f3161de99f3fe0208ecfa2eef43ee15f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
