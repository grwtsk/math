# partialOddGF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90aa6a5e5726634a86f86fa413aaf7e7559c76eed8dd5bc313fd4cbca20d1b96",
  "kind": "def",
  "lexical_name": "partialOddGF",
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
  "slug": "partialoddgf--9e05a50adb87f25f09a99ab1",
  "source": {
    "blob": "fd3803481cce58398a936482e24df9e892c5ef87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e05a50adb87f25f09a99ab11dec1ca5d2f9beacb614739eb41820ab135f1c00",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90aa6a5e5726634a86f86fa413aaf7e7559c76eed8dd5bc313fd4cbca20d1b96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partialOddGF (m : ℕ) [Field α] :=
  ∏ i in range m, (1 - (X : PowerSeries α) ^ (2 * i + 1))⁻¹
#align theorems_100.partial_odd_gf Theorems100.partialOddGF

/-- The partial product for the generating function for distinct partitions.
TODO: As `m` tends to infinity, this converges (in the `X`-adic topology).

If `m` is sufficiently large, the `i`th coefficient gives the number of distinct partitions of the
natural number `i`: proved in `distinctGF_prop`.
It is stated for an arbitrary commutative semiring `α`, though it usually suffices to use `ℕ`, `ℚ`
or `ℝ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3803481cce58398a936482e24df9e892c5ef87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
