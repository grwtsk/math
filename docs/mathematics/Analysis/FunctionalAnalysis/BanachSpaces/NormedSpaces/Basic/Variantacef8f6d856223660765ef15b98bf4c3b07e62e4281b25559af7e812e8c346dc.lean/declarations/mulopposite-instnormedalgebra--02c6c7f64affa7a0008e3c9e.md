# MulOpposite.instNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1e215d332051292602f24dc37810e6fe4cbde9aa77bbf8c021777a5d70755f9",
  "kind": "instance",
  "lexical_name": "MulOpposite.instNormedAlgebra",
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
  "slug": "mulopposite-instnormedalgebra--02c6c7f64affa7a0008e3c9e",
  "source": {
    "blob": "343df2571d6445e1c6b7188fdfe11dda639d55be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 402,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02c6c7f64affa7a0008e3c9eafa2eb5e4119e1e3c2cfd59ef6dabd184e4a3e09",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1e215d332051292602f24dc37810e6fe4cbde9aa77bbf8c021777a5d70755f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MulOpposite.instNormedAlgebra {E : Type*} [SeminormedRing E] [NormedAlgebra 𝕜 E] :
    NormedAlgebra 𝕜 Eᵐᵒᵖ where
  __ := instAlgebra
  __ := instNormedSpace

end NormedAlgebra

/-- A non-unital algebra homomorphism from an `Algebra` to a `NormedAlgebra` induces a
`NormedAlgebra` structure on the domain, using the `SeminormedRing.induced` norm.

See note [reducible non-instances] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `343df2571d6445e1c6b7188fdfe11dda639d55be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
