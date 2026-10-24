# finite_nonempty_inter_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9ba6b8d-b27d-c675-45fa-3dc36f0c4d5a",
  "kind": "theorem",
  "lexical_name": "finite_nonempty_inter_compact",
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
  "slug": "finite-nonempty-inter-compact--44b62abe4a7b89800e6ce597",
  "source": {
    "blob": "59a41f90be69b4d1855bfd0cbb7260d6e5de3f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44b62abe4a7b89800e6ce5976a2fd0aea892285d371bca9e9b9ceeb1ebe3a4a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ba6b8d-b27d-c675-45fa-3dc36f0c4d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_nonempty_inter_compact {f : ι → Set X}
    (hf : LocallyFinite f) (hs : IsCompact s) : { i | (f i ∩ s).Nonempty }.Finite := by
  choose U hxU hUf using hf
  rcases hs.elim_nhds_subcover U fun x _ => hxU x with ⟨t, -, hsU⟩
  refine (t.finite_toSet.biUnion fun x _ => hUf x).subset ?_
  rintro i ⟨x, hx⟩
  rcases mem_iUnion₂.1 (hsU hx.2) with ⟨c, hct, hcx⟩
  exact mem_biUnion hct ⟨x, hx.1, hcx⟩

/-- If `X` is a compact space, then a locally finite family of sets of `X` can have only finitely
many nonempty elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a41f90be69b4d1855bfd0cbb7260d6e5de3f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
