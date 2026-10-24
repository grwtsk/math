# units_smul_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d5adb2c64549aec98f6cf89cfaeedbd4d68997c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65cbc545-af51-0de9-bb8b-ed1ee3ff2cf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37b3254a-ac4e-07bf-27c6-438e4fb8e6d5",
  "kind": "theorem",
  "lexical_name": "units_smul_span_eq_top",
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
  "slug": "units-smul-span-eq-top--b933edc92ca3a38951594f26",
  "source": {
    "blob": "8d5adb2c64549aec98f6cf89cfaeedbd4d68997c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b933edc92ca3a38951594f260c89dbd9d6115458326aec01bf89d30298732dd0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37b3254a-ac4e-07bf-27c6-438e4fb8e6d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem units_smul_span_eq_top {v : ι → M} (hv : Submodule.span R (Set.range v) = ⊤) {w : ι → Rˣ} :
    Submodule.span R (Set.range (w • v)) = ⊤ :=
  groupSMul_span_eq_top hv

/-- Given a basis `v` and a map `w` such that for all `i`, `w i` is a unit, `unitsSMul`
provides the basis corresponding to `w • v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5adb2c64549aec98f6cf89cfaeedbd4d68997c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
