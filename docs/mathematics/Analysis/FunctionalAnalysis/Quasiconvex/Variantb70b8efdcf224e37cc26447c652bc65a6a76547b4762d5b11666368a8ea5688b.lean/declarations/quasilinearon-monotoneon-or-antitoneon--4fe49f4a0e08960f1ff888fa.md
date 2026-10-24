# QuasilinearOn.monotoneOn_or_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20a1481c-f2e1-6db5-27a5-074bc39845e1",
  "kind": "theorem",
  "lexical_name": "QuasilinearOn.monotoneOn_or_antitoneOn",
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
  "slug": "quasilinearon-monotoneon-or-antitoneon--4fe49f4a0e08960f1ff888fa",
  "source": {
    "blob": "137760ac5e23239690200862fd9a04371b9153a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 215,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fe49f4a0e08960f1ff888fa9c89963bcb81d9cc033ba8853ff89a07633cf949",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20a1481c-f2e1-6db5-27a5-074bc39845e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuasilinearOn.monotoneOn_or_antitoneOn [LinearOrder β] (hf : QuasilinearOn 𝕜 s f) :
    MonotoneOn f s ∨ AntitoneOn f s := by
  simp_rw [monotoneOn_or_antitoneOn_iff_uIcc, ← segment_eq_uIcc]
  rintro a ha b hb c _ h
  refine ⟨((hf.2 _).segment_subset ?_ ?_ h).2, ((hf.1 _).segment_subset ?_ ?_ h).2⟩ <;> simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Quasiconvex/Variantb70b8efdcf224e37cc26447c652bc65a6a76547b4762d5b11666368a8ea5688b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `137760ac5e23239690200862fd9a04371b9153a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
