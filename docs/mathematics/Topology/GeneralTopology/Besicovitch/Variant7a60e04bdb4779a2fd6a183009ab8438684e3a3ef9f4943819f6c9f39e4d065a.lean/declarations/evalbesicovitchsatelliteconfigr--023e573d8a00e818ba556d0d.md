# evalBesicovitchSatelliteConfigR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f1bbff9d351eff18355bfc8ae8cbd2ac5aa8a923c08523a185d8b72dad1c640",
  "kind": "def",
  "lexical_name": "evalBesicovitchSatelliteConfigR",
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
  "slug": "evalbesicovitchsatelliteconfigr--023e573d8a00e818ba556d0d",
  "source": {
    "blob": "d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:023e573d8a00e818ba556d0d8f33407be713802c57de6cdbab123f749509aec0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f1bbff9d351eff18355bfc8ae8cbd2ac5aa8a923c08523a185d8b72dad1c640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalBesicovitchSatelliteConfigR : PositivityExt where eval {u α} _zα _pα e := do
  match u, α, e with
  | 0, ~q(ℝ), ~q(@Besicovitch.SatelliteConfig.r $β $inst $N $τ $self $i) =>
    assertInstancesCommute
    return .positive q(Besicovitch.SatelliteConfig.rpos $self $i)
  | _, _, _ => throwError "not Besicovitch.SatelliteConfig.r"

end Mathlib.Meta.Positivity

/-- A metric space has the Besicovitch covering property if there exist `N` and `τ > 1` such that
there are no satellite configuration of parameter `τ` with `N+1` points. This is the condition that
guarantees that the measurable Besicovitch covering theorem holds. It is satisfied by
finite-dimensional real vector spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
