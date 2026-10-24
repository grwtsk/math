# divisors_subset_properDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e75d45b-bb8b-9a7a-f43f-60ba1ed51373",
  "kind": "theorem",
  "lexical_name": "divisors_subset_properDivisors",
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
  "slug": "divisors-subset-properdivisors--3f9214f48af2153a0bdd32df",
  "source": {
    "blob": "2452289746e4e9e2cb6884ad32cee1cc207eb106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f9214f48af2153a0bdd32dfee53211b751b32233477a08832c5eda01a1e298a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e75d45b-bb8b-9a7a-f43f-60ba1ed51373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisors_subset_properDivisors {m : ℕ} (hzero : n ≠ 0) (h : m ∣ n) (hdiff : m ≠ n) :
    divisors m ⊆ properDivisors n := by
  apply Finset.subset_iff.2
  intro x hx
  exact
    Nat.mem_properDivisors.2
      ⟨(Nat.mem_divisors.1 hx).1.trans h,
        lt_of_le_of_lt (divisor_le hx)
          (lt_of_le_of_ne (divisor_le (Nat.mem_divisors.2 ⟨h, hzero⟩)) hdiff)⟩
#align nat.divisors_subset_proper_divisors Nat.divisors_subset_properDivisors

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2452289746e4e9e2cb6884ad32cee1cc207eb106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
