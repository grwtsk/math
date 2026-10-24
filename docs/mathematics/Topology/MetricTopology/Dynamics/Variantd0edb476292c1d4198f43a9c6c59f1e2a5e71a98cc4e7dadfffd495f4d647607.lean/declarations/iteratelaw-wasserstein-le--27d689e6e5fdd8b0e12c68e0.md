# iterateLaw_wasserstein_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58666617-fbf7-0d75-3460-b88c5bbf5d3f",
  "kind": "theorem",
  "lexical_name": "iterateLaw_wasserstein_le",
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
  "slug": "iteratelaw-wasserstein-le--27d689e6e5fdd8b0e12c68e0",
  "source": {
    "blob": "18fea8a39f15a791f886bdbc4abb80d8224f0ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 331,
    "path": "GRWTSK/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d689e6e5fdd8b0e12c68e0d03dc528b62976fee494eaa5c7d92c0e3a1dd2b4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58666617-fbf7-0d75-3460-b88c5bbf5d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterateLaw_wasserstein_le
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.wasserstein
        (dynamics.iterateLaw depth initial)
        dynamics.invariantLaw ≤
      dynamics.contraction ^ depth *
        carrier.wasserstein initial dynamics.invariantLaw := by
  simpa
      [iterateLaw, carrier.wasserstein_eq_nndist]
    using
      dynamics.toBoundaryCertificate.nndist_to_boundary_le_pow
        (fun _ => ())
        (Set.mem_univ initial)
        depth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18fea8a39f15a791f886bdbc4abb80d8224f0ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
