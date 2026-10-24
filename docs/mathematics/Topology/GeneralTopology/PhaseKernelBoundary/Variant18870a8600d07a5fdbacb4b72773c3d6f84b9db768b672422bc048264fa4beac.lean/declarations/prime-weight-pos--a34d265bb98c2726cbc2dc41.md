# prime_weight_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c82dd2ba-6d32-0f13-ec51-aa8951df8a73",
  "kind": "theorem",
  "lexical_name": "prime_weight_pos",
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
  "slug": "prime-weight-pos--a34d265bb98c2726cbc2dc41",
  "source": {
    "blob": "6a497da550d16d3d51290f5b93e29f0e27545c30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a34d265bb98c2726cbc2dc419e317478d407d8ea6ba52b2a2bf0458543ce1b9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82dd2ba-6d32-0f13-ec51-aa8951df8a73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_weight_pos {p : ℕ} (hp : p.Prime) : 0 < primeWeight p := by
  unfold primeWeight
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  apply div_pos
  · apply Real.log_pos
    exact_mod_cast hp.one_lt
  · apply Real.sqrt_pos.2
    exact_mod_cast hp.pos

/-- Every fixed prime and its square form an eventually positive integrated block.
The eventual radius threshold depends on the prime, so this rules out termwise
nonpositive blocks without bounding the full growing sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a497da550d16d3d51290f5b93e29f0e27545c30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
