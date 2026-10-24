# inf_mem_subalgebra_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42fddac2-89c0-0667-7a8e-882c0c36708c",
  "kind": "theorem",
  "lexical_name": "inf_mem_subalgebra_closure",
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
  "slug": "inf-mem-subalgebra-closure--4f7f1d2d1f7aa0dc23fdbcd1",
  "source": {
    "blob": "9b73e58fe46e3815e64fd69235c49ca3e651237e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f7f1d2d1f7aa0dc23fdbcd12ce4f19292627d76f3b27e8087407b9bbdb9f1a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42fddac2-89c0-0667-7a8e-882c0c36708c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_mem_subalgebra_closure (A : Subalgebra ℝ C(X, ℝ)) (f g : A) :
    (f : C(X, ℝ)) ⊓ (g : C(X, ℝ)) ∈ A.topologicalClosure := by
  rw [inf_eq_half_smul_add_sub_abs_sub' ℝ]
  refine
    A.topologicalClosure.smul_mem
      (A.topologicalClosure.sub_mem
        (A.topologicalClosure.add_mem (A.le_topologicalClosure f.property)
          (A.le_topologicalClosure g.property))
        ?_)
      _
  exact mod_cast abs_mem_subalgebra_closure A _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b73e58fe46e3815e64fd69235c49ca3e651237e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
