# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42849e5cd72dfc5a9b1bf1a564000ed5c02877a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:740ad5b2-ca3f-03a0-1f9a-a6239bafdc04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf057c9b-5783-9db8-5482-fd3d989dc911",
  "kind": "theorem",
  "lexical_name": "trans",
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
  "slug": "trans--b73aa4ba8d4df4f44cb8ed20",
  "source": {
    "blob": "42849e5cd72dfc5a9b1bf1a564000ed5c02877a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b73aa4ba8d4df4f44cb8ed20f7c4565c90fa5f5e9fbba024d921631f25dcc5ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf057c9b-5783-9db8-5482-fd3d989dc911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans {R : Type*} (A M : Type*) [Semiring R] [Semiring A] [Module R A]
    [AddCommMonoid M] [Module R M] [Module A M] [IsScalarTower R A M] :
    ∀ [Module.Finite R A] [Module.Finite A M], Module.Finite R M
  | ⟨⟨s, hs⟩⟩, ⟨⟨t, ht⟩⟩ =>
    ⟨Submodule.fg_def.2
        ⟨Set.image2 (· • ·) (↑s : Set A) (↑t : Set M),
          Set.Finite.image2 _ s.finite_toSet t.finite_toSet, by
          rw [Set.image2_smul, Submodule.span_smul_of_span_eq_top hs (↑t : Set M), ht,
            Submodule.restrictScalars_top]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42849e5cd72dfc5a9b1bf1a564000ed5c02877a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
