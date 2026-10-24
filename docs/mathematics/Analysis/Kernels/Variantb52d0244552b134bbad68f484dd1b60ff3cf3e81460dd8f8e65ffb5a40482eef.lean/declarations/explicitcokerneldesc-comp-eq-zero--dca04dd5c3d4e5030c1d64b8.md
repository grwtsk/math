# explicitCokernelDesc_comp_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ba49dcfea7cf226fd95c7c0b531ce8f5a30270f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff938d82-5b9c-22cc-9772-9e7f12c6f396",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd13dcc8-a0a5-43e4-fd65-6b1426bb62cc",
  "kind": "theorem",
  "lexical_name": "explicitCokernelDesc_comp_eq_zero",
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
  "slug": "explicitcokerneldesc-comp-eq-zero--dca04dd5c3d4e5030c1d64b8",
  "source": {
    "blob": "8ba49dcfea7cf226fd95c7c0b531ce8f5a30270f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 275,
    "path": "GRWTSK/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dca04dd5c3d4e5030c1d64b8240adc8b71e34968276fb3d1fe477e85aaaae690",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd13dcc8-a0a5-43e4-fd65-6b1426bb62cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicitCokernelDesc_comp_eq_zero {X Y Z W : SemiNormedGrp.{u}} {f : X ⟶ Y} {g : Y ⟶ Z}
    {h : Z ⟶ W} (cond : f ≫ g = 0) (cond2 : g ≫ h = 0) : explicitCokernelDesc cond ≫ h = 0 := by
  rw [← cancel_epi (explicitCokernelπ f), ← Category.assoc, explicitCokernelπ_desc]
  simp [cond2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variantb52d0244552b134bbad68f484dd1b60ff3cf3e81460dd8f8e65ffb5a40482eef.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ba49dcfea7cf226fd95c7c0b531ce8f5a30270f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
