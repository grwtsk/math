# submoduleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5db452903a19fff75c756a5bccdcd59e64aaf24fc2408eb4aa5e5a25d8cd64ee",
  "kind": "def",
  "lexical_name": "submoduleO",
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
  "slug": "submoduleo--e19b0bae1aa8a22f6af48ef7",
  "source": {
    "blob": "33273b34cbda9aed6238a76d6e9c6a80d89379a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e19b0bae1aa8a22f6af48ef7965503da24a136c64e4ab567093e68f239154129",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5db452903a19fff75c756a5bccdcd59e64aaf24fc2408eb4aa5e5a25d8cd64ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submoduleO : Submodule R (R × R) :=
  LinearMap.ker (LinearMap.fst R R R)
#align counterexample.counterexample_not_prime_but_homogeneous_prime.submodule_o Counterexample.CounterexampleNotPrimeButHomogeneousPrime.submoduleO

/-- Given the above grading (see `submoduleZ` and `submoduleO`),
  we turn `R²` into a graded ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33273b34cbda9aed6238a76d6e9c6a80d89379a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
