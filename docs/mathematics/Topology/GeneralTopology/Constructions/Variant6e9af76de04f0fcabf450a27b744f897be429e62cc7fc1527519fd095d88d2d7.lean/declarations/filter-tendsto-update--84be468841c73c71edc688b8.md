# Filter.Tendsto.update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27450c3-7190-efef-541f-cae3fa488a94",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.update",
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
  "slug": "filter-tendsto-update--84be468841c73c71edc688b8",
  "source": {
    "blob": "2cb54758ec8ddec99a2bc28eff68d375f9ad1126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 955,
    "line": 950,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84be468841c73c71edc688b84c88a50f97e4a26cc87bab3b687dbac6c7b1ac06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a27450c3-7190-efef-541f-cae3fa488a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 950–955.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.update [DecidableEq ι] {l : Filter Y} {f : Y → ∀ i, A i} {x : ∀ i, A i}
    (hf : Tendsto f l (𝓝 x)) (i : ι) {g : Y → A i} {xi : A i} (hg : Tendsto g l (𝓝 xi)) :
    Tendsto (fun a => update (f a) i (g a)) l (𝓝 <| update x i xi) :=
  tendsto_pi_nhds.2 fun j => by rcases eq_or_ne j i with (rfl | hj) <;> simp [*, hf.apply_nhds]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant6e9af76de04f0fcabf450a27b744f897be429e62cc7fc1527519fd095d88d2d7.lean#L950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb54758ec8ddec99a2bc28eff68d375f9ad1126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
