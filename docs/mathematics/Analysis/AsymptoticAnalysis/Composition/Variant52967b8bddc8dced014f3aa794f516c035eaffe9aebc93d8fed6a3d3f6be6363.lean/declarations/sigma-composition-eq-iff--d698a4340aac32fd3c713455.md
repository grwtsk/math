# sigma_composition_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:430f3a80-2bf1-79ea-3e80-e9d48c064b41",
  "kind": "theorem",
  "lexical_name": "sigma_composition_eq_iff",
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
  "slug": "sigma-composition-eq-iff--d698a4340aac32fd3c713455",
  "source": {
    "blob": "c6c9794abc494d790c095633044ce10546f8cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 951,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d698a4340aac32fd3c71345551d963c45c1d0ae8bed3b8ac9eed8ebcb90d174f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:430f3a80-2bf1-79ea-3e80-e9d48c064b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 951–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigma_composition_eq_iff (i j : Σ a : Composition n, Composition a.length) :
    i = j ↔ i.1.blocks = j.1.blocks ∧ i.2.blocks = j.2.blocks := by
  refine' ⟨by rintro rfl; exact ⟨rfl, rfl⟩, _⟩
  rcases i with ⟨a, b⟩
  rcases j with ⟨a', b'⟩
  rintro ⟨h, h'⟩
  have H : a = a' := by ext1; exact h
  induction H; congr; ext1; exact h'
#align composition.sigma_composition_eq_iff Composition.sigma_composition_eq_iff

/-- Rewriting equality in the dependent type
`Σ (c : composition n), Π (i : fin c.length), composition (c.blocks_fun i)` in
non-dependent terms with lists, requiring that the lists of blocks coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean#L951).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c9794abc494d790c095633044ce10546f8cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
