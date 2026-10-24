# uniformEquicontinuous_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8cc385a-7560-123e-a92d-e2da43bfd6da",
  "kind": "theorem",
  "lexical_name": "uniformEquicontinuous_iff",
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
  "slug": "uniformequicontinuous-iff--484d46f8dd1d513207d68445",
  "source": {
    "blob": "0936f3f17fb9557bfdd18945518c4345f1794133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484d46f8dd1d513207d684452acb6cf417f62ecf52040b848639779c7e39984d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8cc385a-7560-123e-a92d-e2da43bfd6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformEquicontinuous_iff {ι : Type*} [PseudoMetricSpace β] {F : ι → β → α} :
    UniformEquicontinuous F ↔
      ∀ ε > 0, ∃ δ > 0, ∀ x y, dist x y < δ → ∀ i, dist (F i x) (F i y) < ε :=
  uniformity_basis_dist.uniformEquicontinuous_iff uniformity_basis_dist

/-- For a family of functions to a (pseudo) metric spaces, a convenient way to prove
equicontinuity at a point is to show that all of the functions share a common *local* continuity
modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variant019953b014a37cea29b37c90c796303edfa25ebf053343e95631f198627666bb.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0936f3f17fb9557bfdd18945518c4345f1794133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
