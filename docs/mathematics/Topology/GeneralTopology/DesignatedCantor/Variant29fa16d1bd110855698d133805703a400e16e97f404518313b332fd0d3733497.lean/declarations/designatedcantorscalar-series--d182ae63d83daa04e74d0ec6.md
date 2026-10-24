# designatedCantorScalar_series

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75207ec1-21cc-8a03-15e3-4226f4b4654c",
  "kind": "theorem",
  "lexical_name": "designatedCantorScalar_series",
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
  "slug": "designatedcantorscalar-series--d182ae63d83daa04e74d0ec6",
  "source": {
    "blob": "7081270af04530dbed03e6186f12f4df7f478c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d182ae63d83daa04e74d0ec6fe168270f7163f28d9fcc049bcfb49564641fd7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75207ec1-21cc-8a03-15e3-4226f4b4654c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem designatedCantorScalar_series
    (stream : BitMatrix.Carrier.BitStream) :
    designatedCantorScalar stream =
      ∑' index : Nat,
        (if stream index then (2 : Real) else 0) / (3 : Real) ^ (index + 1) := by
  simp only [designatedCantorScalar, Real.ofDigits, Real.ofDigitsTerm, div_eq_mul_inv]
  apply tsum_congr
  intro index
  by_cases bit : stream index <;>
    simp [designatedTernaryExpansion, bit]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7081270af04530dbed03e6186f12f4df7f478c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
