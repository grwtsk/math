# norm_units_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:536610e1-0286-37ea-f6c8-c6cadbcd6dc1",
  "kind": "theorem",
  "lexical_name": "norm_units_zsmul",
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
  "slug": "norm-units-zsmul--61a4df001e9cff22049f5782",
  "source": {
    "blob": "fc7e567424b3e3f8e5965592a4b464df71d87ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 445,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a4df001e9cff22049f5782be4023d56b1a8bb61b880a3297cc51fd49729590",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536610e1-0286-37ea-f6c8-c6cadbcd6dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_units_zsmul {E : Type*} [SeminormedAddGroup E] (n : ℤˣ) (a : E) : ‖n • a‖ = ‖a‖ :=
  norm_isUnit_zsmul a n.isUnit

open scoped symmDiff in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7e567424b3e3f8e5965592a4b464df71d87ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
