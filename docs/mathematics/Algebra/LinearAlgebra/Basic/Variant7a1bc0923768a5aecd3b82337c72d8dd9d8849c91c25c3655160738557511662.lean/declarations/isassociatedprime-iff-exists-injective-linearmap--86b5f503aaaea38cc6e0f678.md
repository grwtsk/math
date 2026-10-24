# isAssociatedPrime_iff_exists_injective_linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ba9f9aa-e051-6640-9872-5b701907296b",
  "kind": "theorem",
  "lexical_name": "isAssociatedPrime_iff_exists_injective_linearMap",
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
  "slug": "isassociatedprime-iff-exists-injective-linearmap--86b5f503aaaea38cc6e0f678",
  "source": {
    "blob": "652422749b11d56199447ed8205413199b72554c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b5f503aaaea38cc6e0f67816897586f222f40b49e02888326fbfb7b2ea79b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ba9f9aa-e051-6640-9872-5b701907296b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAssociatedPrime_iff_exists_injective_linearMap :
    IsAssociatedPrime I M ↔ I.IsPrime ∧ ∃ (f : R ⧸ I →ₗ[R] M), Function.Injective f := by
  rw [IsAssociatedPrime]
  congr! 1
  refine ⟨fun ⟨_, h⟩ ↦ ⟨Submodule.liftQ _ _ h.le, ker_eq_bot.1 (Submodule.ker_liftQ_eq_bot' _ _ h)⟩,
    fun ⟨f, h⟩ ↦ ⟨(f ∘ₗ Submodule.mkQ I) 1, ?_⟩⟩
  have := I.ker_mkQ ▸ ker_comp_of_ker_eq_bot (Submodule.mkQ I) (ker_eq_bot_of_injective h)
  convert this.symm using 2
  ext; simp

variable (R)

/-- The set of associated primes of a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652422749b11d56199447ed8205413199b72554c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
