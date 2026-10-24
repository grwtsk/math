# exists_lower_bound_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d23c90c-0e82-b441-b031-5faa7f1ecb5b",
  "kind": "theorem",
  "lexical_name": "exists_lower_bound_image",
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
  "slug": "exists-lower-bound-image--f4e4c5b222c6a33c7fa56dde",
  "source": {
    "blob": "dc060d9b00f2031dbd22cc7a69738f94cb14bb68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e4c5b222c6a33c7fa56dde090b15f87d2262ec6710e8c3329df50b139121f5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d23c90c-0e82-b441-b031-5faa7f1ecb5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lower_bound_image [Nonempty α] [LinearOrder β] (s : Set α) (f : α → β)
    (h : s.Finite) : ∃ a : α, ∀ b ∈ s, f a ≤ f b := by
  rcases s.eq_empty_or_nonempty with rfl | hs
  · exact ‹Nonempty α›.elim fun a => ⟨a, fun _ => False.elim⟩
  · rcases Set.exists_min_image s f h hs with ⟨x₀, _, hx₀⟩
    exact ⟨x₀, fun x hx => hx₀ x hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant6a2c8af95a20939a3c8f79159a106b885657840f0b83e30303ee1b7f90a23b9f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc060d9b00f2031dbd22cc7a69738f94cb14bb68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
