# mulAction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:353af21d79561e51d26f1791ce9c4cb2e49c85ff476dfadc8d015f5927222d1a",
  "kind": "instance",
  "lexical_name": "mulAction'",
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
  "slug": "mulaction--3bc59dd4f83c2bf981c1ed76",
  "source": {
    "blob": "7621b3ea3b02554a2966c4684e294d1377212410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 108,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc59dd4f83c2bf981c1ed76070b4c1f941d7cf836fe853c5223f368ae5fc822",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:353af21d79561e51d26f1791ce9c4cb2e49c85ff476dfadc8d015f5927222d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulAction' {m : ∀ i, Monoid (α i)} [∀ i, MulAction (α i) (β i)] :
    @MulAction (∀ i, α i) (∀ i, β i)
      (@Pi.monoid ι α m) where
  smul := (· • ·)
  mul_smul _ _ _ := funext fun _ ↦ mul_smul _ _ _
  one_smul _ := funext fun _ ↦ one_smul _ _

end Pi

namespace Function

/-- Non-dependent version of `Pi.smul`. Lean gets confused by the dependent instance if this
is not present. -/
@[to_additive
"Non-dependent version of `Pi.vadd`. Lean gets confused by the dependent instance
if this is not present."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7621b3ea3b02554a2966c4684e294d1377212410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
