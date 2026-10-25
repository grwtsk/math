# BundledIterM.step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f04ff86975ddb5614ead9a59a1df537e334edbb675929ec457f5614c1f0ac6d1",
  "kind": "def",
  "lexical_name": "BundledIterM.step",
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
  "slug": "bundlediterm-step--06f186875d4bec0adb4d8968",
  "source": {
    "blob": "0fe99b28d103aec8a5365cce38f6441adbcc71f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06f186875d4bec0adb4d8968db14c0209b13bcc4ca982ff5a111d87db3503872",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f04ff86975ddb5614ead9a59a1df537e334edbb675929ec457f5614c1f0ac6d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def BundledIterM.step {β : Type w} {m : Type w → Type w'} [Monad m] [LawfulMonad m]
    (it : BundledIterM m β) :
    HetT m (IterStep (BundledIterM m β) β) :=
  (IterM.stepAsHetT it.iterator).map (IterStep.mapIterator BundledIterM.ofIterM)

/--
Equivalence relation on bundled iterators.

Two bundled iterators are equivalent if they have the same `Iterator.IsPlausibleStep` relation
and their step functions are the same *up to equivalence of the successor iterators*. This
coinductive definition captures the idea that the only relevant feature of an iterator is its step
function. Other information retrievable from the iterator -- for example, whether it is a list
iterator or an array iterator -- is totally irrelevant for the equivalence judgement.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe99b28d103aec8a5365cce38f6441adbcc71f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
