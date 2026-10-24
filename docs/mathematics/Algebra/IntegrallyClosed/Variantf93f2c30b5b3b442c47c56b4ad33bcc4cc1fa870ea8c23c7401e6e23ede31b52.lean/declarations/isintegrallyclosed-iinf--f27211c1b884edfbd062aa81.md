# IsIntegrallyClosed.iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b4b95bf96ee7bcf22fada3f29624483a4e2ecf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6abf412-682e-0ed1-de0a-89b510c85ea0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7228a87-c00e-2147-a9e4-1707ae0ab0a8",
  "kind": "theorem",
  "lexical_name": "IsIntegrallyClosed.iInf",
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
  "slug": "isintegrallyclosed-iinf--f27211c1b884edfbd062aa81",
  "source": {
    "blob": "5b4b95bf96ee7bcf22fada3f29624483a4e2ecf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f27211c1b884edfbd062aa81f3548809720dbb99a9374c6fa4006a694eca0366",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7228a87-c00e-2147-a9e4-1707ae0ab0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegrallyClosed.iInf {ι : Type*} (S : ι → Subalgebra R K)
    (h : ∀ i, IsIntegrallyClosed (S i)) :
    IsIntegrallyClosed (⨅ i, S i : Subalgebra R K) := by
  refine (isIntegrallyClosed_iff K).mpr (fun {x} hx ↦ CanLift.prf x (Algebra.mem_iInf.mpr ?_))
  intro i
  have le : (⨅ i : ι, S i : Subalgebra R K) ≤ S i := iInf_le S i
  algebraize [(Subalgebra.inclusion le).toRingHom]
  have : IsScalarTower ↥(⨅ i, S i) (S i) K := Subalgebra.inclusion.isScalarTower_right le K
  rcases (isIntegrallyClosed_iff K).mp (h i) hx.tower_top with ⟨⟨_, hin⟩, hy⟩
  rwa [← hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4b95bf96ee7bcf22fada3f29624483a4e2ecf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
