# gcd_zero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad503659-fabe-a8fc-b158-cc58b77a8218",
  "kind": "theorem",
  "lexical_name": "gcd_zero_left",
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
  "slug": "gcd-zero-left--265aee6b7c434e9a2d3b654b",
  "source": {
    "blob": "7d5c971db011ff2dfc1e73ea0c89d4fa371ee731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteef1de9f8e6fc47fb765743e46f1ecd5f9bda40339049a29a88c8e3bf5848442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:265aee6b7c434e9a2d3b654bc91ecee52a8db718bee881519c9fe1011cffa06b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteef1de9f8e6fc47fb765743e46f1ecd5f9bda40339049a29a88c8e3bf5848442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad503659-fabe-a8fc-b158-cc58b77a8218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem gcd_zero_left (a : R) : gcd 0 a = a := by
  rw [gcd]
  exact if_pos rfl
#align euclidean_domain.gcd_zero_left EuclideanDomain.gcd_zero_left

/-- An implementation of the extended GCD algorithm.
At each step we are computing a triple `(r, s, t)`, where `r` is the next value of the GCD
algorithm, to compute the greatest common divisor of the input (say `x` and `y`), and `s` and `t`
are the coefficients in front of `x` and `y` to obtain `r` (i.e. `r = s * x + t * y`).
The function `xgcdAux` takes in two triples, and from these recursively computes the next triple:
```
xgcdAux (r, s, t) (r', s', t') = xgcdAux (r' % r, s' - (r' / r) * s, t' - (r' / r) * t) (r, s, t)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteef1de9f8e6fc47fb765743e46f1ecd5f9bda40339049a29a88c8e3bf5848442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteef1de9f8e6fc47fb765743e46f1ecd5f9bda40339049a29a88c8e3bf5848442.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5c971db011ff2dfc1e73ea0c89d4fa371ee731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
