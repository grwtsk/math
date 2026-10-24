# FG.exists_span_finset_card_eq_spanFinrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b356cd-9cce-d3cb-b44d-ba966375bb53",
  "kind": "theorem",
  "lexical_name": "FG.exists_span_finset_card_eq_spanFinrank",
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
  "slug": "fg-exists-span-finset-card-eq-spanfinrank--77779992c1ce8211ca860b0a",
  "source": {
    "blob": "712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77779992c1ce8211ca860b0a7f78386835e25dacc9823dbf75afc9ba201d5bcf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b356cd-9cce-d3cb-b44d-ba966375bb53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FG.exists_span_finset_card_eq_spanFinrank {p : Submodule R M} (h : p.FG) :
    ∃ s : Finset M, s.card = p.spanFinrank ∧ span R s = p := by
  obtain ⟨s, ⟨hs₁, hs₂⟩⟩ := exists_span_set_encard_eq_spanFinrank h
  have s_f := Set.finite_of_encard_eq_coe hs₁
  refine ⟨s_f.toFinset, ⟨?_, by simpa using hs₂⟩⟩
  simpa [s_f.encard_eq_coe_toFinset_card, ENat.natCast_inj] using hs₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
