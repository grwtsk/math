# UniversalCoprimeFactorizationRing.homEquiv_comp_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9f09e79-13dc-3c8c-d130-26907c692d7f",
  "kind": "lemma",
  "lexical_name": "UniversalCoprimeFactorizationRing.homEquiv_comp_fst",
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
  "slug": "universalcoprimefactorizationring-homequiv-comp-fst--6df1774d971d00281cb43f16",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 631,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df1774d971d00281cb43f16e2e62f558af3e4a7838e00c44867a0334598c70a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9f09e79-13dc-3c8c-d130-26907c692d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniversalCoprimeFactorizationRing.homEquiv_comp_fst {T : Type*} [CommRing T] [Algebra R T]
    (f : 𝓡' →ₐ[R] S) (g : S →ₐ[R] T) :
    (homEquiv T m k hn p (g.comp f)).1.1 = (homEquiv S m k hn p f).1.1.map g := by
  ext1
  simp [homEquiv, UniversalFactorizationRing.homEquiv, Polynomial.map_map]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
