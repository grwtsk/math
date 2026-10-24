# IsEvenlyCovered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62cf490b4ee4fd5aac40903de5c5d64bc6d12fbfe4c16c76395603d95de7a351",
  "kind": "def",
  "lexical_name": "IsEvenlyCovered",
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
  "slug": "isevenlycovered--04980e1967254fbf729515ae",
  "source": {
    "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04980e1967254fbf729515ae89f0f45d3f0bdaca972fc6b6c1799695ff12234f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62cf490b4ee4fd5aac40903de5c5d64bc6d12fbfe4c16c76395603d95de7a351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsEvenlyCovered (x : X) (I : Type*) [TopologicalSpace I] :=
  DiscreteTopology I ∧ ∃ U : Set X, x ∈ U ∧ IsOpen U ∧ IsOpen (f ⁻¹' U) ∧
    ∃ H : f ⁻¹' U ≃ₜ U × I, ∀ x, (H x).1.1 = f x

namespace IsEvenlyCovered

variable {f} {I : Type*} [TopologicalSpace I]

/-- If `x : X` is evenly covered by `f` with fiber `I`, then `I` is homeomorphic to `f ⁻¹' {x}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19662de3e595c9ce71ed4980b9b5d7fe3c51648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
