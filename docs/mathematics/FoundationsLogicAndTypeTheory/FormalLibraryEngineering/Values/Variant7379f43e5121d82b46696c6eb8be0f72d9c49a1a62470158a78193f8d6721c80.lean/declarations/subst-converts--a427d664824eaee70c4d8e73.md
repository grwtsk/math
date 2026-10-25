# subst_converts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75f3f895-1357-63bd-3aab-193e6491f150",
  "kind": "theorem",
  "lexical_name": "subst_converts",
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
  "slug": "subst-converts--a427d664824eaee70c4d8e73",
  "source": {
    "blob": "2ca91d6c256582f8fb27e0815ad2c2415482da4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant7379f43e5121d82b46696c6eb8be0f72d9c49a1a62470158a78193f8d6721c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a427d664824eaee70c4d8e73dae03847832b988f79aa9d49124cfd2f74f53de2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant7379f43e5121d82b46696c6eb8be0f72d9c49a1a62470158a78193f8d6721c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75f3f895-1357-63bd-3aab-193e6491f150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subst_converts (hM : Scoped n M) {σ τ : Nat → Expr S}
    (hc : ∀ i, i < n → Converts (σ i) (τ i)) : Converts (M.subst σ) (M.subst τ) := by
  induction M generalizing n σ τ with
  | var i => exact hc i hM
  | sort s => exact .refl _
  | app f a ihf iha => exact .app (ihf hM.1 hc) (iha hM.2 hc)
  | lam A b ihA ihb | pi A b ihA ihb =>
    have he : ∀ i, i < n + 1 → Converts (Expr.liftSub σ i) (Expr.liftSub τ i) := by
      intro i hi
      cases i with
      | zero => exact .refl _
      | succ i => exact (hc i (Nat.lt_of_succ_lt_succ hi)).rename Nat.succ
    first
    | exact .lam (ihA hM.1 hc) (ihb hM.2 he)
    | exact .pi (ihA hM.1 hc) (ihb hM.2 he)
end Expr.Scoped

namespace Lookup
variable {S : Type u} {Γ : List (Expr S)} {n : Nat}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant7379f43e5121d82b46696c6eb8be0f72d9c49a1a62470158a78193f8d6721c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant7379f43e5121d82b46696c6eb8be0f72d9c49a1a62470158a78193f8d6721c80.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ca91d6c256582f8fb27e0815ad2c2415482da4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
