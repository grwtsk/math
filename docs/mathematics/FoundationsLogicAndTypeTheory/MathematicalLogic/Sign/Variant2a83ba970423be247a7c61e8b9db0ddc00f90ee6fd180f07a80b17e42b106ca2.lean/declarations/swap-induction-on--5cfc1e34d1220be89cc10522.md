# swap_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f78f3319-1fff-11b6-c25f-7c98077c6f9c",
  "kind": "theorem",
  "lexical_name": "swap_induction_on",
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
  "slug": "swap-induction-on--5cfc1e34d1220be89cc10522",
  "source": {
    "blob": "c096674d62f3cc92c25538e8b45a9a77f294cece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cfc1e34d1220be89cc10522676c4dedc3c23252e1fa1faba5188b0a56d12164",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f78f3319-1fff-11b6-c25f-7c98077c6f9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swap_induction_on [Finite α] {P : Perm α → Prop} (f : Perm α) :
    P 1 → (∀ f x y, x ≠ y → P f → P (swap x y * f)) → P f := by
  cases nonempty_fintype α
  cases' (truncSwapFactors f).out with l hl
  induction' l with g l ih generalizing f
  · simp (config := { contextual := true }) only [hl.left.symm, List.prod_nil, forall_true_iff]
  · intro h1 hmul_swap
    rcases hl.2 g (by simp) with ⟨x, y, hxy⟩
    rw [← hl.1, List.prod_cons, hxy.2]
    exact
      hmul_swap _ _ _ hxy.1
        (ih _ ⟨rfl, fun v hv => hl.2 _ (List.mem_cons_of_mem _ hv)⟩ h1 hmul_swap)
#align equiv.perm.swap_induction_on Equiv.Perm.swap_induction_on

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c096674d62f3cc92c25538e8b45a9a77f294cece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
