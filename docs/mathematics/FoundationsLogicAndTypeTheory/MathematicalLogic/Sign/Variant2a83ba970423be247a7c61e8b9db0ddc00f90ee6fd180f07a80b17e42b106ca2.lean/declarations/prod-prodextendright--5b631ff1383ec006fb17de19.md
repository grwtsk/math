# prod_prodExtendRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2eec1565-4c3b-dd7a-0275-7e4a15aa7eaf",
  "kind": "theorem",
  "lexical_name": "prod_prodExtendRight",
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
  "slug": "prod-prodextendright--5b631ff1383ec006fb17de19",
  "source": {
    "blob": "c096674d62f3cc92c25538e8b45a9a77f294cece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 711,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b631ff1383ec006fb17de19ccf329d031e9ab25d252077eaeda7d7508c4e27d",
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

Occurrence: `result:2eec1565-4c3b-dd7a-0275-7e4a15aa7eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_prodExtendRight {α : Type*} [DecidableEq α] (σ : α → Perm β) {l : List α}
    (hl : l.Nodup) (mem_l : ∀ a, a ∈ l) :
    (l.map fun a => prodExtendRight a (σ a)).prod = prodCongrRight σ := by
  ext ⟨a, b⟩ : 1
  -- We'll use induction on the list of elements,
  -- but we have to keep track of whether we already passed `a` in the list.
  suffices a ∈ l ∧ (l.map fun a => prodExtendRight a (σ a)).prod (a, b) = (a, σ a b) ∨
      a ∉ l ∧ (l.map fun a => prodExtendRight a (σ a)).prod (a, b) = (a, b) by
    obtain ⟨_, prod_eq⟩ := Or.resolve_right this (not_and.mpr fun h _ => h (mem_l a))
    rw [prod_eq, prodCongrRight_apply]
  clear mem_l
  induction' l with a' l ih
  · refine' Or.inr ⟨List.not_mem_nil _, _⟩
    rw [List.map_nil, List.prod_nil, one_apply]
  rw [List.map_cons, List.prod_cons, mul_apply]
  rcases ih (List.nodup_cons.mp hl).2 with (⟨mem_l, prod_eq⟩ | ⟨not_mem_l, prod_eq⟩) <;>
    rw [prod_eq]
  · refine' Or.inl ⟨List.mem_cons_of_mem _ mem_l, _⟩
    rw [prodExtendRight_apply_ne _ fun h : a = a' => (List.nodup_cons.mp hl).1 (h ▸ mem_l)]
  by_cases ha' : a = a'
  · rw [← ha'] at *
    refine' Or.inl ⟨l.mem_cons_self a, _⟩
    rw [prodExtendRight_apply_eq]
  · refine' Or.inr ⟨fun h => not_or_of_not ha' not_mem_l ((List.mem_cons).mp h), _⟩
    rw [prodExtendRight_apply_ne _ ha']
#align equiv.perm.prod_prod_extend_right Equiv.Perm.prod_prodExtendRight

section congr

variable [DecidableEq β] [Fintype β]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c096674d62f3cc92c25538e8b45a9a77f294cece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
