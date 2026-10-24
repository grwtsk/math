# exists_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ebc20f4-0f23-d352-6731-76259c136cbd",
  "kind": "theorem",
  "lexical_name": "exists_zero",
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
  "slug": "exists-zero--5ff277ce705a2f1808ec5192",
  "source": {
    "blob": "c3da9282cf8b8c26b363496bee948863bfe1ec81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff277ce705a2f1808ec5192f6e8ef7c47069d98582d89284640e2eef35f75cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ebc20f4-0f23-d352-6731-76259c136cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_zero : ∃ z : α, ∀ a, a + z = a := by
  obtain ⟨a, ha⟩ := exists_idempotent (α := α)
  refine ⟨-(a + -a), fun x ↦ ?_⟩
  set z := -(a + -a)
  have k₁ : a = -(-a + z) := by nth_rw 1 [← robbins a a, ha]
  have k₂ (x) : a + x = -(-(a + x) + -(a + x + -a)) := by
    nth_rw 1 [← robbins (a + x) a, show a + x + a = a + a + x by ac_rfl, ha]
  have k₃ (x) : x = -(-(x + -a + z) + -(x + a)) := by
    nth_rw 1 [← robbins x (-a + z), ← k₁, add_assoc]
  have k₄ : -a = -(-(a + -a + -a) + a) := by
    nth_rw 1 [← robbins (-a) (a + -a), ← k₁]
    ac_rfl
  have k₅ : a = -(-(a + -a + z) + -a) := by nth_rw 1 [k₃ a, ha]
  have k₆ : a = -(-(a + -a + -a) + -a) := by
    nth_rw 1 [← robbins a (a + -a + -a), add_comm a (-(_ + _)), ← k₄, ← add_assoc, ← add_assoc, ha]
  have k₇ : -(a + -a + -a) = z := by rw [← robbins (-(a + -a + -a)) a, ← k₄, ← k₆, add_comm]
  have k₈ : -a = -(a + z) := by rw [k₄, k₇, add_comm]
  have k₉ : a + z = a := by
    rw [k₂ z, ← k₈]
    conv_rhs => rw [k₅]
    ac_rfl
  nth_rw 2 [k₃ x]
  rw [← robbins (x + z) a, add_assoc, add_comm z, k₉]
  ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Variantb87cc09a0ae2ab173002cdf849bcdff7accb87fa9c1c8776fe5713b96ea36bdd.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3da9282cf8b8c26b363496bee948863bfe1ec81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
