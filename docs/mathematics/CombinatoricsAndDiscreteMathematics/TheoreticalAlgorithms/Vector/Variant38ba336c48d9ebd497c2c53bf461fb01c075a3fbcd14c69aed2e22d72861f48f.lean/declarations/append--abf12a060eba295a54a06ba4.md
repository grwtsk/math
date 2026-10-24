# append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed56fd1e3df51f836a3e41cad1ab55830a9b5b650568fe1a004e560d776ddd7c",
  "kind": "def",
  "lexical_name": "append",
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
  "slug": "append--abf12a060eba295a54a06ba4",
  "source": {
    "blob": "458d2106d7b04a9e4698b720e19388b8b146b7f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abf12a060eba295a54a06ba4906a0fe1dbf55713859375f180db8f43095c71b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed56fd1e3df51f836a3e41cad1ab55830a9b5b650568fe1a004e560d776ddd7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def append {n m : Nat} : Vector α n → Vector α m → Vector α (n + m)
  | ⟨l₁, h₁⟩, ⟨l₂, h₂⟩ => ⟨l₁ ++ l₂, by simp [*]⟩
#align vector.append Vector.append

/- warning: vector.elim -> Vector.elim is a dubious translation:
lean 3 declaration is
  forall {α : Type.{u_1}} {C : forall {n : ℕ},
  (Vector.{u_1} α n) -> Sort.{u}}, (forall (l : List.{u_1} α),
  C (List.length.{u_1} α l) (Subtype.mk.{succ u_1} (List.{u_1} α)
  (fun (l_1 : List.{u_1} α) => Eq.{1} ℕ (List.length.{u_1} α l_1)
  (List.length.{u_1} α l)) l (Vector.Elim._proof_1.{u_1} α l))) ->
  (forall {n : ℕ} (v : Vector.{u_1} α n), C n v)
but is expected to have type
  forall {α : Type.{_aux_param_0}} {C : forall {n : ℕ}, (Vector.{_aux_param_0} α n) -> Sort.{u}},
  (forall (l : List.{_aux_param_0} α),
  C (List.length.{_aux_param_0} α l) (Subtype.mk.{succ _aux_param_0} (List.{_aux_param_0} α)
  (fun (l_1 : List.{_aux_param_0} α) => Eq.{1} ℕ (List.length.{_aux_param_0} α l_1)
  (List.length.{_aux_param_0} α l)) l (rfl.{1} ℕ (List.length.{_aux_param_0} α l)))) ->
  (forall {n : ℕ} (v : Vector.{_aux_param_0} α n), C n v)
Case conversion may be inaccurate. Consider using '#align vector.elim Vector.elimₓ'. -/
/-- Elimination rule for `Vector`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `458d2106d7b04a9e4698b720e19388b8b146b7f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
