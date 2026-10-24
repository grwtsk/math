# checkPartitionDomainValid_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10d922fc-5a2b-755b-6566-5f244e803572",
  "kind": "theorem",
  "lexical_name": "checkPartitionDomainValid_correct",
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
  "slug": "checkpartitiondomainvalid-correct--b67f24274e6df13bfb774a82",
  "source": {
    "blob": "21dc0ee17918724bacc9ee2a78d079fc5730702c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b67f24274e6df13bfb774a82440d461a7f98f718837e90edbd9be936c7fa5c21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d922fc-5a2b-755b-6566-5f244e803572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkPartitionDomainValid_correct (e : Expr) (I : IntervalRat) (n : ℕ) (hn : 0 < n)
    (cfg : DyadicConfig) :
    checkPartitionDomainValid e I n hn cfg = true → partitionDomainValid e I n hn cfg := by
  intro hcheck k hk
  unfold checkPartitionDomainValid at hcheck
  rw [List.all_eq_true] at hcheck
  set parts := uniformPartition I n hn with hparts
  have hk' : k < parts.length := by simp [hparts, uniformPartition]; exact hk
  have hmem : parts[k] ∈ parts := List.getElem_mem hk'
  have := hcheck _ hmem
  exact checkDomainValidDyadic_correct _ _ _ this

/-! ### Boolean checkers for native_decide -/

/-- Boolean checker for integral lower bounds using Dyadic evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21dc0ee17918724bacc9ee2a78d079fc5730702c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
