# SPred.Notation.unpack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7464b053df9b049d8a52f28dafdd74736d1cbdab6157228ead52976fc163b4f3",
  "kind": "def",
  "lexical_name": "SPred.Notation.unpack",
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
  "slug": "spred-notation-unpack--3337510e873d68740125fd8e",
  "source": {
    "blob": "91aeb8a52114034b08ee7813444702bdadce9af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3337510e873d68740125fd8e3b0a23df6de3c7e5c352981486ec6a29767755aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7464b053df9b049d8a52f28dafdd74736d1cbdab6157228ead52976fc163b4f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def SPred.Notation.unpack [Monad m] [MonadRef m] [MonadQuotation m] : Term → m Term
  | `(spred($P))             => do `($P)
  | `(($P))                  => do `(($(← unpack P)))
  | `(if $c then $t else $e) => do
    let t ← unpack t
    let e ← unpack e
    `(if $c then $t else $e)
  | `(fun $xs* => $b)        => do
    let b ← unpack b
    `(fun $xs* => $b)
  | `(($P : $t))             => do ``(($(← unpack P) : $t))
  | `($t)                    => `($t)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant728dd03a77c2d17dcc911cff4a0f1d9b5b9bfe5293a7f71d5bf0f45ddcb14f5a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91aeb8a52114034b08ee7813444702bdadce9af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
