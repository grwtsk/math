# der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe70af66-5ecf-9408-bdf6-2a4c3c5916bd",
  "kind": "theorem",
  "lexical_name": "der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append",
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
  "slug": "der-cons-replicate-i-replicate-u-append-of-der-cons-replicate-i-append--e17f8574686550b02dc2cc14",
  "source": {
    "blob": "3e20c6b7c3f9326d1ba00fe3472ea384bb45213c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17f8574686550b02dc2cc14e47cfa27da2c67d40a25dc57846d0a58a840b37e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe70af66-5ecf-9408-bdf6-2a4c3c5916bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append (c k : ℕ)
    (_ : c % 3 = 1 ∨ c % 3 = 2) (xs : Miustr)
    (hder : Derivable (↑(M :: replicate (c + 3 * k) I) ++ xs)) :
    Derivable (↑(M :: (replicate c I ++ replicate k U)) ++ xs) := by
  revert xs
  induction' k with a ha
  · simp only [replicate, zero_eq, mul_zero, add_zero, append_nil, forall_true_iff, imp_self]
  · intro xs
    specialize ha (U :: xs)
    intro h₂
    -- We massage the goal into a form amenable to the application of `ha`.
    rw [succ_eq_add_one, replicate_add, ← append_assoc, ← cons_append, replicate_one, append_assoc,
      singleton_append]
    apply ha
    apply Derivable.r3
    change Derivable (↑(M :: replicate (c + 3 * a) I) ++ ↑(replicate 3 I) ++ xs)
    rwa [cons_append, ← replicate_add, add_assoc]
set_option linter.uppercaseLean3 false in
#align miu.der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append Miu.der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append

/-!
### Arithmetic

We collect purely arithmetic lemmas: `add_mod2` is used to ensure we have an even number of `U`s
while `le_pow2_and_pow2_eq_mod3` treats the congruence condition modulo 3.
-/


section Arithmetic

/-- For every `a`, the number `a + a % 2` is even.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e20c6b7c3f9326d1ba00fe3472ea384bb45213c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
