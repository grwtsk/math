# processLeaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3de9363eaea0d54f760c6c3d3d508459d37b7d588f7f1eeb4f824a23b9602c0",
  "kind": "def",
  "lexical_name": "processLeaf",
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
  "slug": "processleaf--92afc1bbd5bd3371f272627f",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 470,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92afc1bbd5bd3371f272627f0f74c74b40e8d441827e8bd12f6026b7faf1606b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3de9363eaea0d54f760c6c3d3d508459d37b7d588f7f1eeb4f824a23b9602c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def processLeaf (p : Problem) : StateRefT State MetaM Unit :=
  p.mvarId.withContext do
    trace[Meta.Match.match] "local context at processLeaf:\n{(← mkFreshTypeMVar).mvarId!}"
    go p.alts
where
  go (alts : List Alt) : StateRefT State MetaM Unit := do
    match alts with
    | [] =>
      let mvarId ← p.mvarId.exfalso
      /- TODO: allow users to configure which tactic is used to close leaves. -/
      if (← contradiction mvarId) then
        trace[Meta.Match.match] "contradiction succeeded"
      else
        trace[Meta.Match.match] "contradiction failed, missing alternative"
        modify fun s => { s with counterExamples := s.counterExamples.push p.examples }
    | alt :: overlapped =>
      solveCnstrs p.mvarId alt
      for otherAlt in overlapped do
        modify fun s => { s with overlaps := s.overlaps.insert alt.idx otherAlt.idx }
      trace[Meta.Match.match] "leaf closed"

/-!
Note that we decided to store pending constraints to address issues exposed by #1279 and #1361.
Here is a simplified version of the example on this issue (see test: `1279_simplified.lean`)
```lean
inductive Arrow : Type → Type → Type 1
  | id   : Arrow a a
  | unit : Arrow Unit Unit
  | comp : Arrow β γ → Arrow α β → Arrow α γ
deriving Repr

def Arrow.compose (f : Arrow β γ) (g : Arrow α β) : Arrow α γ :=
  match f, g with
  | id, g => g
  | f, id => f
  | f, g => comp f g
```
The initial state for the `match`-expression above is
```lean
[Meta.Match.match] remaining variables: [β✝:(Type), γ✝:(Type), f✝:(Arrow β✝ γ✝), g✝:(Arrow α β✝)]
alternatives:
  [β:(Type), g:(Arrow α β)] |- [β, .(β), (Arrow.id .(β)), g] => h_1 β g
  [γ:(Type), f:(Arrow α γ)] |- [.(α), γ, f, (Arrow.id .(α))] => h_2 γ f
  [β:(Type), γ:(Type), f:(Arrow β γ), g:(Arrow α β)] |- [β, γ, f, g] => h_3 β γ f g
```
The first step is a variable-transition which replaces `β` with `β✝` in the first and third alternatives.
The constraint `β✝ ≋ α` in the second alternative used to be discarded. We now store it at the
alternative `cnstrs` field.
-/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
