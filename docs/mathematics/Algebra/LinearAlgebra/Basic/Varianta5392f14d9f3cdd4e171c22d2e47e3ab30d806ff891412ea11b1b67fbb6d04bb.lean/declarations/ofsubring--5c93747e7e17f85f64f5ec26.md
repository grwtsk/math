# ofSubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:574639175619aa3556cab17e680a32a42f914affd6d5806016db847494b72ca9",
  "kind": "instance",
  "lexical_name": "ofSubring",
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
  "slug": "ofsubring--5c93747e7e17f85f64f5ec26",
  "source": {
    "blob": "9450c77c69bdf75306261ad1cfa7de56205871d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 521,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5392f14d9f3cdd4e171c22d2e47e3ab30d806ff891412ea11b1b67fbb6d04bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c93747e7e17f85f64f5ec266b4b05c6cb53efe870cf3171748ad334528f991c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta5392f14d9f3cdd4e171c22d2e47e3ab30d806ff891412ea11b1b67fbb6d04bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:574639175619aa3556cab17e680a32a42f914affd6d5806016db847494b72ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ofSubring {R A : Type*} [CommRing R] [Ring A] [Algebra R A] (S : Subring R) :
    Algebra S A where -- porting note: don't use `toSubsemiring` because of a timeout
  toRingHom := (algebraMap R A).comp S.subtype
  smul := (· • ·)
  commutes' r x := Algebra.commutes (r : R) x
  smul_def' r x := Algebra.smul_def (r : R) x
#align algebra.of_subring Algebra.ofSubring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta5392f14d9f3cdd4e171c22d2e47e3ab30d806ff891412ea11b1b67fbb6d04bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5392f14d9f3cdd4e171c22d2e47e3ab30d806ff891412ea11b1b67fbb6d04bb.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9450c77c69bdf75306261ad1cfa7de56205871d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
