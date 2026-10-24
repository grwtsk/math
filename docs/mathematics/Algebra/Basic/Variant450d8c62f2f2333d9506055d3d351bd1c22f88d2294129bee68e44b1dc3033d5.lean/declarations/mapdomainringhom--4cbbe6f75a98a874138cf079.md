# mapDomainRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fec7219b06159273473440855343f16971fc48d67032dc32f3e8fdb97d65e7d9",
  "kind": "def",
  "lexical_name": "mapDomainRingHom",
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
  "slug": "mapdomainringhom--4cbbe6f75a98a874138cf079",
  "source": {
    "blob": "317900db788ea8d44ee009876588ce0b4d0a5759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1115,
    "line": 1099,
    "path": "GRWTSK/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cbbe6f75a98a874138cf079ce5215db6b67617ea103716c16640a9dc6cf9aa9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fec7219b06159273473440855343f16971fc48d67032dc32f3e8fdb97d65e7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1099–1115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapDomainRingHom [MulSemiringAction α β] [MulSemiringAction α₂ β]
    [MonoidHomClass F α α₂] {f : F} (hf : ∀ (a : α) (x : β), a • x = (f a) • x) :
    SkewMonoidAlgebra β α →+* SkewMonoidAlgebra β α₂ where
  __ := (mapDomain f : SkewMonoidAlgebra β α →+ SkewMonoidAlgebra β α₂)
  map_one' := mapDomain_one f
  map_mul' x y := mapDomain_mul x y hf

end MapDomain

section of

variable (k G)

variable [Monoid G] [MulSemiringAction G k]

set_option linter.style.whitespace false in -- manual alignment is not recognised
/-- The embedding of a monoid into its skew monoid algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant450d8c62f2f2333d9506055d3d351bd1c22f88d2294129bee68e44b1dc3033d5.lean#L1099).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317900db788ea8d44ee009876588ce0b4d0a5759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
