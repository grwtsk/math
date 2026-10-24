# TEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbda2920330b342fe1525a75cb94dbbfbb6c7c479e61490d4c4ec3bd65d8ac60",
  "kind": "inductive",
  "lexical_name": "TEmpty",
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
  "slug": "tempty--584558ec4ab6c8fda6fc457b",
  "source": {
    "blob": "5b9e79e54a9843633f3a2d44a795ead08ed0d478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 3,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:584558ec4ab6c8fda6fc457bb25c339b6c275bd267e47b56f5acb7bea6fdbfd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbda2920330b342fe1525a75cb94dbbfbb6c7c479e61490d4c4ec3bd65d8ac60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TEmpty : Type
/--
info: TEmpty : Type
TEmpty.casesOn.{u} (motive : TEmpty → Sort u) (t : TEmpty) : motive t
TEmpty.ctorIdx : TEmpty → Nat
TEmpty.noConfusion.{u} {P : Sort u} {t t' : TEmpty} (eq : t = t') : TEmpty.noConfusionType P t t'
TEmpty.noConfusionType.{u} (P : Sort u) (t t' : TEmpty) : Sort u
TEmpty.rec.{u} (motive : TEmpty → Sort u) (t : TEmpty) : motive t
TEmpty.recOn.{u} (motive : TEmpty → Sort u) (t : TEmpty) : motive t
-/
#guard_msgs in
#print prefix TEmpty -- Test type that probably won't change much.

/-- info: -/
#guard_msgs in
#print prefix -imported Empty

namespace EmptyPrefixTest

end EmptyPrefixTest

-- Note.  This error message could be cleaned up, but left during migration from Mathlib
/--
error: Unknown constant `EmptyPrefixTest`
-/
#guard_msgs in
#print prefix EmptyPrefixTest

namespace Prefix.Test

/-- Supress lint -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintPrefix/Variant19df486c268131aadee5cf1faae2b8cfe69063be0e8243b5591ebb62d26282e9.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b9e79e54a9843633f3a2d44a795ead08ed0d478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
