# comap_leq_ker_subToSupQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be33b7ac-c524-170c-5f25-40aa819f283f",
  "kind": "theorem",
  "lexical_name": "comap_leq_ker_subToSupQuotient",
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
  "slug": "comap-leq-ker-subtosupquotient--73fed71daef0ae67920ac1de",
  "source": {
    "blob": "728341bbd928dbbf9702a8a2dbbdb0e89c4357a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73fed71daef0ae67920ac1dec9eb839003e36256006496dca1de1c072f49dabe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be33b7ac-c524-170c-5f25-40aa819f283f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_leq_ker_subToSupQuotient (p p' : Submodule R M) :
    comap (Submodule.subtype p) (p ⊓ p') ≤ ker (subToSupQuotient p p') := by
  rw [LinearMap.ker_comp, Submodule.inclusion, comap_codRestrict, ker_mkQ, map_comap_subtype]
  exact comap_mono (inf_le_inf_right _ le_sup_left)

/-- Canonical linear map from the quotient `p/(p ∩ p')` to `(p+p')/p'`, mapping `x + (p ∩ p')`
to `x + p'`, where `p` and `p'` are submodules of an ambient module.

Note that in the following declaration the type of the domain is expressed using
``comap p.subtype p ⊓ comap p.subtype p'`
instead of
`comap p.subtype (p ⊓ p')`
because the former is the simp normal form (see also `Submodule.comap_inf`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `728341bbd928dbbf9702a8a2dbbdb0e89c4357a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
