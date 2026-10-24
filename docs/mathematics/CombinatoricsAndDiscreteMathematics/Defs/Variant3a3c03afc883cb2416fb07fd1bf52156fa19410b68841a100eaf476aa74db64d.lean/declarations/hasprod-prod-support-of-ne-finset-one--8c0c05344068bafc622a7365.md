# hasProd_prod_support_of_ne_finset_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d0131a0-a5d8-b284-4716-ce2074e0f36e",
  "kind": "theorem",
  "lexical_name": "hasProd_prod_support_of_ne_finset_one",
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
  "slug": "hasprod-prod-support-of-ne-finset-one--8c0c05344068bafc622a7365",
  "source": {
    "blob": "5eea642412efb00d245fe76f35f0cf065fb7d648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c0c05344068bafc622a7365a1e52d13a264f03115bc0c11d3d3d2854fd9c1f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d0131a0-a5d8-b284-4716-ce2074e0f36e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProd_prod_support_of_ne_finset_one (hf : ∀ b ∈ L.support, b ∉ s → f b = 1)
    [L.HasSupport] [DecidablePred (· ∈ L.support)] :
    HasProd f (∏ b ∈ (↑s ∩ L.support).toFinset, f b) L := by
  apply tendsto_nhds_of_eventually_eq
  have h1 : ⋂ b ∈ (↑s ∩ L.support), {s | b ∈ s} ∈ L.filter :=
    (L.filter.biInter_mem (Set.toFinite _)).mpr (fun b hb ↦ hb.2)
  filter_upwards [h1, L.eventually_le_support] with t ht ht'
  simp only [Set.mem_iInter] at ht
  apply Finset.prod_congr_of_eq_on_inter <;> grind

/-- If a function `f` is `1` outside of a finite set `s`, then it `HasProd` `∏ b ∈ s, f b`. -/
@[to_additive /-- If a function `f` vanishes outside of a finite set `s`, then it `HasSum`
`∑ b ∈ s, f b`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eea642412efb00d245fe76f35f0cf065fb7d648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
