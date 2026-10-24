# exist_integer_multiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93aacfc7d979e0401f5f988ab0f8d8cbaa41c268",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:483b0203-63f3-ce85-7f91-c445be8276ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73a84ae1-062f-fba0-e9a8-a910a8919614",
  "kind": "theorem",
  "lexical_name": "exist_integer_multiples",
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
  "slug": "exist-integer-multiples--201b67c490e8037e64687aee",
  "source": {
    "blob": "93aacfc7d979e0401f5f988ab0f8d8cbaa41c268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201b67c490e8037e64687aee4102025fdfd002c63a06a3e5479ff49a9f008963",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73a84ae1-062f-fba0-e9a8-a910a8919614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exist_integer_multiples {ι : Type*} (s : Finset ι) (f : ι → S) :
    ∃ b : M, ∀ i ∈ s, IsLocalization.IsInteger R ((b : R) • f i) := by
  have := Classical.propDecidable
  refine ⟨∏ i ∈ s, (sec M (f i)).2, fun i hi => ⟨?_, ?_⟩⟩
  · exact (∏ j ∈ s.erase i, (sec M (f j)).2) * (sec M (f i)).1
  rw [map_mul, sec_spec', ← mul_assoc, ← (algebraMap R S).map_mul, ← Algebra.smul_def]
  congr 2
  refine _root_.trans ?_ (map_prod (Submonoid.subtype M) _ _).symm
  rw [mul_comm, Submonoid.coe_finsetProd,
    -- Porting note: explicitly supplied `f`
    ← Finset.prod_insert (f := fun i => ((sec M (f i)).snd : R)) (s.notMem_erase i),
    Finset.insert_erase hi]
  rfl

/-- We can clear the denominators of a finite indexed family of fractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant8f8ceed776e4f72040f7f9db27674c0fdb760b31c1779ef2139c9bb1fc1502d7.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93aacfc7d979e0401f5f988ab0f8d8cbaa41c268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
