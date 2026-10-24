# instLocallyFiniteOrderTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fddf75f1ae1487898b6f0468239f5fd8039aa8166cab2489feb8ac0097ffc2b",
  "kind": "instance",
  "lexical_name": "instLocallyFiniteOrderTop",
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
  "slug": "instlocallyfiniteordertop--e49c161d547365058ebf226f",
  "source": {
    "blob": "65aab88bc027f2ab723f46686e7b1c1b6a02e2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e49c161d547365058ebf226f02c53f911f3954ce36c0bbaef00fdad17bdae687",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fddf75f1ae1487898b6f0468239f5fd8039aa8166cab2489feb8ac0097ffc2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLocallyFiniteOrderTop : LocallyFiniteOrderTop (Σ i, α i) where
  finsetIci | ⟨i, a⟩ => (Ici a).map (Embedding.sigmaMk i)
  finsetIoi | ⟨i, a⟩ => (Ioi a).map (Embedding.sigmaMk i)
  finset_mem_Ici := fun ⟨i, a⟩ ⟨j, b⟩ => by
    obtain rfl | hij := eq_or_ne i j
    · simp
    · simp [hij, le_def]
  finset_mem_Ioi := fun ⟨i, a⟩ ⟨j, b⟩ => by
    obtain rfl | hij := eq_or_ne i j
    · simp
    · simp [hij, lt_def]

variable (i : ι) (a : α i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65aab88bc027f2ab723f46686e7b1c1b6a02e2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
