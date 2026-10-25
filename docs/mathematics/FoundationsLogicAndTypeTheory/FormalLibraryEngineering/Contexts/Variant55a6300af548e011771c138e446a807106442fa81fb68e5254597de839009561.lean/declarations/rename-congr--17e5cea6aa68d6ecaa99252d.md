# rename_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8c9e4bc-5589-c9d4-c6a9-2d3cf4375519",
  "kind": "theorem",
  "lexical_name": "rename_congr",
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
  "slug": "rename-congr--17e5cea6aa68d6ecaa99252d",
  "source": {
    "blob": "c9128b4afc20b13f1e3df9a9c02acefa5ea4f722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant55a6300af548e011771c138e446a807106442fa81fb68e5254597de839009561.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17e5cea6aa68d6ecaa99252db9c42ad3a75f18144ec84d6aacd7c6e7a2f3df08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant55a6300af548e011771c138e446a807106442fa81fb68e5254597de839009561.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8c9e4bc-5589-c9d4-c6a9-2d3cf4375519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_congr (h : Scoped n M) {ρ τ : Nat → Nat}
    (he : ∀ i, i < n → ρ i = τ i) : M.rename ρ = M.rename τ := by
  induction M generalizing n ρ τ with
  | var i => exact congrArg Expr.var (he i h)
  | sort _ => rfl
  | app M N ihM ihN => exact congrArg₂ Expr.app (ihM h.1 he) (ihN h.2 he)
  | lam A b ihA ihb | pi A b ihA ihb =>
      have hl : ∀ i, i < n+1 → liftRen ρ i = liftRen τ i := by
        intro i hi
        cases i with
        | zero => rfl
        | succ i => exact congrArg Nat.succ (he i (Nat.lt_of_succ_lt_succ hi))
      simp only [Expr.rename, ihA h.1 he, ihb h.2 hl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant55a6300af548e011771c138e446a807106442fa81fb68e5254597de839009561.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant55a6300af548e011771c138e446a807106442fa81fb68e5254597de839009561.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9128b4afc20b13f1e3df9a9c02acefa5ea4f722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
