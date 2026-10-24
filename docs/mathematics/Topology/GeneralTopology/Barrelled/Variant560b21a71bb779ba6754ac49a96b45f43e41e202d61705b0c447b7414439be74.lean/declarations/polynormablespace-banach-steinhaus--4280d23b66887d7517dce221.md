# PolynormableSpace.banach_steinhaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9c10b1-2522-4610-36d3-aa31c809e223",
  "kind": "theorem",
  "lexical_name": "PolynormableSpace.banach_steinhaus",
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
  "slug": "polynormablespace-banach-steinhaus--4280d23b66887d7517dce221",
  "source": {
    "blob": "11f39fb0884cb246608a950d2960e942e1491c64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4280d23b66887d7517dce22182395895a20c9b91d5b2f7fa4a84daa54cdb119e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9c10b1-2522-4610-36d3-aa31c809e223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem PolynormableSpace.banach_steinhaus
    (H : ∀ x, IsVonNBounded 𝕜₂ (range fun i ↦ 𝓕 i x)) :
    UniformEquicontinuous ((↑) ∘ 𝓕) := by
  have hp := PolynormableSpace.withSeminorms 𝕜₂ F
  refine hp.banach_steinhaus ?_
  simp_rw [hp.isVonNBounded_iff_seminorm_bddAbove, ← range_comp] at H
  exact fun q x ↦ H x q

variable [ContinuousSMul 𝕜₂ F]

/-- Given a sequence of continuous linear maps which converges pointwise and for which the
domain is barrelled, the Banach-Steinhaus theorem is used to guarantee that the limit map
is a *continuous* linear map as well.

This actually works for any *countably generated* filter instead of `atTop : Filter ℕ`,
but the proof ultimately goes back to sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f39fb0884cb246608a950d2960e942e1491c64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
