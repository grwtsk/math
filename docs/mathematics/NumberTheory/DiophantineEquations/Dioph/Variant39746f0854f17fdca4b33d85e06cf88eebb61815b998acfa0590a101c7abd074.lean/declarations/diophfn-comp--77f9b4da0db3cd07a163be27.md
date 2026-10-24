# diophFn_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e165375-4ac5-015b-40b9-e76f9e0fb270",
  "kind": "theorem",
  "lexical_name": "diophFn_comp",
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
  "slug": "diophfn-comp--77f9b4da0db3cd07a163be27",
  "source": {
    "blob": "bf1956a14f0558af61d22d906927310f409b5627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 503,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f9b4da0db3cd07a163be27036c51cad715e1cf9c2792f9d3a27606e651653f",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e165375-4ac5-015b-40b9-e76f9e0fb270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diophFn_comp {f : Vector3 ℕ n → ℕ} (df : DiophFn f) (g : Vector3 ((α → ℕ) → ℕ) n)
    (dg : VectorAllP DiophFn g) : DiophFn fun v => f fun i => g i v :=
  dioph_comp ((diophFn_vec _).1 df) ((fun v => v none)::fun i v => g i (v ∘ some)) <| by
    simp only [vectorAllP_cons]
    exact ⟨proj_dioph none, (vectorAllP_iff_forall _ _).2 fun i =>
          reindex_diophFn _ <| (vectorAllP_iff_forall _ _).1 dg _⟩

@[inherit_doc]
scoped notation:35 x " D∧ " y => Dioph.inter x y

@[inherit_doc]
scoped notation:35 x " D∨ " y => Dioph.union x y

@[inherit_doc]
scoped notation:30 "D∃" => Dioph.vec_ex1_dioph

/-- Local abbreviation for `Fin2.ofNat'` -/
scoped prefix:arg "&" => Fin2.ofNat'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1956a14f0558af61d22d906927310f409b5627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
