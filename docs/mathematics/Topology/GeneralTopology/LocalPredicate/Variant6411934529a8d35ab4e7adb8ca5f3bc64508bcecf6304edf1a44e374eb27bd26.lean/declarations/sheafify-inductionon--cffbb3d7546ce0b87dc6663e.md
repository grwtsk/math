# sheafify_inductionOn₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9705962-9330-1843-6fbd-bb5f1a01bb5c",
  "kind": "theorem",
  "lexical_name": "sheafify_inductionOn₂",
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
  "slug": "sheafify-inductionon--cffbb3d7546ce0b87dc6663e",
  "source": {
    "blob": "5a575600fd5be61fb4f15b0a2499cb0e7f578bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cffbb3d7546ce0b87dc6663e9a039cea64d348672e1295ded44dec6ec8dabbdd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9705962-9330-1843-6fbd-bb5f1a01bb5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sheafify_inductionOn₂ {X : TopCat} {T₁ T₂ T₃ : X → Type*}
    (P₁ : PrelocalPredicate T₁) (P₂ : PrelocalPredicate T₂) (P₃ : PrelocalPredicate T₃)
    (op : {x : X} → T₁ x → T₂ x → T₃ x)
    (hop : ∀ {U V : Opens X} {a : (x : U) → T₁ x} {b : (x : V) → T₂ x}, P₁.pred a → P₂.pred b →
      ∀ (p : (U ⊓ V : Opens X)), ∃ (W : Opens X) (ia : W ⟶ U) (ib : W ⟶ V),
      p.1 ∈ W ∧ P₃.pred fun x : W ↦ op (a (ia x)) (b (ib x)))
    {U : Opens X} {a : (x : U) → T₁ x} {b : (x : U) → T₂ x}
    (ha : P₁.sheafify.pred a) (hb : P₂.sheafify.pred b) :
    P₃.sheafify.pred (fun x : U ↦ op (a x) (b x)) := by
  intro x
  rcases ha x with ⟨Va, ma, ia, ha⟩
  rcases hb x with ⟨Vb, mb, ib, hb⟩
  rcases hop ha hb ⟨x, ma, mb⟩ with ⟨W, sa, sb, hx, hw⟩
  exact ⟨W, hx, sa ≫ ia, hw⟩

/-- For a binary operation (e.g. `x ↦ y ↦ x + y`) defined at each stalk, if a prelocal predicate is
closed under the operation on each open set, then the sheafified predicate is also closed under the
operation. See `sheafify_inductionOn₂` for the version with refinement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant6411934529a8d35ab4e7adb8ca5f3bc64508bcecf6304edf1a44e374eb27bd26.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a575600fd5be61fb4f15b0a2499cb0e7f578bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
