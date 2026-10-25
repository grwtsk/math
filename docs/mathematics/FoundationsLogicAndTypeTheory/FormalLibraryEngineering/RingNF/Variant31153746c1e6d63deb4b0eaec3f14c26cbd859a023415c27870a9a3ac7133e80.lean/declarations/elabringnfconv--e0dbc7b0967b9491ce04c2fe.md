# elabRingNFConv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a45128bdcf1490db22f4866c4517390e15ae68bd300d885e371eb2479b3dba06",
  "kind": "def",
  "lexical_name": "elabRingNFConv",
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
  "slug": "elabringnfconv--e0dbc7b0967b9491ce04c2fe",
  "source": {
    "blob": "72bc943d94750b206fb2f4ebaf7260a9279eee63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0dbc7b0967b9491ce04c2fec227e17dda6d1fb96a2bcd490996f957dca53e33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a45128bdcf1490db22f4866c4517390e15ae68bd300d885e371eb2479b3dba06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic ringNFConv] def elabRingNFConv : Tactic := fun stx ↦ match stx with
  | `(conv| ring_nf $[!%$tk]? $cfg:optConfig) => withMainContext do
    let mut cfg ← elabConfig cfg
    if tk.isSome then cfg := { cfg with red := .default, zetaDelta := true }
    let s ← IO.mkRef {}
    Conv.applySimpResult
      (← AtomM.recurse s cfg.toConfig (wellBehavedDischarge := true) evalExpr (cleanup cfg)
        (← instantiateMVars (← Conv.getLhs)))
  | _ => Elab.throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72bc943d94750b206fb2f4ebaf7260a9279eee63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
