# eval_cons_eq_eval_of_eq_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1942bdc9-9084-f3ec-b5f1-3335939289c6",
  "kind": "theorem",
  "lexical_name": "eval_cons_eq_eval_of_eq_of_eq",
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
  "slug": "eval-cons-eq-eval-of-eq-of-eq--3a2df407506da8d5662a8e86",
  "source": {
    "blob": "62b1d5353ffe220d73c5ae7a065fe43c79a08bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 379,
    "path": "GRWTSK/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a2df407506da8d5662a8e8644b84b910deba50ce3a7c63f4785db27441e60e2",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1942bdc9-9084-f3ec-b5f1-3335939289c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_cons_eq_eval_of_eq_of_eq [CommGroupWithZero M] (r : ℤ) (x : M) {t t' l' : NF M}
    (h : NF.eval t = NF.eval t') (h' : ((r, x) ::ᵣ t').eval = NF.eval l') :
    ((r, x) ::ᵣ t).eval = NF.eval l' := by
  rw [← h', eval_cons, eval_cons, h]

end NF
end

/-! ### Negations of algebraic operations -/

@[expose] public meta section Sign
open Lean Qq

variable {v : Level} {M : Q(Type v)}

/-- Inductive type representing the options for the sign of an element in a type-expression `M`

If the sign is "-", then we also carry an expression for a field instance on `M`, to allow us to
construct that negation when needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b1d5353ffe220d73c5ae7a065fe43c79a08bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
