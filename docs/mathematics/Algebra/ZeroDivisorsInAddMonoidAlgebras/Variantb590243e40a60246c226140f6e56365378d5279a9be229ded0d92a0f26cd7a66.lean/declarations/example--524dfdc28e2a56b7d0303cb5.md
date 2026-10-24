# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7936b72271d0c337b71479274cffcd425924fbabdeecc39a97859ff8fb528278",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--524dfdc28e2a56b7d0303cb5",
  "source": {
    "blob": "1a63ad49b59892eb9b3e9748d953b96e76029ef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 232,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:524dfdc28e2a56b7d0303cb56ac1d962632bb2f88f32466555010c7dbe94ca61",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7936b72271d0c337b71479274cffcd425924fbabdeecc39a97859ff8fb528278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬AddLeftMono (Lex (F →₀ F)) := by
  rintro ⟨h⟩
  refine (not_lt (α := Lex (F →₀ F))).mpr (@h (Finsupp.single (0 : F) (1 : F))
    (Finsupp.single 1 1) (Finsupp.single 0 1) ?_) ⟨1, ?_⟩
  · exact Or.inr ⟨0, by simp [(by boom : ∀ j : F, j < 0 ↔ False)]⟩
  · simp only [(by boom : ∀ j : F, j < 1 ↔ j = 0), ofLex_add, coe_add, Pi.add_apply, forall_eq,
      f010, f1, f110, add_zero, f011, f111, zero_add, and_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantb590243e40a60246c226140f6e56365378d5279a9be229ded0d92a0f26cd7a66.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a63ad49b59892eb9b3e9748d953b96e76029ef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
