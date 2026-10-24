# zorn_preorder₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4db7ff3-103f-124e-0983-cc7dce67ecdd",
  "kind": "theorem",
  "lexical_name": "zorn_preorder₀",
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
  "slug": "zorn-preorder--b52a944f61ea421fa4c2e1d2",
  "source": {
    "blob": "24e88af4c76edce5a22a6d587dbc37ea0b88cee1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b52a944f61ea421fa4c2e1d290e4af0f3bcbd42b69c85c4cdecb75ba835e316d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4db7ff3-103f-124e-0983-cc7dce67ecdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zorn_preorder₀ (s : Set α)
    (ih : ∀ (c) (_ : c ⊆ s), IsChain (· ≤ ·) c → ∃ ub ∈ s, ∀ z ∈ c, z ≤ ub) :
    ∃ m ∈ s, ∀ z ∈ s, m ≤ z → z ≤ m :=
  let ⟨⟨m, hms⟩, h⟩ :=
    @zorn_preorder s _ fun c hc =>
      let ⟨ub, hubs, hub⟩ :=
        ih (Subtype.val '' c) (fun _ ⟨⟨_, hx⟩, _, h⟩ => h ▸ hx)
          (by
            rintro _ ⟨p, hpc, rfl⟩ _ ⟨q, hqc, rfl⟩ hpq
            refine' hc hpc hqc fun t => hpq (Subtype.ext_iff.1 t))
      ⟨⟨ub, hubs⟩, fun ⟨y, hy⟩ hc => hub _ ⟨_, hc, rfl⟩⟩
  ⟨m, hms, fun z hzs hmz => h ⟨z, hzs⟩ hmz⟩
#align zorn_preorder₀ zorn_preorder₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e88af4c76edce5a22a6d587dbc37ea0b88cee1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
