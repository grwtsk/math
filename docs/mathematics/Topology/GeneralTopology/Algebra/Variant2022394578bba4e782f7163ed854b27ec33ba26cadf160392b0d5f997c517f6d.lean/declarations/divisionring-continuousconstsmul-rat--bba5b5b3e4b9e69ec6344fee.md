# DivisionRing.continuousConstSMul_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16eac1db1efd4759a6cbd4b050001460e5022715c042618e9793db17d001b9e5",
  "kind": "instance",
  "lexical_name": "DivisionRing.continuousConstSMul_rat",
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
  "slug": "divisionring-continuousconstsmul-rat--bba5b5b3e4b9e69ec6344fee",
  "source": {
    "blob": "8f946209e2ff0630b7511fbbef1931dd14354ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bba5b5b3e4b9e69ec6344feea4fcd8034813645bdf9a6972769836ed7f03e176",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16eac1db1efd4759a6cbd4b050001460e5022715c042618e9793db17d001b9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance DivisionRing.continuousConstSMul_rat {A} [DivisionRing A] [TopologicalSpace A]
    [ContinuousMul A] [CharZero A] : ContinuousConstSMul ℚ A :=
  ⟨fun r => by simpa only [Algebra.smul_def] using continuous_const.mul continuous_id⟩
#align division_ring.has_continuous_const_smul_rat DivisionRing.continuousConstSMul_rat

end DivisionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f946209e2ff0630b7511fbbef1931dd14354ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
