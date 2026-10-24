# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfc1facb721380d06af48d99b2c7540b078b6891ccdca97ddf7695e05ffb5b0f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--def13a4297b4c30ef212cc68",
  "source": {
    "blob": "c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:def13a4297b4c30ef212cc6805201ca2a615145342df48d65a9cedeac1ca9514",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfc1facb721380d06af48d99b2c7540b078b6891ccdca97ddf7695e05ffb5b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R S : Type*} [CommRing R] [CommRing S] [Algebra R S] [Algebra.FiniteType R S]
    (M : Submonoid S) [Monoid.FG M] : Algebra.FiniteType R (Localization M) :=
  .trans ‹_› (IsLocalization.finiteType_of_monoid_fg M _)

end InvSubmonoid

end IsLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
