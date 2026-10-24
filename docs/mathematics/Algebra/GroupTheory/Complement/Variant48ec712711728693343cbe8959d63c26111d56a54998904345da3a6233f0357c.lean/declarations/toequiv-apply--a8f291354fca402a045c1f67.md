# toEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2286326f133eb1c336a1a176283276d195f533c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:714a701e-3d5f-8bad-c13e-1b01b297c419",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ec83805-c4c5-efe4-8cfa-935d4ef6763f",
  "kind": "theorem",
  "lexical_name": "toEquiv_apply",
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
  "slug": "toequiv-apply--a8f291354fca402a045c1f67",
  "source": {
    "blob": "2286326f133eb1c336a1a176283276d195f533c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 353,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8f291354fca402a045c1f67f89ec0e9ab60d3e43745a44f119f610db56ff6e5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ec83805-c4c5-efe4-8cfa-935d4ef6763f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toEquiv_apply {f : G ⧸ H → G} (hf : ∀ q, (f q : G ⧸ H) = q) (q : G ⧸ H) :
    (toEquiv (range_mem_leftTransversals hf) q : G) = f q := by
  refine' (Subtype.ext_iff.mp _).trans (Subtype.coe_mk (f q) ⟨q, rfl⟩)
  exact (toEquiv (range_mem_leftTransversals hf)).apply_eq_iff_eq_symm_apply.mpr (hf q).symm
#align subgroup.mem_left_transversals.to_equiv_apply Subgroup.MemLeftTransversals.toEquiv_apply
#align add_subgroup.mem_left_transversals.to_equiv_apply AddSubgroup.MemLeftTransversals.toEquiv_apply

/-- A left transversal can be viewed as a function mapping each element of the group
  to the chosen representative from that left coset. -/
@[to_additive "A left transversal can be viewed as a function mapping each element of the group
  to the chosen representative from that left coset."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variant48ec712711728693343cbe8959d63c26111d56a54998904345da3a6233f0357c.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2286326f133eb1c336a1a176283276d195f533c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
