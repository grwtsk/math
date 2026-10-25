# rename_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c46ffa2-0a45-2156-125c-d355179c2013",
  "kind": "theorem",
  "lexical_name": "rename_subst",
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
  "slug": "rename-subst--11e42323c2e4a241ea016de8",
  "source": {
    "blob": "fb94fd0dd3480169ef53bd8bba3ae8ec2131f268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e42323c2e4a241ea016de8cf6ed6abaa253863e4f255b41e0bf14aa2de361e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c46ffa2-0a45-2156-125c-d355179c2013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_subst (M : Expr S) (ρ : Nat → Nat) (σ : Nat → Expr S) :
    rename ρ (subst σ M) = subst (fun n => rename ρ (σ n)) M := by
  have hlift : ∀ (ρ : Nat → Nat) (σ : Nat → Expr S),
      (fun n => rename (liftRen ρ) (liftSub σ n)) =
        liftSub (fun n => rename ρ (σ n)) := by
    intro ρ σ
    funext n
    cases n with
    | zero => rfl
    | succ n =>
        simp only [liftSub_succ, rename_comp]
        rfl
  induction M generalizing ρ σ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [subst, rename, ihf, iha]
  | lam A b ihA ihb => simp only [subst, rename, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [subst, rename, ihA, ihB, hlift]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb94fd0dd3480169ef53bd8bba3ae8ec2131f268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
