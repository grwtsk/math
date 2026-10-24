# zeroIndicator_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4296756-bca2-43bf-e69a-11977e84787b",
  "kind": "theorem",
  "lexical_name": "zeroIndicator_eq_zero_iff",
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
  "slug": "zeroindicator-eq-zero-iff--2dd80bf50fc92cd5d74c766f",
  "source": {
    "blob": "c02a514b18b65f0d1f216fb1243c4d8193b3c211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dd80bf50fc92cd5d74c766f92854f17ead0c3f0022124a3418a9db4228f4fd3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4296756-bca2-43bf-e69a-11977e84787b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem zeroIndicator_eq_zero_iff (Y : Set X) (x : X) :
    zeroIndicator (k := k) Y x = 0 ↔ x ∈ Y := by
  classical
  by_cases hx : x ∈ Y <;> simp [zeroIndicator, hx]

omit [Fintype X] [DecidableEq X] in
/-- Every subset of a finite rhetorical carrier is an algebraic zero set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02a514b18b65f0d1f216fb1243c4d8193b3c211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
