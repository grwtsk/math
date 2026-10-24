# MulEquiv.piMultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff0d62b63dc76a8b2eedba1e5ac1b1f581ce0b861b8df29bc0f78b5146e7aba4",
  "kind": "def",
  "lexical_name": "MulEquiv.piMultiplicative",
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
  "slug": "mulequiv-pimultiplicative--5515ef253cec642fe22a853f",
  "source": {
    "blob": "1e78d7eb404c092175a9c620acf5e4d2f5fc10ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 138,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5515ef253cec642fe22a853fd63ccdc6ff69a3b9a48279a06eef7daa5f02888f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff0d62b63dc76a8b2eedba1e5ac1b1f581ce0b861b8df29bc0f78b5146e7aba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.piMultiplicative (K : ι → Type*) [∀ i, Add (K i)] :
    Multiplicative (∀ i : ι, K i) ≃* (∀ i : ι, Multiplicative (K i)) where
  toFun x := fun i ↦ Multiplicative.ofAdd <| x.toAdd i
  invFun x := Multiplicative.ofAdd fun i ↦ (x i).toAdd
  map_mul' _ _ := rfl

variable (ι) (G) in
/-- `Multiplicative (ι → G)` is equivalent to `ι → Multiplicative G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e78d7eb404c092175a9c620acf5e4d2f5fc10ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
