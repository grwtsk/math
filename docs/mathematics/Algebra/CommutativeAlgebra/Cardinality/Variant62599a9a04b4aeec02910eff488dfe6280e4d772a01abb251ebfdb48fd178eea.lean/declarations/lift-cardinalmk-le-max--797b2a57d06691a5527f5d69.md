# lift_cardinalMk_le_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eef75eac83d8f86952edac058391ba056159a41e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45e1f361-3586-f9e9-9763-65b1096cd418",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01de8393-97ac-f1ec-68c0-5b1c9086d0f0",
  "kind": "theorem",
  "lexical_name": "lift_cardinalMk_le_max",
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
  "slug": "lift-cardinalmk-le-max--797b2a57d06691a5527f5d69",
  "source": {
    "blob": "eef75eac83d8f86952edac058391ba056159a41e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:797b2a57d06691a5527f5d695ab57b66bd24e3aec367a2a50235f75115e44f68",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01de8393-97ac-f1ec-68c0-5b1c9086d0f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_cardinalMk_le_max : lift.{u} #L ≤ lift.{v} #R ⊔ ℵ₀ :=
  calc
    lift.{u} #L ≤ #(Σ p : R[X], { x : L // x ∈ p.aroots L }) :=
      lift_cardinalMk_le_sigma_polynomial R L
    _ = Cardinal.sum fun p : R[X] => #{x : L | x ∈ p.aroots L} := by
      rw [← mk_sigma]; rfl
    _ ≤ Cardinal.sum.{u, v} fun _ : R[X] => ℵ₀ :=
      (sum_le_sum _ _ fun _ => (Multiset.finite_toSet _).lt_aleph0.le)
    _ = lift.{v} #(R[X]) * ℵ₀ := by rw [sum_const, lift_aleph0]
    _ ≤ lift.{v} (#R ⊔ ℵ₀) ⊔ ℵ₀ ⊔ ℵ₀ := (mul_le_max _ _).trans <| by
      gcongr; simp only [lift_le, Polynomial.cardinalMk_le_max]
    _ = _ := by simp

variable (L : Type u) [CommRing L] [IsDomain L] [Algebra R L]
variable [NoZeroSMulDivisors R L] [Algebra.IsAlgebraic R L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variant62599a9a04b4aeec02910eff488dfe6280e4d772a01abb251ebfdb48fd178eea.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eef75eac83d8f86952edac058391ba056159a41e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
