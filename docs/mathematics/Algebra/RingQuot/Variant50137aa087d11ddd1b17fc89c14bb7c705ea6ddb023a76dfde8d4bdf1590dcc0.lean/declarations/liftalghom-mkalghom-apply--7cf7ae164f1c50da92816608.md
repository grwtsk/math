# liftAlgHom_mkAlgHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d456bbce45029f935ba732070b78af764ae897da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 692,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df58460f-391a-6859-2abc-b1149738a8a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fa0d740-5be5-0a1c-2a3b-d3e74185d40e",
  "kind": "theorem",
  "lexical_name": "liftAlgHom_mkAlgHom_apply",
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
  "slug": "liftalghom-mkalghom-apply--7cf7ae164f1c50da92816608",
  "source": {
    "blob": "d456bbce45029f935ba732070b78af764ae897da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 692,
    "path": "GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf7ae164f1c50da92816608c90d95a7d476bb62c3b493d37a6869be147b89a6",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa0d740-5be5-0a1c-2a3b-d3e74185d40e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftAlgHom_mkAlgHom_apply (f : A →ₐ[S] B) {s : A → A → Prop}
    (w : ∀ ⦃x y⦄, s x y → f x = f y) (x) : (liftAlgHom S ⟨f, w⟩) ((mkAlgHom S s) x) = f x := by
  simp_rw [liftAlgHom_def, preLiftAlgHom_def, mkAlgHom_def, mkRingHom_def]
  rfl
#align ring_quot.lift_alg_hom_mk_alg_hom_apply RingQuot.liftAlgHom_mkAlgHom_apply

-- note this is essentially `(liftAlgHom S).symm_apply_eq.mp h`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d456bbce45029f935ba732070b78af764ae897da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
