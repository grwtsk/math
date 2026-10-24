# RingHom.finrank_comp_right_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03bc55dd-dc38-46a6-0935-c7a6bc1678c4",
  "kind": "lemma",
  "lexical_name": "RingHom.finrank_comp_right_of_bijective",
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
  "slug": "ringhom-finrank-comp-right-of-bijective--89a567e2ef9581fbffeb5766",
  "source": {
    "blob": "f2856d3375b29633a78e0745b9910f627fe39555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89a567e2ef9581fbffeb5766b269d157f727e52de0217110154712456e3a2002",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03bc55dd-dc38-46a6-0935-c7a6bc1678c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.finrank_comp_right_of_bijective {R S T : Type*} [CommRing R] [CommRing S]
    [CommRing T] (f : R →+* S) (g : S →+* T) (hg : Function.Bijective f) (h1 : g.Finite)
    (h2 : g.Flat) (y : PrimeSpectrum R) (x : PrimeSpectrum S)
    (hy : y = PrimeSpectrum.comap f x) :
    (g.comp f).finrank y = g.finrank x := by
  subst hy
  algebraize [f, g, (g.comp f)]
  have : Module.Finite R T := h1.comp <| .of_surjective _ hg.2
  have : Module.Flat R T := (RingHom.Flat.of_bijective hg).comp h2
  have : Algebra.IsPushout R T S T := .of_bijective_left _ _ hg
  exact (Algebra.rankAtStalk_eq_of_isPushout _ _ _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2856d3375b29633a78e0745b9910f627fe39555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
