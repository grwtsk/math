# mulDistribMulAction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2ff150471749c8c8043a0e0deac5a3d57afbbf9084d0d7a77c75bb5f13ea8a9",
  "kind": "instance",
  "lexical_name": "mulDistribMulAction'",
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
  "slug": "muldistribmulaction--2467b92c09c9c410470830c5",
  "source": {
    "blob": "5889ab1e48ab292e4f3727c11156fcc382e08ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2467b92c09c9c410470830c5ba91233fcac992f36ffac709fe7ad299de973e28",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2ff150471749c8c8043a0e0deac5a3d57afbbf9084d0d7a77c75bb5f13ea8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulDistribMulAction' {g : I → Type*} {m : ∀ i, Monoid (f i)} {n : ∀ i, Monoid <| g i}
    [∀ i, MulDistribMulAction (f i) (g i)] :
    @MulDistribMulAction (∀ i, f i) (∀ i : I, g i) (@Pi.monoid I f m) (@Pi.monoid I g n) where
  smul_mul := by
    intros
    ext x
    apply smul_mul'
  smul_one := by
    intros
    ext x
    apply smul_one

end Pi
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5889ab1e48ab292e4f3727c11156fcc382e08ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
