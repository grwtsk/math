# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f2aa9048709e6b291c507e8bee555b29e438a7c03af8d6c06ecc21ab340e843",
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
  "slug": "instance--ceae8d877d1cd9f912ad3cf4",
  "source": {
    "blob": "dc65b90540a9c1bf07ad1a652010acb8e22e7f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceae8d877d1cd9f912ad3cf4c95000d8b46eaf5f8ef81c1bf0662f97d2d227fe",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f2aa9048709e6b291c507e8bee555b29e438a7c03af8d6c06ecc21ab340e843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Fact (1 ≤ p)] [ClosedIciTopology E] : OrderClosedTopology (Lp E p μ) where
  isClosed_le' := isClosed_le_of_isClosed_nonneg <| IsSeqClosed.isClosed <|
      fun f f₀ (hf : ∀ n, 0 ≤ f n) h_tendsto ↦ by
    simp only [← coeFn_nonneg] at hf ⊢
    obtain ⟨φ, -, hφ⟩ := tendstoInMeasure_of_tendsto_Lp h_tendsto |>.exists_seq_tendsto_ae
    filter_upwards [countable_iInter_mem.mpr hf, hφ] with x hx hφx
    exact ge_of_tendsto' hφx fun _ ↦ Set.mem_iInter.mp hx _

end PartialOrder

section Lattice

variable [Lattice E] [HasSolidNorm E] [IsOrderedAddMonoid E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc65b90540a9c1bf07ad1a652010acb8e22e7f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
