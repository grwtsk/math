# instCanLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9abefbb0986b46156be1119f4bebc53a873a317e2fe62a613a06f5261ed4237",
  "kind": "instance",
  "lexical_name": "instCanLift",
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
  "slug": "instcanlift--72777b149ed8dc408d45b968",
  "source": {
    "blob": "e60d68ec52bed6bebc71bf574a6e15d10e478229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72777b149ed8dc408d45b968085223e7a0c758eaa4596fd6f2291f3a23c8775c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9abefbb0986b46156be1119f4bebc53a873a317e2fe62a613a06f5261ed4237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCanLift : CanLift (α → M) (α →₀ M) (⇑) fun f => (Function.support f).Finite where
  prf f hf := ⟨ofSupportFinite f hf, rfl⟩

end OfSupportFinite

/-! ### Declarations about `mapRange` -/


section MapRange

variable [Zero M] [Zero N] [Zero O]

/-- The composition of `f : M → N` and `g : α →₀ M` is `mapRange f hf g : α →₀ N`,
which is well-defined when `f 0 = 0`.

This preserves the structure on `f`, and exists in various bundled forms for when `f` is itself
bundled (defined in `Mathlib/Data/Finsupp/Basic.lean`):

* `Finsupp.mapRange.equiv`
* `Finsupp.mapRange.zeroHom`
* `Finsupp.mapRange.addMonoidHom`
* `Finsupp.mapRange.addEquiv`
* `Finsupp.mapRange.linearMap`
* `Finsupp.mapRange.linearEquiv`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60d68ec52bed6bebc71bf574a6e15d10e478229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
