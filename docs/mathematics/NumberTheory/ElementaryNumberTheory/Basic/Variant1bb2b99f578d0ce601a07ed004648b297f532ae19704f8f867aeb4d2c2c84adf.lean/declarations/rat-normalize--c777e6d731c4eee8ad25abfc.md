# Rat.normalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d34123ce7dca8b2de7b5aac3c09c6dcf90d9f8159178e9b689346996c9d2648d",
  "kind": "def",
  "lexical_name": "Rat.normalize",
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
  "slug": "rat-normalize--c777e6d731c4eee8ad25abfc",
  "source": {
    "blob": "51633e5745d577d3a35be26bb1f2f6978a245ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c777e6d731c4eee8ad25abfcc9c6254bde40bba9ea7035bdb54b1d29720f78bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d34123ce7dca8b2de7b5aac3c09c6dcf90d9f8159178e9b689346996c9d2648d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def Rat.normalize (num : Int) (den : Nat := 1) (den_nz : den ≠ 0 := by decide) : Rat :=
  Rat.maybeNormalize num den (num.natAbs.gcd den)
    (normalize.dvd_num rfl) (normalize.dvd_den rfl)
    (normalize.den_nz den_nz rfl) (normalize.reduced den_nz rfl)

/--
Construct a rational number from a numerator and denominator.
This is a "smart constructor" that divides the numerator and denominator by
the gcd to ensure that the resulting rational number is normalized, and returns
zero if `den` is zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1bb2b99f578d0ce601a07ed004648b297f532ae19704f8f867aeb4d2c2c84adf.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51633e5745d577d3a35be26bb1f2f6978a245ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
