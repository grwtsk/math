# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f7332dcc095fe55913ee1c9e5046699b9af8a035637b45c81e78cb23c880d5d",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--4cd08517f9dae1269d6cdfdf",
  "source": {
    "blob": "c8a8a8cf37e1278f539ba1c9b98056727f5ca375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant08596958c6fbbff64a6f720fd22e435679506ebea3db82ab19748fd435243c45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cd08517f9dae1269d6cdfdf1beaa38c1684ce5e297390b5d8a05397c9004c70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant08596958c6fbbff64a6f720fd22e435679506ebea3db82ab19748fd435243c45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f7332dcc095fe55913ee1c9e5046699b9af8a035637b45c81e78cb23c880d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := squeezeScope) "squeeze_scope " seq:tacticSeq : tactic => do
  let a ← withFreshMacroScope `(a)
  let seq ← seq.raw.rewriteBottomUpM fun stx =>
    match stx.getKind with
    | ``dsimp | ``simpAll | ``simp
    | ``dsimpTrace | ``simpAllTrace | ``simpTrace => do
      withFreshMacroScope `(tactic| squeeze_wrap $a x => $stx)
    | _ => pure stx
  `(tactic| squeeze_scope $a => $seq)

open Meta

/--
We implement `squeeze_scope` using a global variable that tracks all `squeeze_scope` invocations
in flight. It is a map `a => (x => (stx, simps))` where `a` is a unique identifier for
the `squeeze_scope` invocation which is shared with all contained simps, and `x` is a unique
identifier for a particular piece of simp syntax (which can be called multiple times).
Within that, `stx` is the simp syntax itself, and `simps` is the aggregated list of simps used
so far.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant08596958c6fbbff64a6f720fd22e435679506ebea3db82ab19748fd435243c45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant08596958c6fbbff64a6f720fd22e435679506ebea3db82ab19748fd435243c45.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a8a8cf37e1278f539ba1c9b98056727f5ca375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
