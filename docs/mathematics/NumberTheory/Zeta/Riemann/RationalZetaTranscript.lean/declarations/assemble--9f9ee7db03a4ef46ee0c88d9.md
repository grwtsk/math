# assemble

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00694e99338d94165c0df3a20e0cc823cc0fd1eb6c2ca3aa405c74f3d5376d80",
  "kind": "def",
  "lexical_name": "assemble",
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
  "slug": "assemble--9f9ee7db03a4ef46ee0c88d9",
  "source": {
    "blob": "73656fd9a7ebe40dddd45ab82240df2e51defa6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f9ee7db03a4ef46ee0c88d9bef736f979a2f66da8b0d21630804c2bc7882ae9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00694e99338d94165c0df3a20e0cc823cc0fd1eb6c2ca3aa405c74f3d5376d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assemble (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N) : CenterState :=
  let v := QComplex.add (sumQ (fun i => (t.prefix i).value))
    (QComplex.mul (factorQ N c) t.terminal.value)
  let d := QComplex.add
    (sumQ (fun i => recordLogValue ((i.1 : ℚ) + 1) (p.prefix i) (t.prefix i)))
    (QComplex.add (QComplex.mul (factorSlopeQ N c) t.terminal.value)
      (QComplex.mul (factorQ N c) (recordLogValue (cutoffQ N) p.terminal t.terminal)))
  let ev := (∑ i, (t.prefix i).error) + QComplex.rect (factorQ N c) * t.terminal.error
  let ed := (∑ i, recordLogError ((i.1 : ℚ) + 1) (p.prefix i) (t.prefix i)) +
    (QComplex.rect (factorSlopeQ N c) * t.terminal.error +
      QComplex.rect (factorQ N c) * recordLogError (cutoffQ N) p.terminal t.terminal)
  ⟨initialState p.valueBits v (FiniteNewtonCenter.diskBudgetQ N c 0 + ev),
    initialState p.slopeBits d
      (FiniteNewtonCenter.diskBudgetQ N c p.cauchyRadius / p.cauchyRadius + ed)⟩

/-- All six final fields and BOTH final tolerance checks remain present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73656fd9a7ebe40dddd45ab82240df2e51defa6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
