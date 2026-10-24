# closureHasCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5da29e849e9c1471705a0a9bbe52abde1610485",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbcb10f0-b5db-3e98-a63a-64c201f132cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28cd0868-c3cc-0852-098a-44861fe1869b",
  "kind": "theorem",
  "lexical_name": "closureHasCore",
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
  "slug": "closurehascore--ad18b96de883cd0948e83c32",
  "source": {
    "blob": "e5da29e849e9c1471705a0a9bbe52abde1610485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad18b96de883cd0948e83c32cada919ed63e89c60a286cfbee87f1b8fcefec85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28cd0868-c3cc-0852-098a-44861fe1869b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closureHasCore (f : E →ₗ.[R] F) : f.closure.HasCore f.domain := by
  refine ⟨f.le_closure.1, ?_⟩
  congr
  ext x h1 h2
  · simp only [domRestrict_domain, Submodule.mem_inf, and_iff_left_iff_imp]
    intro hx
    exact f.le_closure.1 hx
  let z : f.closure.domain := ⟨x, f.le_closure.1 h2⟩
  have hyz : x = z := rfl
  rw [f.le_closure.2 hyz]
  exact domRestrict_apply hyz

end Basic

/-! ### Topological properties of the inverse -/

section Inverse

variable {f : E →ₗ.[R] F}

/-- The inverse of `f : LinearPMap` is closed if and only if `f` is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variant23954679bd8b37b16ccabda6b15d77464b62f59324a8dcb2d35204af6889a0b1.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5da29e849e9c1471705a0a9bbe52abde1610485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
