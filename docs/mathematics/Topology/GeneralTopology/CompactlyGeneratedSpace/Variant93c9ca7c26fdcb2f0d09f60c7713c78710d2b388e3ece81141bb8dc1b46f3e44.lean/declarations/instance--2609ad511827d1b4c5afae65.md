# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58c76a29690f862743ae49207c717abf91e0cef9932036844f6ac68f5be80e8f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2609ad511827d1b4c5afae65",
  "source": {
    "blob": "d3d32971837ad75ce581df1c767f199fede62fa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2609ad511827d1b4c5afae655489e190b0dd436efcc2c4156b7f83ae3029c863",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58c76a29690f862743ae49207c717abf91e0cef9932036844f6ac68f5be80e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {ι : Type v} {X : ι → Type w} [∀ i, TopologicalSpace (X i)]
    [∀ i, UCompactlyGeneratedSpace.{u} (X i)] : UCompactlyGeneratedSpace.{u} (Σ i, X i) :=
  uCompactlyGeneratedSpace_of_isClosed fun _ h ↦ isClosed_sigma_iff.2 fun i ↦
    UCompactlyGeneratedSpace.isClosed fun S ⟨f, hf⟩ ↦
      h S ⟨Sigma.mk i ∘ f, continuous_sigmaMk.comp hf⟩

open OnePoint in
/-- A sequential space is compactly generated.

The proof is taken from <https://ncatlab.org/nlab/files/StricklandCGHWSpaces.pdf>,
Proposition 1.6. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d32971837ad75ce581df1c767f199fede62fa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
