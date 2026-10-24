# derivedLength_eq_derivedLengthOfIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cae02262568d84e33787eef50e909c5e51929a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:212c0eb6-55a3-7c02-e96a-f3119c1e2f03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cecd3b3-37d4-cc4c-98c9-6e3ab204ff64",
  "kind": "theorem",
  "lexical_name": "derivedLength_eq_derivedLengthOfIdeal",
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
  "slug": "derivedlength-eq-derivedlengthofideal--5078420433242d161682485e",
  "source": {
    "blob": "1cae02262568d84e33787eef50e909c5e51929a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 411,
    "path": "GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5078420433242d161682485edd0435c9dc28b326a4d33b22a5b150ec51df3043",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cecd3b3-37d4-cc4c-98c9-6e3ab204ff64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivedLength_eq_derivedLengthOfIdeal (I : LieIdeal R L) :
    derivedLength R I = derivedLengthOfIdeal R L I := by
  let s₁ := { k | derivedSeries R I k = ⊥ }
  let s₂ := { k | derivedSeriesOfIdeal R L k I = ⊥ }
  change sInf s₁ = sInf s₂
  congr; ext k; exact I.derivedSeries_eq_bot_iff k

variable {R L}

/-- Given a solvable Lie ideal `I` with derived series `I = D₀ ≥ D₁ ≥ ⋯ ≥ Dₖ = ⊥`, this is the
`k-1`th term in the derived series (and is therefore an Abelian ideal contained in `I`).

For a non-solvable ideal, this is the zero ideal, `⊥`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cae02262568d84e33787eef50e909c5e51929a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
