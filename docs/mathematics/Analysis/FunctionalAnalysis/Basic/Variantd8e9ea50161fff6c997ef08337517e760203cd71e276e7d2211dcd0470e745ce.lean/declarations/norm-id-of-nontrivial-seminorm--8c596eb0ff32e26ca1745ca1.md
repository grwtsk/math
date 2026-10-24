# norm_id_of_nontrivial_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:066f7a8c-9e7c-f3de-af1e-a244578e5442",
  "kind": "theorem",
  "lexical_name": "norm_id_of_nontrivial_seminorm",
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
  "slug": "norm-id-of-nontrivial-seminorm--8c596eb0ff32e26ca1745ca1",
  "source": {
    "blob": "6d92fd8b01fa28068f068c152d2c6a9882cacd4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 279,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c596eb0ff32e26ca1745ca1e21eb7e7278a65268d9c2fd855819a63260ce9e0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:066f7a8c-9e7c-f3de-af1e-a244578e5442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_id_of_nontrivial_seminorm (h : ∃ x : E, ‖x‖ ≠ 0) : ‖id 𝕜 E‖ = 1 :=
  le_antisymm norm_id_le <| by
    let ⟨x, hx⟩ := h
    have := (id 𝕜 E).ratio_le_opNorm x
    rwa [id_apply, div_self hx] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd8e9ea50161fff6c997ef08337517e760203cd71e276e7d2211dcd0470e745ce.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d92fd8b01fa28068f068c152d2c6a9882cacd4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
