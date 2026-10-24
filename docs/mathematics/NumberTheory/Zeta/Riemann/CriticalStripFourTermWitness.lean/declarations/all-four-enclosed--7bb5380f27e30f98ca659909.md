# all_four_enclosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af19e87e-0175-a82c-a467-dade20baaea6",
  "kind": "lemma",
  "lexical_name": "all_four_enclosed",
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
  "slug": "all-four-enclosed--7bb5380f27e30f98ca659909",
  "source": {
    "blob": "ee0c19d3b626d8905bbbbc493376edbb8674c88f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb5380f27e30f98ca659909a390901d88b5515440b49f7d3fbaa0e4b27d9693",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af19e87e-0175-a82c-a467-dade20baaea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma all_four_enclosed (k : ℕ) (hk : k ∈ Finset.Icc 1 4) :
    ‖(k : ℂ) ^ (-center) - value k‖ ≤ (1 / 64 : ℝ) := by
  have hk' := Finset.mem_Icc.mp hk
  rcases hk' with ⟨hlo, hhi⟩
  interval_cases k
  · norm_num [value]
  · exact power_two_enclosed
  · exact power_three_enclosed
  · exact power_four_enclosed

/-- Every source index and the endpoint are explicitly populated by theorems above.
The constant error at k=1 is conservative, not a missing-source convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0c19d3b626d8905bbbbc493376edbb8674c88f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
