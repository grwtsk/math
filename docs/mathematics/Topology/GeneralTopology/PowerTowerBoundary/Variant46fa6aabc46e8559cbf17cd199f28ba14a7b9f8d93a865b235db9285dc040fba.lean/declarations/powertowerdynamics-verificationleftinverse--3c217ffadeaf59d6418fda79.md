# PowerTowerDynamics.verificationLeftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad87894e70aa4bfa8b9ca823dcdc81a51ac65b6b1c5d936b2d72d31c1d3c1703",
  "kind": "def",
  "lexical_name": "PowerTowerDynamics.verificationLeftInverse",
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
  "slug": "powertowerdynamics-verificationleftinverse--3c217ffadeaf59d6418fda79",
  "source": {
    "blob": "31cc98fc1e3c21de40794129f1cfb6d5f60a1e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c217ffadeaf59d6418fda79dc224e5697f5bad7227f70e4d786c6ae7e77f547",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad87894e70aa4bfa8b9ca823dcdc81a51ac65b6b1c5d936b2d72d31c1d3c1703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PowerTowerDynamics.verificationLeftInverse
    (dynamics : PowerTowerDynamics) :
    Set.LeftInvOn
      dynamics.inverseBranch
      dynamics.step
      dynamics.basin :=
  fun _ state_mem =>
    dynamics.logarithmicVerification state_mem

/--
Branch-sound logarithmic verification forces construction injectivity on the
certified basin.  Branch labels alone would not prove this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cc98fc1e3c21de40794129f1cfb6d5f60a1e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
