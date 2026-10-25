# IterM.IsPlausibleNthOutputStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a995955c9ed534d529265ad07e94406cf6fd714c7e93af7cf1233f4780913638",
  "kind": "inductive",
  "lexical_name": "IterM.IsPlausibleNthOutputStep",
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
  "slug": "iterm-isplausiblenthoutputstep--64dc5686ff3f5e2c85a2bb46",
  "source": {
    "blob": "da556b180dab2d02f036e43796c80adcc7268e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64dc5686ff3f5e2c85a2bb46250ce3dbf400906e5b7a29f9b16338bb0c7db268",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a995955c9ed534d529265ad07e94406cf6fd714c7e93af7cf1233f4780913638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IterM.IsPlausibleNthOutputStep {α β : Type w} {m : Type w → Type w'} [Iterator α m β] :
    Nat → IterM (α := α) m β → IterStep (IterM (α := α) m β) β → Prop where
  /-- If `it` plausibly yields in its immediate next step, this step is a plausible `0`-th output step. -/
  | zero_yield {it : IterM (α := α) m β} : it.IsPlausibleStep (.yield it' out) →
      it.IsPlausibleNthOutputStep 0 (.yield it' out)
  /--
  If `it` plausibly terminates in its immediate next step (`.done`), then `.done` is a plausible
  `n`-th output step for arbitrary `n`.
  -/
  | done {it : IterM (α := α) m β} : it.IsPlausibleStep .done →
      it.IsPlausibleNthOutputStep n .done
  /--
  If `it` plausibly yields in its immediate next step, the successor iterator being `it'`, and
  if `step` is a plausible `n`-th output step of `it'`, then `step` is a plausible `n + 1`-th
  output step of `it`.
  -/
  | yield {it it' : IterM (α := α) m β} {out step} : it.IsPlausibleStep (.yield it' out) →
      it'.IsPlausibleNthOutputStep n step → it.IsPlausibleNthOutputStep (n + 1) step
  /--
  If `it` plausibly skips in its immediate next step, the successor iterator being `it'`, and
  if `step` is a plausible `n`-th output step of `it'`, then `step` is also a plausible `n`-th
  output step of `it`.
  -/
  | skip {it it' : IterM (α := α) m β} {step} : it.IsPlausibleStep (.skip it') →
      it'.IsPlausibleNthOutputStep n step → it.IsPlausibleNthOutputStep n step

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da556b180dab2d02f036e43796c80adcc7268e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
