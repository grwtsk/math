# ringConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8915dc9160017e05b88d8250b7e9ff994e54cc0f1019dd4d86ee79cdcbcd7622",
  "kind": "def",
  "lexical_name": "ringConvolution",
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
  "slug": "ringconvolution--7d6623564580b1920ec029ac",
  "source": {
    "blob": "8f3110fadd29439a0cc1b425bc885ddf741e580e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 311,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d6623564580b1920ec029ac43d7971ff2d0ba5793d5b505396a29ac8fa6bd40",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8915dc9160017e05b88d8250b7e9ff994e54cc0f1019dd4d86ee79cdcbcd7622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringConvolution (f g : M → R) : M → R :=
  convolution (.mul ℕ R) f g

/-- Notation for convolution using multiplication to combine values. -/
scoped notation:67 f:68 " ⋆ᵣ " g:67 => ringConvolution f g

/-- Notation for additive-index convolution using multiplication to combine values. -/
scoped notation:67 f:68 " ⋆ᵣ₊ " g:67 => addRingConvolution f g

@[to_additive (dont_translate := R) (attr := simp) addRingConvolution_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3110fadd29439a0cc1b425bc885ddf741e580e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
