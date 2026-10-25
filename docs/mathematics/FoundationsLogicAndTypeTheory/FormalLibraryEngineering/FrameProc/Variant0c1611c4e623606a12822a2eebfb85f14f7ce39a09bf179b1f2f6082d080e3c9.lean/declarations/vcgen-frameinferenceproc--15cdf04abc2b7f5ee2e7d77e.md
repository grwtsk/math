# VCGen.FrameInferenceProc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c156487db6c7ff42a7c984c17064ce6dea857e4cff700b4a3f2e0a33a1be5140",
  "kind": "abbrev",
  "lexical_name": "VCGen.FrameInferenceProc",
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
  "slug": "vcgen-frameinferenceproc--15cdf04abc2b7f5ee2e7d77e",
  "source": {
    "blob": "daeaf6adfa269cadd007c6bb1c549625367cec16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant0c1611c4e623606a12822a2eebfb85f14f7ce39a09bf179b1f2f6082d080e3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15cdf04abc2b7f5ee2e7d77e9f6e8ad20d556b379505b77d0f07bc58fb4565a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant0c1611c4e623606a12822a2eebfb85f14f7ce39a09bf179b1f2f6082d080e3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c156487db6c7ff42a7c984c17064ce6dea857e4cff700b4a3f2e0a33a1be5140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public abbrev VCGen.FrameInferenceProc :=
  Expr → Expr → VCGen.WPApp → Expr → SymM (Option Expr)

/-- How to decompose a lattice operator `head … s⃗` on the RHS of an entailment: the distribution and
unfolding `rewrites` that saturate it, and the terminal `⊑`-introduction `terminals` that close the
reduced form. `head` keys the split in the `latticeOps` table. A built-in connective contributes an
empty split (the shared built-in rewrites and terminals cover it); a frame operator adds its own. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant0c1611c4e623606a12822a2eebfb85f14f7ce39a09bf179b1f2f6082d080e3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant0c1611c4e623606a12822a2eebfb85f14f7ce39a09bf179b1f2f6082d080e3c9.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daeaf6adfa269cadd007c6bb1c549625367cec16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
