# exists_signed_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:802ae46e-f84c-de98-ae12-001540b56ffa",
  "kind": "theorem",
  "lexical_name": "exists_signed_sum",
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
  "slug": "exists-signed-sum--72dad023a5d53f836c5d0823",
  "source": {
    "blob": "27b8aa54b75199235cede804583420dc66024948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 514,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72dad023a5d53f836c5d08231cb3383786ec14a50ad3dca040bd0fc05c264b91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:802ae46e-f84c-de98-ae12-001540b56ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_signed_sum {α : Type u_1} [DecidableEq α] (s : Finset α) (f : α → ℤ) :
    ∃ (β : Type u_1) (_ : Fintype β) (sgn : β → SignType) (g : β → α),
      (∀ b, g b ∈ s) ∧
        (Fintype.card β = ∑ a in s, (f a).natAbs) ∧
          ∀ a ∈ s, (∑ b, if g b = a then (sgn b : ℤ) else 0) = f a :=
  let ⟨β, t, sgn, g, hg, ht, hf⟩ := exists_signed_sum_aux s f
  ⟨t, inferInstance, fun b => sgn b, fun b => g b, fun b => hg b, by simp [ht], fun a ha =>
    (@sum_attach _ _ t _ fun b => ite (g b = a) (sgn b : ℤ) 0).trans <| hf _ ha⟩
#align exists_signed_sum exists_signed_sum

/-- We can decompose a sum of absolute value less than `n` into a sum of at most `n` signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b8aa54b75199235cede804583420dc66024948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
