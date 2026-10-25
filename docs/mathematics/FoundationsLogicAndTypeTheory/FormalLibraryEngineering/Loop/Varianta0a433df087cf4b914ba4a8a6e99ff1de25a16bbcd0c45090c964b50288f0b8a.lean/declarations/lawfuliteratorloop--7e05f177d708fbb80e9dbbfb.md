# LawfulIteratorLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad8e284a20d8875fe861ca5674cc3269dbecda7e6f51cd480fd63f225e2374d5",
  "kind": "class",
  "lexical_name": "LawfulIteratorLoop",
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
  "slug": "lawfuliteratorloop--7e05f177d708fbb80e9dbbfb",
  "source": {
    "blob": "676e7f3761eb5ede32612fb091ed3b0b557ddc86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Varianta0a433df087cf4b914ba4a8a6e99ff1de25a16bbcd0c45090c964b50288f0b8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e05f177d708fbb80e9dbbfb659c6084c900b7ba68becddbc22542dd7fa92399",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Varianta0a433df087cf4b914ba4a8a6e99ff1de25a16bbcd0c45090c964b50288f0b8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad8e284a20d8875fe861ca5674cc3269dbecda7e6f51cd480fd63f225e2374d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulIteratorLoop (α : Type w) (m : Type w → Type w') (n : Type x → Type x')
    [Monad m] [Monad n] [Iterator α m β] [i : IteratorLoop α m n] where
  /-- The implementation of `IteratorLoop.forIn` in `i` is equal to the default implementation. -/
  lawful lift [LawfulMonadLiftBindFunction lift] γ it init
      (Pl : β → γ → ForInStep γ → Prop) (wf : IteratorLoop.WellFounded α m Pl)
      (f : (b : β) → it.IsPlausibleIndirectOutput b → (c : γ) → n (Subtype (Pl b c))) :
    i.forIn lift γ Pl it init f =
      IteratorLoop.defaultImplementation.forIn lift γ Pl it init f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Varianta0a433df087cf4b914ba4a8a6e99ff1de25a16bbcd0c45090c964b50288f0b8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Varianta0a433df087cf4b914ba4a8a6e99ff1de25a16bbcd0c45090c964b50288f0b8a.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `676e7f3761eb5ede32612fb091ed3b0b557ddc86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
