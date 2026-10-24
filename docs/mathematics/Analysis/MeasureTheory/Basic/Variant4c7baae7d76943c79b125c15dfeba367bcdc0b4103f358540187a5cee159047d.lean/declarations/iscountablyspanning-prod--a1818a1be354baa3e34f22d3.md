# IsCountablySpanning.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:349f4027-c919-a9ad-7b77-d05c147e0767",
  "kind": "lemma",
  "lexical_name": "IsCountablySpanning.prod",
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
  "slug": "iscountablyspanning-prod--a1818a1be354baa3e34f22d3",
  "source": {
    "blob": "a6c766545a214276fa64016ab4e945b8993605d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 386,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1818a1be354baa3e34f22d317bdff986bd7ac68ff67000f8ea6010ac895831b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:349f4027-c919-a9ad-7b77-d05c147e0767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCountablySpanning.prod {C : Set (Set α)} {D : Set (Set β)} (hC : IsCountablySpanning C)
    (hD : IsCountablySpanning D) : IsCountablySpanning (image2 (· ×ˢ ·) C D) := by
  rcases hC, hD with ⟨⟨s, h1s, h2s⟩, t, h1t, h2t⟩
  refine ⟨fun n => s n.unpair.1 ×ˢ t n.unpair.2, fun n => mem_image2_of_mem (h1s _) (h1t _), ?_⟩
  rw [iUnion_unpair_prod, h2s, h2t, univ_prod_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c766545a214276fa64016ab4e945b8993605d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
