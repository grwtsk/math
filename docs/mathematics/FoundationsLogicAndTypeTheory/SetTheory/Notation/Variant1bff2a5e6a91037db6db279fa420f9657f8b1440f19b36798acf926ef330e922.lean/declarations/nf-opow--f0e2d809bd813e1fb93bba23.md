# nf_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c58a1c0f01cc96aaf89ed3d0ae61a8f561e459a37b066a4dba2be13a6ea1b0d",
  "kind": "instance",
  "lexical_name": "nf_opow",
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
  "slug": "nf-opow--f0e2d809bd813e1fb93bba23",
  "source": {
    "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 824,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0e2d809bd813e1fb93bba234ea0a74870e4568fd079f802bcc8942e2b5875e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c58a1c0f01cc96aaf89ed3d0ae61a8f561e459a37b066a4dba2be13a6ea1b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nf_opow (o₁ o₂) [NF o₁] [NF o₂] : NF (o₁ ^ o₂) := by
  cases' e₁ : split o₁ with a m
  have na := (nf_repr_split e₁).1
  cases' e₂ : split' o₂ with b' k
  haveI := (nf_repr_split' e₂).1
  cases' a with a0 n a'
  · cases' m with m
    · by_cases o₂ = 0 <;> simp [(· ^ ·), Pow.pow, pow, opow, opowAux2, *]
    · by_cases m = 0
      · simp only [(· ^ ·), Pow.pow, pow, opow, opowAux2, *, zero_def]
      · simp only [(· ^ ·), Pow.pow, pow, opow, opowAux2, mulNat_eq_mul, ofNat, *]
        infer_instance
  · simp [(· ^ ·),Pow.pow,pow, opow, opowAux2, e₁, e₂, split_eq_scale_split' e₂]
    have := na.fst
    cases' k with k <;> simp
    · infer_instance
    · cases k <;> cases m <;> infer_instance
#align onote.NF_opow ONote.nf_opow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662748c0fa51663685efded4a2e2a9ee5ad80563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
