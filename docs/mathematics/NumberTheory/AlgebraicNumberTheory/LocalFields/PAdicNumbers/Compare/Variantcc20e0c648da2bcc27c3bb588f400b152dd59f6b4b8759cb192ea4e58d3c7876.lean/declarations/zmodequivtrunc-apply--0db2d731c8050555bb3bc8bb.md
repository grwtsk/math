# zmodEquivTrunc_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12bee545-999d-c3a5-e045-d93ece3fa770",
  "kind": "theorem",
  "lexical_name": "zmodEquivTrunc_apply",
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
  "slug": "zmodequivtrunc-apply--0db2d731c8050555bb3bc8bb",
  "source": {
    "blob": "e07cd23ade9056ccbc8a8955fbc422b7a59f93b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db2d731c8050555bb3bc8bb0551b9244326605a23b767c81a06e211375f4339",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12bee545-999d-c3a5-e045-d93ece3fa770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem zmodEquivTrunc_apply {x : ZMod (p ^ n)} :
    zmodEquivTrunc p n x =
      ZMod.castHom (m := p ^ n) (by rfl) (TruncatedWittVector p n (ZMod p)) x :=
  rfl

/-- The following diagram commutes:
```text
          ZMod (p^n) ----------------------------> ZMod (p^m)
            |                                        |
            |                                        |
            v                                        v
TruncatedWittVector p n (ZMod p) ----> TruncatedWittVector p m (ZMod p)
```
Here the vertical arrows are `TruncatedWittVector.zmodEquivTrunc`,
the horizontal arrow at the top is `ZMod.castHom`,
and the horizontal arrow at the bottom is `TruncatedWittVector.truncate`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07cd23ade9056ccbc8a8955fbc422b7a59f93b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
