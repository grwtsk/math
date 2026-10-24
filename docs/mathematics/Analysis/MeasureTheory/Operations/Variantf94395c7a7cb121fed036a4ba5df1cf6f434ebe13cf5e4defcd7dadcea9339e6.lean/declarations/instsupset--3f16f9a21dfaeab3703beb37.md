# instSupSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2592be1672c6c7e597a0f234ec414ddb7ff2f1d49b8c1d0f2c9fda20e5ccf07d",
  "kind": "instance",
  "lexical_name": "instSupSet",
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
  "slug": "instsupset--3f16f9a21dfaeab3703beb37",
  "source": {
    "blob": "ed19fb4e2eb8617df2de9795ba160ff68da371b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 159,
    "path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f16f9a21dfaeab3703beb37365e092626ea9576b473e85b3bffed8d36047606",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2592be1672c6c7e597a0f234ec414ddb7ff2f1d49b8c1d0f2c9fda20e5ccf07d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSupSet : SupSet (OuterMeasure α) :=
  ⟨fun ms =>
    { measureOf := fun s => ⨆ m ∈ ms, (m : OuterMeasure α) s
      empty := nonpos_iff_eq_zero.1 <| iSup₂_le fun m _ => le_of_eq m.empty
      mono := fun {_ _} hs => iSup₂_mono fun m _ => m.mono hs
      iUnion_nat := fun f _ =>
        iSup₂_le fun m hm =>
          calc
            m (⋃ i, f i) ≤ ∑' i : ℕ, m (f i) := measure_iUnion_le _
            _ ≤ ∑' i, ⨆ m ∈ ms, (m : OuterMeasure α) (f i) :=
               ENNReal.tsum_le_tsum fun i => by apply le_iSup₂ m hm
             }⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed19fb4e2eb8617df2de9795ba160ff68da371b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
