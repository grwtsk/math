# toInductiveLimit_isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed901ff1-04df-3de5-112f-98d488e00009",
  "kind": "theorem",
  "lexical_name": "toInductiveLimit_isometry",
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
  "slug": "toinductivelimit-isometry--112caa01be760acc464c4f9b",
  "source": {
    "blob": "4fa15e7207538ae55fdd3880b48e02d4ff055608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 616,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:112caa01be760acc464c4f9b2d8a8c7a9001323f7dae0db5b9bd174da7731521",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed901ff1-04df-3de5-112f-98d488e00009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInductiveLimit_isometry (I : ∀ n, Isometry (f n)) (n : ℕ) :
    Isometry (toInductiveLimit I n) :=
  Isometry.of_dist_eq fun x y => by
    change inductiveLimitDist f ⟨n, x⟩ ⟨n, y⟩ = dist x y
    rw [inductiveLimitDist_eq_dist I ⟨n, x⟩ ⟨n, y⟩ n (le_refl n) (le_refl n), leRecOn_self,
      leRecOn_self]

/-- The maps `toInductiveLimit n` are compatible with the maps `f n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa15e7207538ae55fdd3880b48e02d4ff055608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
