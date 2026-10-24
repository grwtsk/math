# finDimVectorspaceEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:024429433b87f09fa3b3a177226afebe06685aef190bd862f15c3785deb58ea5",
  "kind": "def",
  "lexical_name": "finDimVectorspaceEquiv",
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
  "slug": "findimvectorspaceequiv--838ca080fe734a39ab91e1ba",
  "source": {
    "blob": "4356ac7963502d732cd41f5f77d20f93fc3f396b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 338,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:838ca080fe734a39ab91e1ba31c31ff4055209f9707c86d1041528bbb888dbc5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:024429433b87f09fa3b3a177226afebe06685aef190bd862f15c3785deb58ea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finDimVectorspaceEquiv (n : ℕ) (hn : Module.rank R M = n) : M ≃ₗ[R] Fin n → R := by
  haveI := nontrivial_of_invariantBasisNumber R
  have : Cardinal.lift.{u} (n : Cardinal.{v}) = Cardinal.lift.{v} (n : Cardinal.{u}) := by simp
  have hn := Cardinal.lift_inj.{v, u}.2 hn
  rw [this] at hn
  rw [← @rank_fin_fun R _ _ n] at hn
  haveI : Module.Free R (Fin n → R) := Module.Free.pi _ _
  exact Classical.choice (nonempty_linearEquiv_of_lift_rank_eq hn)

end Pi

section TensorProduct

open TensorProduct

variable [StrongRankCondition R] [StrongRankCondition S]
variable [Module S M] [Module S M'] [Module.Free S M']
variable [Module S M₁] [Module.Free S M₁]
variable [Algebra S R] [IsScalarTower S R M] [Module.Free R M]

open Module.Free

/-- The `S`-rank of `M ⊗[R] M'` is `(Module.rank S M).lift * (Module.rank R M').lift`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4356ac7963502d732cd41f5f77d20f93fc3f396b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
