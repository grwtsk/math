# Enclosure.excludes_pair_of_channel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89b6e142-fc11-a868-45f9-c6090167d9f7",
  "kind": "theorem",
  "lexical_name": "Enclosure.excludes_pair_of_channel",
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
  "slug": "enclosure-excludes-pair-of-channel--954538f716f21ba8403614e9",
  "source": {
    "blob": "1c40a38ede8c169a01b4cff9700b8586c3140646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 23,
    "path": "GRWTSK/Analysis/Complex/SymmetricPairChannelChoice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:954538f716f21ba8403614e91fbeb6ca20c0ef932b951af0750b2c541e893754",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89b6e142-fc11-a868-45f9-c6090167d9f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Enclosure.excludes_pair_of_channel {F P : ℂ → ℂ} {c d : ℂ}
    (C : Enclosure F P c d)
    (h : C.valueError < ‖even P c d‖ ∨ C.secantError < ‖odd P c d‖) :
    ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  intro hz
  obtain ⟨he,ho⟩ := (endpoints_zero_iff F c d).mp hz
  rcases h with h | h
  · have hb := C.even_error
    rw [he,zero_sub,norm_neg] at hb
    exact (not_le_of_gt h) hb
  · have hb := C.odd_error
    rw [ho,zero_sub,norm_neg] at hb
    exact (not_le_of_gt h) hb

end
namespace Rational

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPairChannelChoice.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c40a38ede8c169a01b4cff9700b8586c3140646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
