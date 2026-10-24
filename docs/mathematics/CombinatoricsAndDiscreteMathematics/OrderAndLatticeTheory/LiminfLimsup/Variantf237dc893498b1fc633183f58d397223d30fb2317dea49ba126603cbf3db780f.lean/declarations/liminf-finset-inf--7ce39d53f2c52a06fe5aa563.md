# liminf_finset_inf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bafae0e-8d8d-2a7d-1a0f-7444787b9748",
  "kind": "theorem",
  "lexical_name": "liminf_finset_inf'",
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
  "slug": "liminf-finset-inf--7ce39d53f2c52a06fe5aa563",
  "source": {
    "blob": "173d0bad9d00e578f33453660721cea0cdeb4dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1198,
    "line": 1192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ce39d53f2c52a06fe5aa563a3feed556a36bd9e6ed56a1d9c54fe84eb94fb52",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bafae0e-8d8d-2a7d-1a0f-7444787b9748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1192–1198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liminf_finset_inf' [ConditionallyCompleteLinearOrder β] {f : Filter α}
    {F : ι → α → β} {s : Finset ι} (hs : s.Nonempty)
    (h₁ : ∀ i ∈ s, f.IsCoboundedUnder (· ≥ ·) (F i) := by exact fun _ _ ↦ by isBoundedDefault)
    (h₂ : ∀ i ∈ s, f.IsBoundedUnder (· ≥ ·) (F i) := by exact fun _ _ ↦ by isBoundedDefault) :
    liminf (fun a ↦ inf' s hs (fun i ↦ F i a)) f = inf' s hs (fun i ↦ liminf (F i) f) :=
  limsup_finset_sup' (β := βᵒᵈ) hs h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean#L1192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `173d0bad9d00e578f33453660721cea0cdeb4dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
