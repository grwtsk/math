# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCore.Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.Lean.MVarId.cc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0da41ae07905d183b54f140709d93e532ae80d7d8729e106b8f78ddf7372f066",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCore.Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.Lean.MVarId.cc",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-mkcor--08c5757bceeebd93a6b6745e",
  "source": {
    "blob": "e6ac42b64af4f4995472a428d8794afa3bff21a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant835bd2445db99504ebaa45712229d222e2d2b113ccfdcd91ee88094a6fa1e6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08c5757bceeebd93a6b6745e70599ce64d810fa497aee85a363f6deb378e61cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant835bd2445db99504ebaa45712229d222e2d2b113ccfdcd91ee88094a6fa1e6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0da41ae07905d183b54f140709d93e532ae80d7d8729e106b8f78ddf7372f066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCore.Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.Lean.MVarId.cc (m : MVarId) (cfg : CCConfig := {}) : MetaM Unit := do
  let (_, m) ← m.intros
  m.withContext do
    let s ← CCState.mkUsingHsCore cfg
    let t ← m.getType >>= instantiateMVars
    let s ← s.internalize t
    if s.inconsistent then
        let pr ← s.proofForFalse
        mkAppOptM ``False.elim #[t, pr] >>= m.assign
    else
      let tr := Expr.const ``True []
      let b ← s.isEqv t tr
      if b then
        let pr ← s.eqvProof t tr
        mkAppM ``of_eq_true #[pr] >>= m.assign
      else
        let dbg ← getBoolOption `trace.Meta.Tactic.cc.failure false
        if dbg then
          throwError m!"cc tactic failed, equivalence classes: {s}"
        else
          throwError "cc tactic failed"

/--
Allow elaboration of `CCConfig` arguments to tactics.
-/
declare_config_elab elabCCConfig CCConfig

open Parser.Tactic in
/--
The congruence closure tactic `cc` tries to solve the goal by chaining
equalities from context and applying congruence (i.e. if `a = b`, then `f a = f b`).
It is a finishing tactic, i.e. it is meant to close
the current goal, not to make some inconclusive progress.
A mostly trivial example would be:

```lean
example (a b c : ℕ) (f : ℕ → ℕ) (h: a = b) (h' : b = c) : f a = f c := by
  cc
```

As an example requiring some thinking to do by hand, consider:

```lean
example (f : ℕ → ℕ) (x : ℕ)
    (H1 : f (f (f x)) = x) (H2 : f (f (f (f (f x)))) = x) :
    f x = x := by
  cc
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant835bd2445db99504ebaa45712229d222e2d2b113ccfdcd91ee88094a6fa1e6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant835bd2445db99504ebaa45712229d222e2d2b113ccfdcd91ee88094a6fa1e6cb.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6ac42b64af4f4995472a428d8794afa3bff21a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
