# le_of_le_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84f42a39-7705-f43b-60ba-90388ea95f64",
  "kind": "theorem",
  "lexical_name": "le_of_le_le",
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
  "slug": "le-of-le-le--340e3b2657afb6c516d7c80f",
  "source": {
    "blob": "40b0d697ad536217bb26713595e598d5a79ed840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 617,
    "path": "GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340e3b2657afb6c516d7c80f741a80ca1fcd4ef2b016ead9dcef594cfb2dbb39",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f42a39-7705-f43b-60ba-90388ea95f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_le_le {x y z w : ℤ} (xz : x ≤ z) (yw : y ≤ w) : (⟨x, y⟩ : ℤ√d) ≤ ⟨z, w⟩ :=
  show Nonneg ⟨z - x, w - y⟩ from
    match z - x, w - y, Int.le.dest_sub xz, Int.le.dest_sub yw with
    | _, _, ⟨_, rfl⟩, ⟨_, rfl⟩ => trivial

open Int in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b0d697ad536217bb26713595e598d5a79ed840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
