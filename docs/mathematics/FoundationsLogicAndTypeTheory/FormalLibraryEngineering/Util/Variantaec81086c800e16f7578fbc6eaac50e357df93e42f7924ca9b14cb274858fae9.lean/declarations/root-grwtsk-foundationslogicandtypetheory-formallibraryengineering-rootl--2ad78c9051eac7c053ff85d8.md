# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetDefEqFast.Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.Lean.Meta.Sym.BackwardRule.shareCommon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72d458cc56264823cda67639e87a9427d703bc734be56d5b535ee915399ab0df",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetDefEqFast.Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.Lean.Meta.Sym.BackwardRule.shareCommon",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--2ad78c9051eac7c053ff85d8",
  "source": {
    "blob": "c4d992dedf70719b4c5f6212d61db676aefb4c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ad78c9051eac7c053ff85d8f3771214d26f6a15105093b3b352ed715552dba9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72d458cc56264823cda67639e87a9427d703bc734be56d5b535ee915399ab0df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetDefEqFast.Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.Lean.Meta.Sym.BackwardRule.shareCommon (rule : BackwardRule) : SymM BackwardRule :=
  return { rule with pattern := ← rule.pattern.shareCommon }

/--
`VCGenM` wrapper around `BackwardRule.apply`. Behaves identically to
`rule.apply goal` unless the application fails and `Context.debug` is on.
In that case it retries on a fresh metavariable whose type is the
`unfoldReducible`-normalized goal type. If the retry succeeds, an earlier
step forgot a normalization; we throw a hard error pointing at the rule and
the missing reduction.

`ruleDesc?` describes the rule for debug output. When `none`, the description
is reconstructed from `rule.expr.getAppFn` — works for the common case of a
constant rule. Pass a custom message for dynamically-built rules.

Designed for dot notation: `rule.applyChecked goal`. Requires
`open Lean.Elab.Tactic.Do.Internal` in scope so that the dot lookup resolves.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d992dedf70719b4c5f6212d61db676aefb4c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
