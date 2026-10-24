# span_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63cee373-e20c-d697-41d1-edbc4b445eec",
  "kind": "theorem",
  "lexical_name": "span_induction",
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
  "slug": "span-induction--974b1e9c4282043b37a63d9d",
  "source": {
    "blob": "29f56a3fa4b45053eb08e6e8f1dfc19d1294b988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:974b1e9c4282043b37a63d9d194ef5692e38e1e545450937739bb67721ad2caf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63cee373-e20c-d697-41d1-edbc4b445eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_induction {p : (x : M) → x ∈ span R s → Prop}
    (mem : ∀ (x) (h : x ∈ s), p x (subset_span h))
    (zero : p 0 (Submodule.zero_mem _))
    (add : ∀ x y hx hy, p x hx → p y hy → p (x + y) (Submodule.add_mem _ ‹_› ‹_›))
    (smul : ∀ (a : R) (x hx), p x hx → p (a • x) (Submodule.smul_mem _ _ ‹_›)) {x}
    (hx : x ∈ span R s) : p x hx := by
  let p : Submodule R M :=
    { carrier := { x | ∃ hx, p x hx }
      add_mem' := fun ⟨_, hpx⟩ ⟨_, hpy⟩ ↦ ⟨_, add _ _ _ _ hpx hpy⟩
      zero_mem' := ⟨_, zero⟩
      smul_mem' := fun r ↦ fun ⟨_, hpx⟩ ↦ ⟨_, smul r _ _ hpx⟩ }
  exact span_le (p := p) |>.mpr (fun y hy ↦ ⟨subset_span hy, mem y hy⟩) hx |>.elim fun _ ↦ id

/-- An induction principle for span membership. This is a version of `Submodule.span_induction`
for binary predicates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f56a3fa4b45053eb08e6e8f1dfc19d1294b988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
