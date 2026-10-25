# IterM.Intermediate.dropWhileWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0547957daddcd88f276df08f1d48720000f0a3ed2723290c70e6ff5b922bab70",
  "kind": "def",
  "lexical_name": "IterM.Intermediate.dropWhileWithPostcondition",
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
  "slug": "iterm-intermediate-dropwhilewithpostcondition--9250c0be45b6389f18dab138",
  "source": {
    "blob": "ce8f532852b5e10e630a429e994839aae45b37c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9250c0be45b6389f18dab138353e2d401143cdd6ad4b106a389b546eb4d3e0e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0547957daddcd88f276df08f1d48720000f0a3ed2723290c70e6ff5b922bab70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.Intermediate.dropWhileWithPostcondition (P : β → PostconditionT m (ULift Bool))
    (dropping : Bool) (it : IterM (α := α) m β) :=
  (⟨Iterators.Types.DropWhile.mk (P := P) dropping it⟩ : IterM m β)

/--
Constructs intermediate states of an iterator created with the combinator `IterM.dropWhileM`.
When `it.dropWhileM P` has stopped dropping elements, its new state cannot be created
directly with `IterM.dropWhileM` but only with `Intermediate.dropWhileM`.

`Intermediate.dropWhileM` is meant to be used only for internally or for verification purposes.
-/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8f532852b5e10e630a429e994839aae45b37c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
