# MonadAttach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dd6dd0a358b53908f6adee4d77411d99d148bf772a122ffe450cdda93f05760",
  "kind": "class",
  "lexical_name": "MonadAttach",
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
  "slug": "monadattach--7e004f4f8b725bb2a0024941",
  "source": {
    "blob": "209cdd6571f6d67e75ce24f9c5e0f1cdd341b608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e004f4f8b725bb2a002494105c33ece3dd0650e4a06458e1a471e33833c1fbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dd6dd0a358b53908f6adee4d77411d99d148bf772a122ffe450cdda93f05760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public class MonadAttach (m : Type u → Type v) where
  /--
  A predicate that can be assumed to be true for all return values {name}`a` of actions {name}`x`
  in {name}`m`, in all situations.
  -/
  CanReturn {α : Type u} : (x : m α) → (a : α) → Prop
  /--
  Attaches a proof of {name}`MonadAttach.CanReturn` to the return value of {name}`x`. This proof
  can be used to prove the termination of well-founded recursive functions.
  -/
  attach {α : Type u} (x : m α) : m (Subtype (CanReturn x))

-- verso docstring is added below
set_option linter.missingDocs false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant4993ab8a47c4bcdb7fb771757683691d06c60449458a6912b15cff552af9e730.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209cdd6571f6d67e75ce24f9c5e0f1cdd341b608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
