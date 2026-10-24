# single.linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37cd21626e5848045765bc4726a5e449217f71c4a204efc456c651dacb243a99",
  "kind": "def",
  "lexical_name": "single.linearMap",
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
  "slug": "single-linearmap--52b5e0c9de717c3e523b1182",
  "source": {
    "blob": "e8381abf4fcd3de81e54a8537ff20e7cc2d0b325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 494,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52b5e0c9de717c3e523b1182174c3c1cf39e4431b9d849496c1f9c00107f41de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37cd21626e5848045765bc4726a5e449217f71c4a204efc456c651dacb243a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def single.linearMap (a : Γ) : V →ₗ[R] V⟦Γ⟧ :=
  { single.addMonoidHom a with
    map_smul' := fun r s => by
      ext b
      by_cases h : b = a <;> simp [h] }

/-- `coeff g` as a linear map -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8381abf4fcd3de81e54a8537ff20e7cc2d0b325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
