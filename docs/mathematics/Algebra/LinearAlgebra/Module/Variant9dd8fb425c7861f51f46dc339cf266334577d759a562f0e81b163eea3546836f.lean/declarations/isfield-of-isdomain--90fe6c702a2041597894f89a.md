# isField_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14051f45c9135cc57e37c0df6f33b702e50ecb25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 531,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b3caa85-6485-eb4c-f2c4-c5a1347f292a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7cc0ca7-99b0-6bf1-6cda-e2c1429313ba",
  "kind": "lemma",
  "lexical_name": "isField_of_isDomain",
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
  "slug": "isfield-of-isdomain--90fe6c702a2041597894f89a",
  "source": {
    "blob": "14051f45c9135cc57e37c0df6f33b702e50ecb25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 531,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90fe6c702a2041597894f89ac50156bb64559b1e19cc04cfac16eddfefdb948d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7cc0ca7-99b0-6bf1-6cda-e2c1429313ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isField_of_isDomain [IsDomain R] : IsField R := by
  refine ⟨Nontrivial.exists_pair_ne, mul_comm, fun {x} hx ↦ ?_⟩
  obtain ⟨n, y, hy⟩ := IsArtinian.exists_pow_succ_smul_dvd x (1 : R)
  replace hy : x ^ n * (x * y - 1) = 0 := by
    rw [mul_sub, sub_eq_zero]
    convert! hy using 1
    simp [Nat.succ_eq_add_one, pow_add, mul_assoc]
  rw [mul_eq_zero, sub_eq_zero] at hy
  exact ⟨_, hy.resolve_left <| pow_ne_zero _ hx⟩

/- Does not hold in a commutative semiring:
consider {0, 0.5, 1} with ⊔ as + and ⊓ as *, then both {0} and {0, 0.5} are prime ideals. -/
-- Note: type class synthesis should try to synthesize `p.IsPrime` before `IsArtinianRing R`,
-- hence the argument order.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14051f45c9135cc57e37c0df6f33b702e50ecb25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
