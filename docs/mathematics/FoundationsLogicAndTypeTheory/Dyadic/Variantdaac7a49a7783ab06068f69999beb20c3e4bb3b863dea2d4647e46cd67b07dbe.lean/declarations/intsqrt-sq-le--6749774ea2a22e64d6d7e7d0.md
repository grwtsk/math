# intSqrt_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5b11657-366a-3bcb-e5ab-4b5abb37bb1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a978a37-fc7b-27d7-0db4-7bc8dc7cb37d",
  "kind": "theorem",
  "lexical_name": "intSqrt_sq_le",
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
  "slug": "intsqrt-sq-le--6749774ea2a22e64d6d7e7d0",
  "source": {
    "blob": "8155d886cc441e2f488dc02954233f9c0e659c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 882,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6749774ea2a22e64d6d7e7d02bfbdcc7e3960f75c8de0c4d27ce36208da1c76a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a978a37-fc7b-27d7-0db4-7bc8dc7cb37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intSqrt_sq_le {n : Int} (hn : 0 ≤ n) : (intSqrt n) ^ 2 ≤ n := by
  simp only [intSqrt, not_lt.mpr hn, ↓reduceIte, intSqrtNat]
  have h := nat_sqrt_sq_le n.toNat
  calc ((Nat.sqrt n.toNat : ℤ) ^ 2 : ℤ)
      = ((Nat.sqrt n.toNat) ^ 2 : ℕ) := by norm_cast
    _ ≤ (n.toNat : ℤ) := Int.ofNat_le.mpr h
    _ = n := Int.toNat_of_nonneg hn

/-- n < (intSqrt n + 1) ^ 2 for n ≥ 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantdaac7a49a7783ab06068f69999beb20c3e4bb3b863dea2d4647e46cd67b07dbe.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8155d886cc441e2f488dc02954233f9c0e659c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
