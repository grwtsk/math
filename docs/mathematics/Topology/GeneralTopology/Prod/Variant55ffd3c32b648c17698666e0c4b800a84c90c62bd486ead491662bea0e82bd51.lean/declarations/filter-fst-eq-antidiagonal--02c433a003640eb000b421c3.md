# filter_fst_eq_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84d79bc25debecd5fdfdd8644d627348f1cb9c2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da01896f-0051-fbe2-a51e-00d56666999d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1ffe8f4-7e6a-f563-0316-5fc932d02257",
  "kind": "theorem",
  "lexical_name": "filter_fst_eq_antidiagonal",
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
  "slug": "filter-fst-eq-antidiagonal--02c433a003640eb000b421c3",
  "source": {
    "blob": "84d79bc25debecd5fdfdd8644d627348f1cb9c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c433a003640eb000b421c33fc5c7e41685742c1e378e0128cf441c2125eaa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1ffe8f4-7e6a-f563-0316-5fc932d02257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_fst_eq_antidiagonal (n m : A) [DecidablePred (· = m)] [Decidable (m ≤ n)] :
    {x ∈ antidiagonal n | x.fst = m} = if m ≤ n then {(m, n - m)} else ∅ := by
  ext ⟨a, b⟩
  suffices a = m → (a + b = n ↔ m ≤ n ∧ b = n - m) by
    rw [mem_filter, mem_antidiagonal, apply_ite (fun n ↦ (a, b) ∈ n), mem_singleton,
      Prod.mk_inj, ite_prop_iff_or]
    simpa [← and_assoc, @and_right_comm _ (a = _), and_congr_left_iff]
  rintro rfl
  constructor
  · rintro rfl
    exact ⟨le_add_right le_rfl, (add_tsub_cancel_left _ _).symm⟩
  · rintro ⟨h, rfl⟩
    exact add_tsub_cancel_of_le h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d79bc25debecd5fdfdd8644d627348f1cb9c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
