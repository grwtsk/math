# phase_distance_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60dce518-ffd6-ffa7-1600-3c6ee21b7c93",
  "kind": "theorem",
  "lexical_name": "phase_distance_sq",
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
  "slug": "phase-distance-sq--7ba6d27469cab406d62ec71c",
  "source": {
    "blob": "fbd89ec425e1ffc22088cda066df48734957e973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba6d27469cab406d62ec71caf3ee55b78833abe55d8e52e42b3b3b872773c3c",
  "verification": {
    "reference": "docs/verification/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60dce518-ffd6-ffa7-1600-3c6ee21b7c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_distance_sq (γ η : ℝ) :
    phaseDistance γ η ^ 2 =
      ∑ i : Fin 2, ‖Complex.exp (Complex.I * (-γ * primeLog i : ℝ)) -
        Complex.exp (Complex.I * (-η * primeLog i : ℝ))‖ ^ 2 := by
  exact EuclideanSpace.norm_sq_eq _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimePhaseGeometry/Variant8613b7e557c6f49af50f32dc5bf4189fdeb685a16bbffa2ee19fc6811de3aaea.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd89ec425e1ffc22088cda066df48734957e973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
