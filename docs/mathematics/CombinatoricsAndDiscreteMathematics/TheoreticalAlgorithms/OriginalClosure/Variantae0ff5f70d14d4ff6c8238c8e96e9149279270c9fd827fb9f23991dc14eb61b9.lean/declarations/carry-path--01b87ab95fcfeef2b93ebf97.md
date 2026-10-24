# carry_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51ffe787-f754-d9f7-cfd1-40be91192d83",
  "kind": "theorem",
  "lexical_name": "carry_path",
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
  "slug": "carry-path--01b87ab95fcfeef2b93ebf97",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15273,
    "line": 15253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01b87ab95fcfeef2b93ebf976f14839f6302864e54b6893c440aa4c3f3883b72",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ffe787-f754-d9f7-cfd1-40be91192d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15253–15273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carry_path {b : Bool} (hp : SignedPath (PrimaryEdge P) I J b)
    (hI : FeasibleProfile P I) (hv : ValidContext P Γ) (hc : ProofContext Γ γ)
    (hT : T.Target) (hm : WellModed γ T .data) (ht : SortedAt P Γ T I) :
    Carries (P := P) Γ γ T J := by
  induction hp generalizing Γ γ T with
  | nil I =>
    obtain ⟨s,hs⟩ := hI.1
    refine ⟨Γ,γ,Embedding.refl hv γ,hc,T,hT,hm,ht,?_⟩
    simpa only [Embedding.refl,Expr.rename_id] using Transfer.refl (γ := γ) (ht s hs)
  | @cons I J K b c he hp ih =>
    obtain ⟨Δ,δ,e,hΔ,U,hU,mU,tU,tr⟩ := W.carry_edge hv hc hT hm ht he
    obtain ⟨Θ,θ,f,hΘ,V,hV,mV,tV,tr'⟩ := ih (W.rename e) (edge_profiles he).2 e.valid hΔ hU mU tU
    obtain ⟨s,hs⟩ := hI.1
    obtain ⟨t,ht'⟩ := (edge_profiles he).2.1
    have htr := (tr.rename f (e.typing (ht s hs))).trans tr'
      (f.typing (e.typing (ht s hs))) (f.typing (tU t ht'))
    refine ⟨Θ,θ,e.comp f,hΘ,V,hV,mV,tV,?_⟩
    simpa only [Embedding.comp,Expr.rename_comp] using htr

/-- Terminal-converter existence. Both terminal types are the original,
fixed witnesses; only legal renaming is applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L15253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
