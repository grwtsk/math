# exists_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f59450cc93c76f2e4af824c4b1914da9bac6a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d00d216-e970-100f-1c6c-116ac0b866d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bba4ec32-a790-85f0-143b-823c009bf218",
  "kind": "theorem",
  "lexical_name": "exists_inv",
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
  "slug": "exists-inv--08cc62caa3789890c2af8a76",
  "source": {
    "blob": "84f59450cc93c76f2e4af824c4b1914da9bac6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 198,
    "path": "GRWTSK/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08cc62caa3789890c2af8a761b8aea5c5e0b0bdee7fb8205429683b0d532de02",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba4ec32-a790-85f0-143b-823c009bf218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_inv {I : Ideal R} [hI : I.IsMaximal] :
    ∀ {a : R ⧸ I}, a ≠ 0 → ∃ b : R ⧸ I, a * b = 1 := by
  rintro ⟨a⟩ h
  rcases hI.exists_inv (mt eq_zero_iff_mem.2 h) with ⟨b, c, hc, abc⟩
  rw [mul_comm] at abc
  refine' ⟨mk _ b, Quot.sound _⟩
  simp only [Submodule.quotientRel_r_def]
  rw [← eq_sub_iff_add_eq'] at abc
  rwa [abc, ← neg_mem_iff (G := R) (H := I), neg_sub] at hc
#align ideal.quotient.exists_inv Ideal.Quotient.exists_inv

open Classical

/-- The quotient by a maximal ideal is a group with zero. This is a `def` rather than `instance`,
since users will have computable inverses in some applications.

See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Variant0d03d93767d6ec2b9d086d52b2e7d861bb3725f954d6afcb6a183ac4b7960a9b.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f59450cc93c76f2e4af824c4b1914da9bac6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
