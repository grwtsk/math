# Submodule.mem_sSup_iff_exists_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450944ac-e21c-4094-d890-650a2f35f4f8",
  "kind": "theorem",
  "lexical_name": "Submodule.mem_sSup_iff_exists_finset",
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
  "slug": "submodule-mem-ssup-iff-exists-finset--a1db30a4f60e57a855d7d6c8",
  "source": {
    "blob": "9e13b35669b03c229d596164a54261c5d491f580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1db30a4f60e57a855d7d6c871b2df143d64a6d3f538fb5d983ad897451864ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450944ac-e21c-4094-d890-650a2f35f4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.mem_sSup_iff_exists_finset {S : Set (Submodule R M)} {m : M} :
    m ∈ sSup S ↔ ∃ s : Finset (Submodule R M), ↑s ⊆ S ∧ m ∈ ⨆ i ∈ s, i := by
  rw [sSup_eq_iSup, iSup_subtype', Submodule.mem_iSup_iff_exists_finset]
  refine ⟨fun ⟨s, hs⟩ ↦ ⟨s.map (Function.Embedding.subtype S), ?_, ?_⟩,
          fun ⟨s, hsS, hs⟩ ↦ ⟨s.preimage (↑) Subtype.coe_injective.injOn, ?_⟩⟩
  · simpa using fun x _ ↦ x.property
  · suffices m ∈ ⨆ (i) (hi : i ∈ S) (_ : ⟨i, hi⟩ ∈ s), i by simpa
    rwa [iSup_subtype']
  · have : ⨆ (i) (_ : i ∈ S ∧ i ∈ s), i = ⨆ (i) (_ : i ∈ s), i := by convert rfl; aesop
    simpa only [Finset.mem_preimage, iSup_subtype, iSup_and', this]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e13b35669b03c229d596164a54261c5d491f580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
