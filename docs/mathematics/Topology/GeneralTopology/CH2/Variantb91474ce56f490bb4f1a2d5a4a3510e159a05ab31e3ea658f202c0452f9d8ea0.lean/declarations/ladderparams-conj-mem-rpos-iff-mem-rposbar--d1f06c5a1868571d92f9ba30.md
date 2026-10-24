# LadderParams.conj_mem_Rpos_iff_mem_RposBar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3043b6de-1028-cad2-ec8e-c367ff70e734",
  "kind": "lemma",
  "lexical_name": "LadderParams.conj_mem_Rpos_iff_mem_RposBar",
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
  "slug": "ladderparams-conj-mem-rpos-iff-mem-rposbar--d1f06c5a1868571d92f9ba30",
  "source": {
    "blob": "39e6e6fe603b42bd8f7af06c3bdf9e43a667fe84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f06c5a1868571d92f9ba30a4bb096963c9a5fad5fe58c2022c81951b9e3d2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3043b6de-1028-cad2-ec8e-c367ff70e734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LadderParams.conj_mem_Rpos_iff_mem_RposBar (l : LadderParams) {z : ℂ} :
    (starRingEnd ℂ) z ∈ l.Rpos ↔ z ∈ l.RposBar := by
  simp only [LadderParams.Rpos, LadderParams.RposBar, Set.mem_setOf_eq,
    Complex.conj_re, Complex.conj_im, Set.mem_Icc]
  constructor <;> rintro ⟨hre, h1, h2⟩ <;> exact ⟨hre, by linarith, by linarith⟩

/-- The open strip below the contour lies in the closed strip between `C` and `C̄`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e6e6fe603b42bd8f7af06c3bdf9e43a667fe84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
