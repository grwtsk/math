# reorderRestrictProd_restrict_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02b7ea6e540e2392f3c4e13f1fbf60bffced093e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e748667-d66a-6cda-71ae-4ec83a3da8cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aae409e-375e-e01c-9091-16b66146394a",
  "kind": "lemma",
  "lexical_name": "reorderRestrictProd_restrict_compl",
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
  "slug": "reorderrestrictprod-restrict-compl--ed69fdbf68505a34501e02ba",
  "source": {
    "blob": "02b7ea6e540e2392f3c4e13f1fbf60bffced093e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed69fdbf68505a34501e02ba3436e6cc04c0b129768e209df543f5692cfb8a7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aae409e-375e-e01c-9091-16b66146394a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reorderRestrictProd_restrict_compl (x : Sᶜ.restrict ⁻¹' (Sᶜ.restrict '' s)) :
    reorderRestrictProd S s ⟨⟨Sᶜ.restrict x, x.2⟩, fun i ↦ (x : Π j, α j) i⟩ = (x : Π j, α j) := by
  ext; simp [reorderRestrictProd]

/-- Homeomorphism between the set of functions that concide with a given set of functions away
from a given set `S`, and dependent functions away from `S` times any value on `S`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b7ea6e540e2392f3c4e13f1fbf60bffced093e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
