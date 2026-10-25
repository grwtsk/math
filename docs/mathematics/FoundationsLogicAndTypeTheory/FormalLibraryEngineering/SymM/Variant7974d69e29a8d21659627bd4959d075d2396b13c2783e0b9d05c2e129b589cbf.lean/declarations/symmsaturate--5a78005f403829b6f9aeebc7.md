# symmSaturate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88b509da346370b1989bc4f33028d959c8242116f1c560785ece33df01601d0b",
  "kind": "def",
  "lexical_name": "symmSaturate",
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
  "slug": "symmsaturate--5a78005f403829b6f9aeebc7",
  "source": {
    "blob": "d5fc250a51863cce5fe5a68fb722669b4a67cb60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant7974d69e29a8d21659627bd4959d075d2396b13c2783e0b9d05c2e129b589cbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a78005f403829b6f9aeebc7ae39c984391d4c0995df32bb26c883e3d7562d3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant7974d69e29a8d21659627bd4959d075d2396b13c2783e0b9d05c2e129b589cbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88b509da346370b1989bc4f33028d959c8242116f1c560785ece33df01601d0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def symmSaturate (g : MVarId) : MetaM MVarId := g.withContext do
  let mut g' := g
  let hyps ← getLocalHyps
  let types ← hyps.mapM inferType
  for h in hyps do try
    let symm ← h.symm
    let symmType ← inferType symm
    if ¬ (← types.anyM (isDefEq symmType)) then
      (_, g') ← g'.note ((← h.fvarId!.getUserName).appendAfter "_symm") symm
  catch _ => g' ← pure g'
  return g'

end Lean.MVarId

namespace Mathlib.Tactic

open Lean.Elab.Tactic

/--
* `symm` applies to a goal whose target has the form `t ~ u` where `~` is a symmetric relation,
  that is, a relation which has a symmetry lemma tagged with the attribute [symm].
  It replaces the target with `u ~ t`.
* `symm at h` will rewrite a hypothesis `h : t ~ u` to `h : u ~ t`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant7974d69e29a8d21659627bd4959d075d2396b13c2783e0b9d05c2e129b589cbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant7974d69e29a8d21659627bd4959d075d2396b13c2783e0b9d05c2e129b589cbf.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fc250a51863cce5fe5a68fb722669b4a67cb60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
