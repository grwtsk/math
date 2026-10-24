# coefficientFunctional_adjoint_one_coordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3afe8ecb-b48d-7677-b1e2-47948f52a596",
  "kind": "theorem",
  "lexical_name": "coefficientFunctional_adjoint_one_coordinate",
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
  "slug": "coefficientfunctional-adjoint-one-coordinate--5aad506baf1337394b40bce0",
  "source": {
    "blob": "4e4c8c3723a440f9dd4207cf3761b21881bb0b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 198,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variantab61eba430019ea1852ce308ce13deb87d954118431616de1ab1c75e63c99abb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aad506baf1337394b40bce0456972fac9e6eac46209856bfd4404bbc462177e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PolarizedGram/Variantab61eba430019ea1852ce308ce13deb87d954118431616de1ab1c75e63c99abb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3afe8ecb-b48d-7677-b1e2-47948f52a596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientFunctional_adjoint_one_coordinate {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) (a : frame.Atom) :
    conj ((((coefficientFunctional frame)†) 1) a) =
      frame.amplitude a := by
  classical
  have hadjoint := (coefficientFunctional frame).adjoint_inner_left
    (EuclideanSpace.single a 1) 1
  rw [EuclideanSpace.inner_single_right] at hadjoint
  simpa [coefficientFunctional, packetSynthesisCLM_single,
    frame.readout_packet] using hadjoint

/-- The amplitude energy is exactly the squared norm of the Riesz vector of
the coefficient functional. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PolarizedGram/Variantab61eba430019ea1852ce308ce13deb87d954118431616de1ab1c75e63c99abb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variantab61eba430019ea1852ce308ce13deb87d954118431616de1ab1c75e63c99abb.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4c8c3723a440f9dd4207cf3761b21881bb0b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
