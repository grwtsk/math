# noZeroSMulDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5234acf6a1945a17258b39a7bd233cb89f41887a20834922ea597df43a3543c0",
  "kind": "instance",
  "lexical_name": "noZeroSMulDivisors",
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
  "slug": "nozerosmuldivisors--19bac3c8a6dfebdf6d87326d",
  "source": {
    "blob": "7a88af13b51552d0862c17bd6a8c95ead968d047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19bac3c8a6dfebdf6d87326df1603e7bc5fc0b4219e6ee7c2de3af69f249c734",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5234acf6a1945a17258b39a7bd233cb89f41887a20834922ea597df43a3543c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance noZeroSMulDivisors [Zero R] [Zero M] [SMulZeroClass R M] {ι : Type*}
    [NoZeroSMulDivisors R M] : NoZeroSMulDivisors R (ι →₀ M) :=
  ⟨fun h => or_iff_not_imp_left.mpr fun hc => Finsupp.ext fun i =>
    (eq_zero_or_eq_zero_of_smul_eq_zero (DFunLike.ext_iff.mp h i)).resolve_left hc⟩

section DistribMulActionSemiHom
variable [Monoid R] [AddMonoid M] [AddMonoid N] [DistribMulAction R M] [DistribMulAction R N]

/-- `Finsupp.single` as a `DistribMulActionSemiHom`.

See also `Finsupp.lsingle` for the version as a linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a88af13b51552d0862c17bd6a8c95ead968d047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
