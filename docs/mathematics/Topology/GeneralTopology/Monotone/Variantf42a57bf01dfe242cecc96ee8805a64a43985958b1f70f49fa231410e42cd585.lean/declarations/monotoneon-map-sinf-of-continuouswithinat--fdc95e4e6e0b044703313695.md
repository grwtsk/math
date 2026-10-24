# MonotoneOn.map_sInf_of_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d50061b-e223-1c2e-fe5a-dd8f1bcae578",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.map_sInf_of_continuousWithinAt",
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
  "slug": "monotoneon-map-sinf-of-continuouswithinat--fdc95e4e6e0b044703313695",
  "source": {
    "blob": "1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc95e4e6e0b04470331369520b011a3538dfa605216c3208460c53b793bda37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d50061b-e223-1c2e-fe5a-dd8f1bcae578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.map_sInf_of_continuousWithinAt {f : α → β} {s : Set α}
    (Cf : ContinuousWithinAt f s (sInf s)) (Mf : MonotoneOn f s) (ftop : f ⊤ = ⊤) :
    f (sInf s) = sInf (f '' s) :=
  MonotoneOn.map_sSup_of_continuousWithinAt (α := αᵒᵈ) (β := βᵒᵈ) Cf Mf.dual ftop

/-- A monotone function `f` sending `top` to `top` and continuous at the infimum of a set sends
this infimum to the infimum of the image of this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
