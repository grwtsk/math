# toHomeomorphOfIsInducing_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb865c8-866e-61c7-ea2d-27523ded26b8",
  "kind": "lemma",
  "lexical_name": "toHomeomorphOfIsInducing_symm_apply",
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
  "slug": "tohomeomorphofisinducing-symm-apply--51e18d8491e3627a4b30b1ce",
  "source": {
    "blob": "573e0982447a575324c02219bd5d1d369fec1086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 463,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51e18d8491e3627a4b30b1cedca0aefe1254753369cded84545c88f3ed000384",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb865c8-866e-61c7-ea2d-27523ded26b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toHomeomorphOfIsInducing_symm_apply (f : X ≃ Y) (hf : IsInducing f) :
    ⇑(f.toHomeomorphOfIsInducing hf).symm = f.symm := rfl

/-- If a bijective map `e : X ≃ Y` is continuous and open, then it is a homeomorphism. -/
@[simps! toEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573e0982447a575324c02219bd5d1d369fec1086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
