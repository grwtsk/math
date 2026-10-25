# Take.PlausibleStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29aa729aba5a2065296a08674f72bf8dfd76de4168e3f45f48112a225a23ac48",
  "kind": "inductive",
  "lexical_name": "Take.PlausibleStep",
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
  "slug": "take-plausiblestep--fe85bdaa893a41d1a0168866",
  "source": {
    "blob": "dde233eb2824b26c80b25d29b6a53f6ea574ac46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe85bdaa893a41d1a01688669e576617b15126a9b90a8af69a877c9cb4b2a2db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29aa729aba5a2065296a08674f72bf8dfd76de4168e3f45f48112a225a23ac48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Take.PlausibleStep [Iterator α m β] (it : IterM (α := Take α m) m β) :
    (step : IterStep (IterM (α := Take α m) m β) β) → Prop where
  | yield : ∀ {it' out}, it.internalState.inner.IsPlausibleStep (.yield it' out) →
      (h : it.internalState.countdown ≠ 1) → PlausibleStep it (.yield ⟨it.internalState.countdown - 1, it', it.internalState.finite.imp_left (by omega)⟩ out)
  | skip : ∀ {it'}, it.internalState.inner.IsPlausibleStep (.skip it') →
      it.internalState.countdown ≠ 1 → PlausibleStep it (.skip ⟨it.internalState.countdown, it', it.internalState.finite⟩)
  | done : it.internalState.inner.IsPlausibleStep .done → PlausibleStep it .done
  | depleted : it.internalState.countdown = 1 →
      PlausibleStep it .done

@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde233eb2824b26c80b25d29b6a53f6ea574ac46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
