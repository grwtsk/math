# Algebra.HasGoingDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:214f083584340861bc49156cb24b69d4e75d68fbed34045631adbfe175c9bd0c",
  "kind": "class",
  "lexical_name": "Algebra.HasGoingDown",
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
  "slug": "algebra-hasgoingdown--6ae9128a65fe1e2b68992d12",
  "source": {
    "blob": "3e193c222db3b3b6a600fb0e6f829d845eb6f239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ae9128a65fe1e2b68992d12654caa6df1f6a7b365c334ec8103b5f9d64d3ca1",
  "verification": {
    "reference": "docs/verification/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:214f083584340861bc49156cb24b69d4e75d68fbed34045631adbfe175c9bd0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Algebra.HasGoingDown (R S : Type*) [CommRing R] [CommRing S] [Algebra R S] : Prop where
  exists_ideal_le_liesOver_of_lt {p : Ideal R} [p.IsPrime] (Q : Ideal S) [Q.IsPrime] :
    p < Q.under R → ∃ P ≤ Q, P.IsPrime ∧ P.LiesOver p

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e193c222db3b3b6a600fb0e6f829d845eb6f239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
