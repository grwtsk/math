# _root_.Fin.appendIsometryOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7e5b71ff7f62b674ce952feec2e911ea83625315316b1a42adbd7fef0a270c9",
  "kind": "def",
  "lexical_name": "_root_.Fin.appendIsometryOfEq",
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
  "slug": "root-fin-appendisometryofeq--d3ce5aee4468f4ae94e418fa",
  "source": {
    "blob": "c20fa30100cc3f95a9aa30a57755242137f5b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 642,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3ce5aee4468f4ae94e418fac586815b4ba317d86ca25a85f080a278c6dd5c11",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7e5b71ff7f62b674ce952feec2e911ea83625315316b1a42adbd7fef0a270c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Fin.appendIsometryOfEq {n m l : ℕ} (hmln : m + l = n) :
    (Fin m → α) × (Fin l → α) ≃ᵢ (Fin n → α) :=
  (Fin.appendIsometry m l).trans (IsometryEquiv.piCongrLeft (Y := fun _ ↦ α) (finCongr hmln))

variable (ι α)

/-- `Equiv.funUnique` as an `IsometryEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20fa30100cc3f95a9aa30a57755242137f5b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
