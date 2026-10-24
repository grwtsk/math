# MobiusDecoderCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a83a87a78b0a4b7e45821813e0c0c384e9019e80b8d502e1965a322fcdb5931",
  "kind": "structure",
  "lexical_name": "MobiusDecoderCertificate",
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
  "slug": "mobiusdecodercertificate--5896375c2756cdc616ae5f60",
  "source": {
    "blob": "a004cb31af1d295bf01408a30861ed776510e70a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decoder/Variant66d2026177d26b49920cf9446a13445d5aae6d82200fd2d664b61914c863b392.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5896375c2756cdc616ae5f602fcff0136b64abc6e32394fdc0bf2830cf0424f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decoder/Variant66d2026177d26b49920cf9446a13445d5aae6d82200fd2d664b61914c863b392.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a83a87a78b0a4b7e45821813e0c0c384e9019e80b8d502e1965a322fcdb5931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MobiusDecoderCertificate
    (Carrier : Type u)
    (ServerSemantics : Type v)
    (ClientSemantics : Type w)
    (Observation : Type x) where
  twist : Carrier → Carrier
  decodeServer : Carrier → ServerSemantics
  decodeClient : Carrier → ClientSemantics
  semanticTransport : ServerSemantics → ClientSemantics
  semanticCommutes :
    ∀ carrier,
      decodeClient (twist carrier) =
        semanticTransport (decodeServer carrier)
  observeServer : Observation → ServerSemantics → ℂ
  observeClient : Observation → ClientSemantics → ℂ
  observationTransport : Observation → ℂ → ℂ
  observationCommutes :
    ∀ observation carrier,
      observeClient observation (decodeClient (twist carrier)) =
        observationTransport observation
          (observeServer observation (decodeServer carrier))

/-- Typed transport is required before a decoded artifact may cross boundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decoder/Variant66d2026177d26b49920cf9446a13445d5aae6d82200fd2d664b61914c863b392.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decoder/Variant66d2026177d26b49920cf9446a13445d5aae6d82200fd2d664b61914c863b392.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a004cb31af1d295bf01408a30861ed776510e70a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
