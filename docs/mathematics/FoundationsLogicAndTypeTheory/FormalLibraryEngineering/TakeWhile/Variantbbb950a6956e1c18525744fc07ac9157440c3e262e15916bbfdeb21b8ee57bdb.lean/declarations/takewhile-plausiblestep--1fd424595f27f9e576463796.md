# TakeWhile.PlausibleStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fafe7195e4ed5839a123aa2961c2e742b50ec5ef67c86ef18a121bff5d950da8",
  "kind": "inductive",
  "lexical_name": "TakeWhile.PlausibleStep",
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
  "slug": "takewhile-plausiblestep--1fd424595f27f9e576463796",
  "source": {
    "blob": "83edc6fa9f5e557c85ab815c95069b378e89fb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fd424595f27f9e57646379695c8684e8baed13adc218e25d712e6beb8aaccaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fafe7195e4ed5839a123aa2961c2e742b50ec5ef67c86ef18a121bff5d950da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TakeWhile.PlausibleStep [Iterator α m β] {P} (it : IterM (α := TakeWhile α m β P) m β) :
    (step : IterStep (IterM (α := TakeWhile α m β P) m β) β) → Prop where
  | yield : ∀ {it' out}, it.internalState.inner.IsPlausibleStep (.yield it' out) →
      (P out).Property (.up true) → PlausibleStep it (.yield (it'.takeWhileWithPostcondition P) out)
  | skip : ∀ {it'}, it.internalState.inner.IsPlausibleStep (.skip it') →
      PlausibleStep it (.skip (it'.takeWhileWithPostcondition P))
  | done : it.internalState.inner.IsPlausibleStep .done → PlausibleStep it .done
  | rejected : ∀ {it' out}, it.internalState.inner.IsPlausibleStep (.yield it' out) →
      (P out).Property (.up false) → PlausibleStep it .done

@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83edc6fa9f5e557c85ab815c95069b378e89fb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
