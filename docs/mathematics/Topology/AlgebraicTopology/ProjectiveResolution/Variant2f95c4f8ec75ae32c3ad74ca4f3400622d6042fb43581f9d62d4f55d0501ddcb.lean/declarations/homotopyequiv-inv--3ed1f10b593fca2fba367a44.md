# homotopyEquiv_inv_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94282e6f5976cce6a365daf9b32f3eda2ec690c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1e2116a-858f-0a87-7a19-fee9e1ff05d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18ced984-7d8d-1b33-08da-8c16cdde11c4",
  "kind": "theorem",
  "lexical_name": "homotopyEquiv_inv_π",
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
  "slug": "homotopyequiv-inv--3ed1f10b593fca2fba367a44",
  "source": {
    "blob": "94282e6f5976cce6a365daf9b32f3eda2ec690c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 301,
    "path": "GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed1f10b593fca2fba367a44a04b3518da913e89fd3894365b7395cb3c12cd29",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ced984-7d8d-1b33-08da-8c16cdde11c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homotopyEquiv_inv_π {X : C} (P Q : ProjectiveResolution X) :
    (homotopyEquiv P Q).inv ≫ P.π = Q.π := by simp [homotopyEquiv]
set_option linter.uppercaseLean3 false in
#align category_theory.ProjectiveResolution.homotopy_equiv_inv_π CategoryTheory.ProjectiveResolution.homotopyEquiv_inv_π

end ProjectiveResolution

section

variable [HasZeroMorphisms C] [HasZeroObject C] [HasEqualizers C] [HasImages C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94282e6f5976cce6a365daf9b32f3eda2ec690c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
