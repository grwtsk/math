# ZMod.equivPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6be937f716750c9fd15c99b55608c0f79be87d3d5e90b784dd7919267c004db2",
  "kind": "def",
  "lexical_name": "ZMod.equivPi",
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
  "slug": "zmod-equivpi--60aaf4ef1446da91fe4d4808",
  "source": {
    "blob": "f33695db8d80def105e1c513f783cd2eaf1ce0ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 96,
    "path": "GRWTSK/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60aaf4ef1446da91fe4d480862e1573d6335e83ee8d8f31a5449b82f8755266a",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6be937f716750c9fd15c99b55608c0f79be87d3d5e90b784dd7919267c004db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZMod.equivPi (hn : n ≠ 0) :
    ZMod n ≃+* Π (p : n.primeFactors), ZMod (p ^ (n.factorization p)) :=
  (ringEquivCongr <| Nat.prod_primeFactors_coe_pow_factorization hn).trans
    <| prodEquivPi (fun (p : n.primeFactors) ↦ (p : ℕ) ^ (n.factorization p))
      n.pairwise_coprime_pow_primeFactors_factorization

end ChineseRemainder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33695db8d80def105e1c513f783cd2eaf1ce0ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
