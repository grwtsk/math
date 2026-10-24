# invertibleEquivOfLeftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fec5685c827fef9e427ec1175e80d25648c50cb78a0aea0517f3e65f3054d7fd",
  "kind": "def",
  "lexical_name": "invertibleEquivOfLeftInverse",
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
  "slug": "invertibleequivofleftinverse--7b4fbc3c81dd127c8fa01ae7",
  "source": {
    "blob": "f2fc2be46372d1a347d9586fbd06124be4521ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b4fbc3c81dd127c8fa01ae7e4d8205e60943015efcf600c51108950f15ef428",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fec5685c827fef9e427ec1175e80d25648c50cb78a0aea0517f3e65f3054d7fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleEquivOfLeftInverse {R : Type*} {S : Type*} {F G : Type*} [Monoid R] [Monoid S]
    [FunLike F R S] [MonoidHomClass F R S] [FunLike G S R] [MonoidHomClass G S R]
    (f : F) (g : G) (r : R) (h : Function.LeftInverse g f) : Invertible (f r) ≃ Invertible r where
  toFun _ := Invertible.ofLeftInverse f _ _ h
  invFun _ := Invertible.map f _
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := Subsingleton.elim _ _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2fc2be46372d1a347d9586fbd06124be4521ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
