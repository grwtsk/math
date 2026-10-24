# primitiveTypePrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ac18fe3b123b13d6194d3c7ccd1e9b52e53e255fac107b72fb7cc88c9518b3b",
  "kind": "def",
  "lexical_name": "primitiveTypePrime",
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
  "slug": "primitivetypeprime--5590842b81741fe6d7d738dd",
  "source": {
    "blob": "234c3c87ca93d5c63f1603548c1163a736a55bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 18,
    "path": "GRWTSK/Algebra/TypePrimeSpectrum/Variantaabc1a0d8578fd011555e0d78d5dcb094b2a3207479276a0a02693b29525448b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5590842b81741fe6d7d738ddb6154b2f9cc76c76323b7e41816bd10e13662414",
  "verification": {
    "reference": "docs/verification/Algebra/TypePrimeSpectrum/Variantaabc1a0d8578fd011555e0d78d5dcb094b2a3207479276a0a02693b29525448b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ac18fe3b123b13d6194d3c7ccd1e9b52e53e255fac107b72fb7cc88c9518b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def primitiveTypePrime (initial : Finset sigma) : Ideal (MvPolynomial sigma K) :=
  Ideal.span (Set.range fun index : { index // index ∈ initial } => MvPolynomial.X index.1)

/-- `type-memory://noeoueue/theorem-edge-ideal@1` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TypePrimeSpectrum/Variantaabc1a0d8578fd011555e0d78d5dcb094b2a3207479276a0a02693b29525448b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TypePrimeSpectrum/Variantaabc1a0d8578fd011555e0d78d5dcb094b2a3207479276a0a02693b29525448b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234c3c87ca93d5c63f1603548c1163a736a55bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
